"""
patch_info_completo.py
Reconstrói o config_info PSB do zero a partir do JSON com os novos offsets,
usando o mesmo processo que funcionou para o scenario.
"""
import json, zlib, struct, subprocess, time
from pathlib import Path

BASE        = Path(__file__).parent
ORIG_PSB    = BASE / "config_info_original.psb.decompressed.psb"
ORIG_MDF    = BASE / "config_info_original.psb.m"
NEW_INDEX   = BASE / "config_info_final_offsets.json"
ORIG_INDEX  = BASE / "output_config" / "config_info.psb.m.json"
OUT_JSON    = BASE / "output_config" / "config_info_new.psb.m.json"
OUT_MDF     = BASE / "config_info_final.psb.m"
PSB_BUILD   = BASE / "PsBuild.exe"
EMT_CONVERT = BASE / "EmtConvert.exe"
KEY         = "523aad2de7132"
KEY_LEN     = 131

# 1. Atualiza o JSON do info com os novos offsets
new_index  = json.loads(NEW_INDEX.read_text(encoding="utf-8"))
orig_index = json.loads(ORIG_INDEX.read_text(encoding="utf-8"))

orig_index["file_info"] = new_index["file_info"]
OUT_JSON.write_text(json.dumps(orig_index, ensure_ascii=False, indent=2), encoding="utf-8")
print(f"JSON atualizado: {OUT_JSON.name}")
print(f"  text: {new_index['file_info']['text']}")
print(f"  oki01: {new_index['file_info']['oki01_subtitle']}")

# 2. PsBuild para compilar o novo info PSB
psb_out = BASE / "config_info_new.psb.m.psb"
if psb_out.exists():
    psb_out.unlink()

result = subprocess.run(
    [str(PSB_BUILD), str(OUT_JSON)],
    capture_output=True, text=True, cwd=BASE
)
time.sleep(0.3)

if not psb_out.exists():
    # Tenta nome alternativo
    alt = BASE / "config_info_new.psb"
    if alt.exists():
        psb_out = alt
    else:
        print(f"ERRO: PSB não gerado")
        print(result.stdout)
        raise SystemExit(1)

psb_data = psb_out.read_bytes()
print(f"\nPSB compilado: {psb_out.name} ({len(psb_data)} bytes)")

# 3. Monta fake MDF: header + zlib (level 6)
compressed = zlib.compress(psb_data, level=6)
header     = b"mdf\x00" + struct.pack("<I", len(psb_data))
fake_mdf   = header + compressed
fake_path  = BASE / "config_info_new.fake.mdf"
fake_path.write_bytes(fake_mdf)
print(f"Fake MDF: {fake_path.name} ({len(fake_mdf)} bytes)")

# 4. EmtConvert -r para encriptar
seed      = KEY + "config_info.psb.m"
converted = BASE / "config_info_new.fake.converted.mdf"
if converted.exists():
    converted.unlink()

subprocess.run(
    [str(EMT_CONVERT), "mdf", "-r", "-s", seed, "-l", str(KEY_LEN), str(fake_path)],
    capture_output=True, text=True, cwd=BASE
)
time.sleep(0.3)

if not converted.exists():
    # Tenta achar pelo mais recente
    recentes = sorted(BASE.glob("*.converted.mdf"), key=lambda p: p.stat().st_mtime, reverse=True)
    if recentes and (time.time() - recentes[0].stat().st_mtime) < 5:
        converted = recentes[0]

if converted.exists():
    import shutil
    shutil.copy2(converted, OUT_MDF)
    fake_path.unlink(missing_ok=True)
    converted.unlink(missing_ok=True)
    psb_out.unlink(missing_ok=True)
    print(f"\nInfo encriptado: {OUT_MDF.name} ({OUT_MDF.stat().st_size} bytes)")
    print(f"Original tinha:  {len(ORIG_MDF.read_bytes())} bytes")
    print("\nAgora testa:")
    print('copy config_body_final.bin "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_body.bin"')
    print('copy config_info_final.psb.m "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_info.psb.m"')
else:
    print("ERRO: arquivo encriptado não gerado!")
