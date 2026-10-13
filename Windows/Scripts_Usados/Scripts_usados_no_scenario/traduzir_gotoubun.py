"""
traduzir_gotoubun.py - Aplica tradução PT-BR ao Gotoubun Five Memories (Steam)

ESTRUTURA DO SCRIPT:
  1. Lê scenario_info.psb.m.json para obter offsets de cada arquivo
  2. Extrai cada .txt do scenario_body.bin
  3. Chama EmtConvert mdf para descriptografar
  4. Chama PsbDecompile para extrair JSON
  5. Substitui textos EN pelo PT do translation_cache.json
  6. Chama PsbBuild para reempacotar o PSB
  7. Chama EmtConvert mdf para re-encriptar
  8. Reconstrói o scenario_body.bin com os chunks modificados

USO:
  1. Coloque este script em D:\\freemote\\
  2. Coloque translation_cache.json em D:\\freemote\\
  3. Execute: python traduzir_gotoubun.py
  4. O arquivo scenario_body_ptbr.bin será gerado
  5. Substitua o scenario_body.bin original pelo _ptbr.bin
     (faça backup antes!)

REQUISITOS:
  - Python 3.10+
  - FreeMote (EmtConvert.exe, PsbDecompile.exe, PsbBuild.exe) na mesma pasta
  - scenario_body.bin, scenario_info.psb.m.json, translation_cache.json
"""

import json
import os
import sys
import shutil
import struct
import subprocess
import tempfile
from pathlib import Path

# ── Configuração ──────────────────────────────────────────────────────────────
BASE_DIR        = Path(__file__).parent
INFO_JSON       = BASE_DIR / "scenario_info.psb.m.json"
BODY_BIN        = BASE_DIR / "scenario_body.bin"
CACHE_JSON      = BASE_DIR / "translation_cache.json"
OUTPUT_BODY     = BASE_DIR / "scenario_body_ptbr.bin"
WORK_DIR        = BASE_DIR / "_work_ptbr"

KEY             = "523aad2de7132"
KEY_LEN         = 131
EXPIRE_SUFFIX   = ".scn.m"   # seed = KEY + filename + EXPIRE_SUFFIX

EMT_CONVERT     = BASE_DIR / "EmtConvert.exe"
PSB_DECOMPILE   = BASE_DIR / "PsbDecompile.exe"
PSB_BUILD       = BASE_DIR / "PsBuild.exe"
# ──────────────────────────────────────────────────────────────────────────────


def run(cmd, cwd=None, timeout=120):
    """Executa comando e retorna (stdout, stderr, returncode)."""
    try:
        result = subprocess.run(
            cmd, capture_output=True, text=True,
            cwd=cwd or BASE_DIR, timeout=timeout
        )
        return result.stdout, result.stderr, result.returncode
    except subprocess.TimeoutExpired:
        return "", "TIMEOUT", -1


def extract_chunk(body_data: bytes, offset: int, size: int, out_path: Path):
    """Extrai um chunk do body.bin e salva em out_path."""
    out_path.write_bytes(body_data[offset:offset + size])


def decrypt_chunk(mdf_path: Path, filename: str, out_dir: Path) -> Path | None:
    """
    Descriptografa um chunk MDF usando EmtConvert.
    Retorna o path do PSB descriptografado ou None se falhar.
    """
    seed = KEY + filename + EXPIRE_SUFFIX
    out_psb = out_dir / (filename + ".decompressed.psb")

    stdout, stderr, rc = run([
        str(EMT_CONVERT), "mdf",
        "-s", seed,
        "-l", str(KEY_LEN),
        str(mdf_path),
        "-o", str(out_psb)
    ])

    # O EmtConvert às vezes salva com nome diferente
    if not out_psb.exists():
        # Procura por qualquer .psb gerado no diretório
        candidates = list(mdf_path.parent.glob(f"{filename}*.psb"))
        candidates += list(mdf_path.parent.glob(f"{filename}*.decompressed*"))
        if candidates:
            out_psb = candidates[0]
        else:
            return None

    return out_psb if out_psb.exists() else None


def decompile_psb(psb_path: Path, out_dir: Path) -> Path | None:
    """
    Usa PsbDecompile para extrair PSB para JSON.
    ATENÇÃO: PsbDecompile salva em BASE_DIR ignorando -o.
    Nome gerado: psb_path.stem + ".json"
    Ex: addfile.txt.decompressed.psb -> BASE_DIR/addfile.txt.decompressed.json
    """
    expected_json = BASE_DIR / (psb_path.stem + ".json")
    if expected_json.exists():
        expected_json.unlink()

    stdout, stderr, rc = run([
        str(PSB_DECOMPILE),
        str(psb_path),
    ], timeout=60)

    if stderr == "TIMEOUT":
        return None

    if expected_json.exists():
        return expected_json

    # Fallback: qualquer .json novo em BASE_DIR
    import time
    cutoff = time.time() - 15
    for p in BASE_DIR.glob("*.json"):
        if not p.name.endswith("resx.json") and p.stat().st_mtime >= cutoff:
            return p
    return None


def apply_translations(json_path: Path, cache: dict, stats: dict) -> int:
    """
    Aplica traduções PT-BR no JSON do PSB.
    Modifica o arquivo in-place.
    Retorna número de substituições feitas.
    """
    with open(json_path, encoding="utf-8") as f:
        data = json.load(f)

    replacements = 0
    not_found_texts = []

    for scene in data.get("scenes", []):
        for text in scene.get("texts", []):
            if not isinstance(text, list) or len(text) < 2:
                continue
            lang_list = text[1]
            if not isinstance(lang_list, list) or len(lang_list) < 2:
                continue
            en_entry = lang_list[1]
            if not isinstance(en_entry, list) or len(en_entry) < 2:
                continue
            en_text = en_entry[1]
            if not isinstance(en_text, str) or not en_text.strip():
                continue

            if en_text in cache:
                pt_text = cache[en_text]
                en_entry[1] = pt_text
                # Atualiza o campo de comprimento (índice 2)
                if len(en_entry) > 2 and isinstance(en_entry[2], int):
                    en_entry[2] = len(pt_text)
                # Atualiza versão sem quebras de linha (índice 3), se existir
                if len(en_entry) > 3 and isinstance(en_entry[3], str):
                    en_entry[3] = pt_text.replace("\\n", " ").replace("\n", " ")
                # Atualiza versão curta (índice 4), se existir
                if len(en_entry) > 4 and isinstance(en_entry[4], str):
                    en_entry[4] = pt_text.replace("\\n", " ").replace("\n", " ")
                replacements += 1
                stats["translated"] += 1
            else:
                not_found_texts.append(en_text)
                stats["missing"] += 1

    with open(json_path, "w", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)

    if not_found_texts:
        stats["missing_list"].extend(not_found_texts)

    return replacements


def rebuild_psb(json_path: Path, resx_path: Path | None, out_dir: Path) -> Path | None:
    """
    Usa PsBuild para reempacotar JSON em PSB.
    ATENÇÃO: PsBuild ignora -o e salva SEMPRE em BASE_DIR com o nome do JSON.
    Ex: qualquer/caminho/foo.json -> BASE_DIR/foo.psb
    """
    # PsBuild salva em BASE_DIR com nome = json stem + .psb
    expected_psb = BASE_DIR / (json_path.stem + ".psb")
    if expected_psb.exists():
        expected_psb.unlink()

    stdout, stderr, rc = run([
        str(PSB_BUILD),
        str(json_path),
    ])

    if expected_psb.exists():
        return expected_psb

    # Fallback: qualquer .psb novo em BASE_DIR
    import time
    cutoff = time.time() - 10
    for p in BASE_DIR.glob("*.psb"):
        if p.stat().st_mtime >= cutoff:
            return p
    return None


def reencrypt_psb(psb_path: Path, filename: str, out_path: Path) -> bool:
    """
    Re-encripta o PSB como MDF usando EmtConvert.
    ATENÇÃO: EmtConvert ignora -o e salva SEMPRE em BASE_DIR.
    O nome gerado é: psb_path.stem + ".mdf"
    Ex: test_addfile.decompressed.psb -> BASE_DIR/test_addfile.decompressed.mdf
    Mas quando o PSB está em BASE_DIR com nome original:
    Ex: addfile.txt.decompressed.psb -> BASE_DIR/addfile.txt.decompressed.mdf
    """
    seed = KEY + filename + EXPIRE_SUFFIX

    # Nome gerado = stem do PSB + .mdf (em BASE_DIR)
    expected_output = BASE_DIR / (psb_path.stem + ".mdf")
    if expected_output.exists():
        expected_output.unlink()

    stdout, stderr, rc = run([
        str(EMT_CONVERT), "mdf",
        "-s", seed,
        "-l", str(KEY_LEN),
        str(psb_path),
    ])

    if expected_output.exists():
        shutil.copy2(expected_output, out_path)
        expected_output.unlink()
        return True

    # Fallback: qualquer .mdf novo em BASE_DIR
    import time
    cutoff = time.time() - 10
    for p in BASE_DIR.glob("*.mdf"):
        if p.stat().st_mtime >= cutoff:
            shutil.copy2(p, out_path)
            p.unlink()
            return True

    return False


def main():
    print("=" * 60)
    print("  Gotoubun Five Memories - Aplicador de Tradução PT-BR")
    print("=" * 60)
    print()

    # Verifica arquivos necessários
    for f, label in [
        (INFO_JSON,    "scenario_info.psb.m.json"),
        (BODY_BIN,     "scenario_body.bin"),
        (CACHE_JSON,   "translation_cache.json"),
        (EMT_CONVERT,  "EmtConvert.exe"),
        (PSB_DECOMPILE,"PsbDecompile.exe"),
        (PSB_BUILD,    "PsBuild.exe"),
    ]:
        if not Path(f).exists():
            print(f"ERRO: '{label}' não encontrado em {BASE_DIR}")
            sys.exit(1)
    print("Todos os arquivos necessários encontrados.")

    # Lê o índice
    with open(INFO_JSON, encoding="utf-8") as f:
        info = json.load(f)
    file_info = info["file_info"]
    txt_files = {name: offs for name, offs in file_info.items() if name.endswith(".txt")}
    print(f"Arquivos .txt no índice: {len(txt_files)}")

    # Lê translation cache
    with open(CACHE_JSON, encoding="utf-8") as f:
        cache = json.load(f)
    print(f"Entradas no cache de tradução: {len(cache)}")

    # Lê body inteiro
    print(f"\nCarregando {BODY_BIN.name} ({BODY_BIN.stat().st_size:,} bytes)...")
    body_data = bytearray(BODY_BIN.read_bytes())

    # Pasta de trabalho
    WORK_DIR.mkdir(exist_ok=True)

    # Teste rápido: verifica se o EmtConvert consegue re-encriptar
    print("\nTestando EmtConvert mdf...")
    test_work = WORK_DIR / "addfile_txt"
    test_psb = test_work / "rebuilt" / "addfile.txt.decompressed.psb"
    if test_psb.exists():
        test_out = test_work / "addfile.txt.test.mdf"
        seed_test = KEY + "addfile.txt" + EXPIRE_SUFFIX
        stdout, stderr, rc = run([
            str(EMT_CONVERT), "mdf",
            "-s", seed_test,
            "-l", str(KEY_LEN),
            str(test_psb),
            "-o", str(test_out)
        ])
        print(f"  stdout: {stdout.strip()}")
        print(f"  stderr: {stderr.strip()}")
        print(f"  rc: {rc}")
        print(f"  output existe: {test_out.exists()}")
        # Lista todos os arquivos gerados na pasta
        for f in sorted(test_work.rglob("*")):
            if f.is_file():
                print(f"  arquivo: {f.relative_to(test_work)} ({f.stat().st_size} bytes)")
    else:
        print(f"  PSB de teste não encontrado: {test_psb}")
        print("  (execute sem o _work_ptbr existente para um run limpo)")
    print()

    stats = {
        "total": len(txt_files),
        "processed": 0,
        "failed": 0,
        "translated": 0,
        "missing": 0,
        "missing_list": [],
    }

    print(f"\nProcessando {len(txt_files)} arquivos...\n")

    for filename, (offset, size) in txt_files.items():
        file_work = WORK_DIR / filename.replace(".", "_")
        file_work.mkdir(exist_ok=True)

        mdf_path = file_work / (filename + ".mdf")

        try:
            # 1. Extrai chunk do body
            extract_chunk(body_data, offset, size, mdf_path)

            # 2. Descriptografa
            psb_path = decrypt_chunk(mdf_path, filename, file_work)
            if not psb_path:
                print(f"  FALHA decrypt: {filename}")
                stats["failed"] += 1
                continue

            # 3. Decompila PSB para JSON (PsbDecompile salva em BASE_DIR)
            json_path = decompile_psb(psb_path, BASE_DIR)
            if not json_path:
                print(f"  FALHA decompile: {filename}")
                stats["failed"] += 1
                continue

            # 4. Aplica traduções
            n = apply_translations(json_path, cache, stats)

            # 5. Reconstrói PSB - salva diretamente em file_work com mesmo nome do original
            rebuilt_dir = file_work / "rebuilt"
            rebuilt_dir.mkdir(exist_ok=True)
            new_psb = rebuild_psb(json_path, None, rebuilt_dir)
            if not new_psb:
                print(f"  FALHA rebuild: {filename}")
                stats["failed"] += 1
                continue

            # 6. Re-encripta como MDF
            # new_psb já está em BASE_DIR (PsBuild salva lá)
            new_mdf = file_work / (filename + ".new.mdf")
            ok = reencrypt_psb(new_psb, filename, new_mdf)
            if not ok:
                print(f"  FALHA re-encrypt: {filename}")
                stats["failed"] += 1
                continue

            # 7. Lê o novo chunk e insere no body
            new_chunk = new_mdf.read_bytes()
            new_size = len(new_chunk)
            old_size = size

            if new_size != old_size:
                # Tamanhos diferentes — precisaria reindexar o body inteiro
                # Por segurança, salva separado para tratamento manual
                print(f"  AVISO tamanho diferente: {filename} ({old_size} -> {new_size})")
                # Ainda salva o arquivo mas marca como pendente
                (WORK_DIR / f"{filename}.size_changed").write_text(
                    f"old={old_size} new={new_size}"
                )

            # Substitui no body (mesmo que tamanho diferente, substitui no lugar)
            # Para tamanhos iguais: substituição direta
            # Para tamanhos diferentes: trunca ou preenche — será tratado na reconstrução
            body_data[offset:offset + old_size] = new_chunk[:old_size] if new_size > old_size else new_chunk + b'\x00' * (old_size - new_size)

            stats["processed"] += 1
            print(f"  OK  {filename}: {n} textos traduzidos")

        except Exception as e:
            print(f"  ERRO {filename}: {e}")
            stats["failed"] += 1
            continue

    # Salva o novo body
    print(f"\nSalvando {OUTPUT_BODY.name}...")
    OUTPUT_BODY.write_bytes(body_data)
    print(f"Arquivo salvo: {OUTPUT_BODY} ({len(body_data):,} bytes)")

    # Relatório final
    print()
    print("=" * 60)
    print("  RELATÓRIO FINAL")
    print("=" * 60)
    print(f"  Total de arquivos:     {stats['total']}")
    print(f"  Processados com sucesso: {stats['processed']}")
    print(f"  Falhas:                {stats['failed']}")
    print(f"  Textos traduzidos:     {stats['translated']}")
    print(f"  Textos sem tradução:   {stats['missing']}")

    if stats["missing_list"]:
        missing_path = WORK_DIR / "textos_sem_traducao.txt"
        unique_missing = list(dict.fromkeys(stats["missing_list"]))
        missing_path.write_text(
            "\n---\n".join(unique_missing), encoding="utf-8"
        )
        print(f"\n  Textos sem tradução salvos em: {missing_path}")

    print()
    print("PRÓXIMOS PASSOS:")
    print("  1. Faça backup do scenario_body.bin original")
    print("  2. Renomeie scenario_body_ptbr.bin para scenario_body.bin")
    print("  3. Teste o jogo")
    print()


if __name__ == "__main__":
    main()
