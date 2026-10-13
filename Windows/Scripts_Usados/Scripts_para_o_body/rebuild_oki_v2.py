"""
rebuild_oki_v2.py
O PsBuild já gera os .psb.m encriptados na raiz D:\freemote\.
Só precisa coletar esses arquivos e reconstruir o body.
"""
import json, zlib, struct, subprocess, shutil, time
from pathlib import Path

BASE        = Path(__file__).parent
BODY_ORIG   = BASE / "config_body_original.bin"
INFO_JSON   = BASE / "output_config" / "config_info.psb.m.json"
PSB_BUILD   = BASE / "PsBuild.exe"
CONFIG      = BASE / "output_config" / "config"

ARQUIVOS_TRADUZIDOS = [f"oki{n:02d}_subtitle" for n in range(1, 15)] + ["text"]

body_orig = BODY_ORIG.read_bytes()
index     = json.loads(INFO_JSON.read_text(encoding="utf-8"))

print(f"Body original: {len(body_orig)} bytes")
print()

compilados = {}

for nome in ARQUIVOS_TRADUZIDOS:
    if nome == "text":
        psb_m = BASE / "text_ptbr.psb.m"
        if psb_m.exists():
            compilados[nome] = psb_m.read_bytes()
            print(f"  [JÁ PRONTO] text: {len(compilados[nome])} bytes")
        else:
            print(f"  ERRO: text_ptbr.psb.m não encontrado!")
        continue

    json_path = CONFIG / f"{nome}.psb.m.json"
    if not json_path.exists():
        print(f"  FALTANDO JSON: {json_path.name}")
        continue

    # Remove arquivo anterior se existir
    psb_m_out = BASE / f"{nome}.psb.m"
    if psb_m_out.exists():
        psb_m_out.unlink()

    # PsBuild compila e encripta direto
    result = subprocess.run(
        [str(PSB_BUILD), str(json_path)],
        capture_output=True, text=True, cwd=BASE
    )
    time.sleep(0.3)

    if psb_m_out.exists():
        compilados[nome] = psb_m_out.read_bytes()
        print(f"  OK {nome}: {len(compilados[nome])} bytes")
    else:
        print(f"  ERRO: {nome}.psb.m não gerado")
        print(f"    {result.stdout.strip()}")

print(f"\nCompilados: {len(compilados)}/{len(ARQUIVOS_TRADUZIDOS)}")

if len(compilados) < len(ARQUIVOS_TRADUZIDOS):
    print("AVISO: nem todos os arquivos foram compilados!")
    faltando = [n for n in ARQUIVOS_TRADUZIDOS if n not in compilados]
    print(f"Faltando: {faltando}")

# Reconstrói o body
print("\nReconstruindo body...")
new_body      = bytearray()
new_file_info = {}

for nome, (offset, size) in index["file_info"].items():
    if nome in compilados:
        chunk = compilados[nome]
        print(f"  [TRAD] {nome}: {size} → {len(chunk)} bytes")
    else:
        chunk = body_orig[offset:offset+size]

    new_file_info[nome] = [len(new_body), len(chunk)]
    new_body.extend(chunk)

out_body = BASE / "config_body_final.bin"
out_body.write_bytes(new_body)
print(f"\nBody final: {len(new_body)} bytes → {out_body.name}")

out_index = dict(index)
out_index["file_info"] = new_file_info
(BASE / "config_info_final_offsets.json").write_text(
    json.dumps(out_index, ensure_ascii=False, indent=2), encoding="utf-8"
)
print(f"Índice salvo: config_info_final_offsets.json")
print(f"  text: {new_file_info.get('text')}")

print("\nPróximo passo: python patch_info_final.py")
