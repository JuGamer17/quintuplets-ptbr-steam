"""
config_aplicar_pt.py - v2
Para config, o PsBuild gera .psb.m diretamente (já encriptado MDF).
Fluxo: JSON traduzido -> PsBuild -> .psb.m -> move para _config_encrypted
"""
import json, subprocess, shutil, time
from pathlib import Path

BASE      = Path(__file__).parent
JSON_DIR  = BASE / "output_config" / "config"
CSV_FILE  = BASE / "config_traducao.csv"
INFO_JSON = BASE / "output_config" / "config_info.psb.m.json"
BODY_ORIG = BASE / "config_body.bin"
PSB_BUILD = BASE / "PsBuild.exe"
EMT       = BASE / "EmtConvert.exe"
KEY       = "523aad2de7132"
KEY_LEN   = 131

ENCRYPTED = BASE / "_config_encrypted"
ENCRYPTED.mkdir(exist_ok=True)

# 1. Lê o CSV e aplica traduções nos JSONs
print("Lendo e aplicando traduções...")
traducoes = {}
linhas = CSV_FILE.read_text(encoding="utf-8-sig").splitlines()
for linha in linhas[1:]:
    partes = linha.split("|")
    if len(partes) < 5:
        continue
    arq, chave, idx, en, pt = partes[0], partes[1], partes[2], partes[3], partes[4]
    if pt.strip():
        traducoes[(arq, chave, int(idx))] = pt.replace("¦", "|").replace("\\\\n", "\\n")

print(f"  {len(traducoes)} traduções carregadas")

arquivos_mod = set()
for (arq, chave, idx), pt in traducoes.items():
    path = JSON_DIR / arq
    if not path.exists():
        continue
    data = json.loads(path.read_text(encoding="utf-8"))
    if isinstance(data, dict) and chave in data:
        if isinstance(data[chave], list) and idx < len(data[chave]):
            data[chave][idx] = pt
            path.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")
            arquivos_mod.add(arq)

print(f"  {len(arquivos_mod)} JSONs modificados: {', '.join(arquivos_mod)}")

# 2. Recompila cada arquivo com PsBuild
print("\nRecompilando arquivos...")
info = json.loads((BASE / "output_config" / "config_info.psb.m.json").read_text(encoding="utf-8"))
file_info = info["file_info"]

ok = skip = 0
for name in file_info:
    if name == "license.txt.m":
        # Copia original direto
        offset, size = file_info[name]
        chunk = BODY_ORIG.read_bytes()[offset:offset+size]
        (ENCRYPTED / (name + ".bin")).write_bytes(chunk)
        skip += 1
        continue

    json_path = JSON_DIR / (name + ".psb.m.json")
    if not json_path.exists():
        print(f"  PULANDO (JSON não encontrado): {name}")
        skip += 1
        continue

    # Remove output anterior
    out_psb_m = BASE / (name + ".psb.m")
    if out_psb_m.exists():
        out_psb_m.unlink()

    subprocess.run([str(PSB_BUILD), str(json_path)], capture_output=True, cwd=BASE)
    time.sleep(0.05)

    if out_psb_m.exists():
        shutil.copy2(out_psb_m, ENCRYPTED / (name + ".psb.m"))
        out_psb_m.unlink()
        ok += 1
        print(f"  OK  {name} ({(ENCRYPTED / (name + '.psb.m')).stat().st_size:,} bytes)")
    else:
        print(f"  FALHA: {name}")
        skip += 1

print(f"\nOK: {ok} | Pulados/Falha: {skip}")

# 3. Reconstrói o config_body.bin
print("\nReconstruindo config_body_ptbr.bin...")
body_orig = BODY_ORIG.read_bytes()
new_body  = bytearray()
new_index = {}

for name, (offset, size) in file_info.items():
    if name == "license.txt.m":
        bin_file = ENCRYPTED / (name + ".bin")
        chunk = bin_file.read_bytes() if bin_file.exists() else body_orig[offset:offset+size]
    else:
        enc_file = ENCRYPTED / (name + ".psb.m")
        chunk = enc_file.read_bytes() if enc_file.exists() else body_orig[offset:offset+size]

    new_index[name] = [len(new_body), len(chunk)]
    new_body.extend(chunk)

(BASE / "config_body_ptbr.bin").write_bytes(new_body)
print(f"  Salvo: config_body_ptbr.bin ({len(new_body):,} bytes)")

# 4. Atualiza config_info e reempacota
print("\nReempacotando config_info_ptbr.psb.m...")
info["file_info"] = new_index
info_ptbr_json = BASE / "config_info_ptbr.psb.m.json"
# Copia o resx original
resx_orig = BASE / "output_config" / "config_info.psb.m.resx.json"
if resx_orig.exists():
    shutil.copy2(resx_orig, BASE / "config_info_ptbr.psb.m.resx.json")

info_ptbr_json.write_text(json.dumps(info, ensure_ascii=False, indent=2), encoding="utf-8")

out_info = BASE / "config_info_ptbr.psb.m"
if out_info.exists(): out_info.unlink()

subprocess.run([str(PSB_BUILD), str(info_ptbr_json)], capture_output=True, cwd=BASE)
time.sleep(0.3)

if out_info.exists():
    print(f"  config_info_ptbr.psb.m gerado! ({out_info.stat().st_size:,} bytes)")
else:
    print("  FALHA ao gerar config_info_ptbr.psb.m")

print()
print("PRÓXIMOS PASSOS:")
print('  copy config_body_ptbr.bin "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_body.bin"')
print('  copy config_info_ptbr.psb.m "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_info.psb.m"')
