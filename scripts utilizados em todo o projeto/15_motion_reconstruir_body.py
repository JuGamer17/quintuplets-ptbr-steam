r"""
reconstruir_motion_body.py
=================================================================
Reconstroi o motion_body.bin substituindo o arquivo 'gamemode'
(menu de titulo/config) pela versao traduzida em PT-BR, mantendo
todos os outros 35 arquivos do motion intactos (copiados direto
do motion_body.bin original).

ENTRADA ESPERADA (em D:\freemote\):
  motion_body.bin                       -> body original (precisa existir aqui)
  output_motion\motion_info.psb.m.json  -> indice original (offset+size por arquivo)
  gamemode_mdf.psb.converted.mdf        -> gamemode ja recompilado e criptografado

SAIDA:
  motion_body_ptbr.bin                  -> novo body com offsets atualizados
  motion_info_ptbr.psb.m.json           -> novo indice (para reempacotar depois)

USO:
  python reconstruir_motion_body.py

Apos rodar, o proximo passo (igual ao finalizar_patch.bat) e:
  1. PsBuild motion_info_ptbr.psb.m.json
  2. EmtConvert pack -s MDF <arquivo gerado pelo PsBuild>
  3. EmtConvert mdf -r -s 523aad2de7132motion_info.psb.m -l 131 <arquivo do passo 2>
  4. Renomear o resultado para motion_info_ptbr.psb.m
=================================================================
"""

import json
from pathlib import Path

BASE = Path(__file__).parent

BODY_ORIGINAL_PATH = BASE / "motion_body.bin"
INDEX_ORIGINAL_PATH = BASE / "output_motion" / "motion_info.psb.m.json"
GAMEMODE_NOVO_PATH = BASE / "gamemode_mdf11.psb.converted.mdf"

BODY_SAIDA_PATH = BASE / "motion_body_ptbr.bin"
INDEX_SAIDA_PATH = BASE / "motion_info_ptbr.psb.m.json"

NOME_ARQUIVO_ALTERADO = "gamemode"


def main():
    erros = []
    if not BODY_ORIGINAL_PATH.exists():
        erros.append(
            f"Nao encontrado: {BODY_ORIGINAL_PATH}\n"
            f"    Copie primeiro de:\n"
            f'    E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\motion_body.bin\n'
            f"    para D:\\freemote\\motion_body.bin"
        )
    if not INDEX_ORIGINAL_PATH.exists():
        erros.append(f"Nao encontrado: {INDEX_ORIGINAL_PATH}")
    if not GAMEMODE_NOVO_PATH.exists():
        erros.append(f"Nao encontrado: {GAMEMODE_NOVO_PATH}")

    if erros:
        print("ERROS:")
        for e in erros:
            print(f"  - {e}")
        raise SystemExit(1)

    print("Carregando indice original...")
    info_original = json.loads(INDEX_ORIGINAL_PATH.read_text(encoding="utf-8"))
    file_info = info_original["file_info"]
    print(f"  Total de arquivos no indice: {len(file_info)}")

    if NOME_ARQUIVO_ALTERADO not in file_info:
        print(f"ERRO: '{NOME_ARQUIVO_ALTERADO}' nao existe no indice original!")
        raise SystemExit(1)

    print(f"\nCarregando motion_body.bin original ({BODY_ORIGINAL_PATH.stat().st_size:,} bytes)...")
    body_original = BODY_ORIGINAL_PATH.read_bytes()

    print(f"Carregando gamemode traduzido ({GAMEMODE_NOVO_PATH.stat().st_size:,} bytes)...")
    gamemode_novo_bytes = GAMEMODE_NOVO_PATH.read_bytes()

    offset_antigo, size_antigo = file_info[NOME_ARQUIVO_ALTERADO]
    print(f"\n  gamemode original: offset={offset_antigo}, size={size_antigo:,} bytes")
    print(f"  gamemode novo:      size={len(gamemode_novo_bytes):,} bytes "
          f"({'+' if len(gamemode_novo_bytes) >= size_antigo else ''}"
          f"{len(gamemode_novo_bytes) - size_antigo:,} bytes de diferenca)")

    print("\nReconstruindo body com offsets recalculados...")
    novo_body = bytearray()
    novo_index = {}

    # Mantem a MESMA ORDEM de iteracao do indice original (importante:
    # dicts em Python 3.7+ preservam ordem de insercao, e o JSON original
    # foi lido na ordem em que estava no arquivo)
    for nome, (offset, size) in file_info.items():
        if nome == NOME_ARQUIVO_ALTERADO:
            chunk = gamemode_novo_bytes
        else:
            chunk = body_original[offset: offset + size]

        novo_index[nome] = [len(novo_body), len(chunk)]
        novo_body.extend(chunk)

    novo_body = bytes(novo_body)

    print(f"\nSalvando {BODY_SAIDA_PATH.name} ({len(novo_body):,} bytes)...")
    BODY_SAIDA_PATH.write_bytes(novo_body)

    novo_info = dict(info_original)
    novo_info["file_info"] = novo_index
    print(f"Salvando {INDEX_SAIDA_PATH.name}...")
    INDEX_SAIDA_PATH.write_text(
        json.dumps(novo_info, ensure_ascii=False, indent=2), encoding="utf-8"
    )

    print("\n" + "=" * 70)
    print("CONCLUIDO")
    print("=" * 70)
    print(f"  Tamanho original do motion_body.bin: {len(body_original):,} bytes")
    print(f"  Tamanho novo do motion_body_ptbr.bin: {len(novo_body):,} bytes")
    print(f"  Diferenca: {len(novo_body) - len(body_original):,} bytes")
    print()
    print("PROXIMOS PASSOS (rodar no terminal em D:\\freemote\\):")
    print()
    print("# 1. Reempacota o motion_info com os novos offsets:")
    print("PsBuild motion_info_ptbr.psb.m.json")
    print()
    print("# 2. Comprime o info gerado (ajuste o nome conforme a saida do PsBuild):")
    print("EmtConvert pack -s MDF -o motion_info_ptbr_mdf.psb.m <ARQUIVO_GERADO_PELO_PSBUILD>")
    print()
    print("# 3. Encripta:")
    print("EmtConvert mdf -r -s 523aad2de7132motion_info.psb.m -l 131 motion_info_ptbr_mdf.psb.m")
    print()
    print("# 4. Renomeia o resultado (.converted.mdf) para motion_info_ptbr.psb.m")
    print()
    print("# 5. Copia os dois arquivos finais para 'para ir para o jogo\\':")
    print('copy motion_body_ptbr.bin "para ir para o jogo\\motion_body.bin"')
    print('copy motion_info_ptbr.psb.m "para ir para o jogo\\motion_info.psb.m"')
    print()
    print("# 6. Backup e copia pro jogo (faca backup antes!):")
    print('copy "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\motion_body.bin" '
          '"E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\motion_body.bin.bak"')
    print('copy "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\motion_info.psb.m" '
          '"E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\motion_info.psb.m.bak"')
    print('copy "para ir para o jogo\\motion_body.bin" '
          '"E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\motion_body.bin"')
    print('copy "para ir para o jogo\\motion_info.psb.m" '
          '"E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\motion_info.psb.m"')


if __name__ == "__main__":
    main()
