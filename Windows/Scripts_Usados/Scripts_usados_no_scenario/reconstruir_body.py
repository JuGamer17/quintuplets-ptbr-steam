"""
reconstruir_body.py - Versão 2
Reconstrói o scenario_body.bin com novos offsets e atualiza o scenario_info.psb.m.json
"""
import json, zlib, struct, subprocess, shutil
from pathlib import Path

BASE        = Path(__file__).parent
INFO_JSON   = BASE / "scenario_info.psb.m.json"
BODY_ORIG   = BASE / "scenario_body.bin"
ENCRYPTED   = BASE / "_encrypted"
OUTPUT_BODY = BASE / "scenario_body_ptbr.bin"
OUTPUT_INFO = BASE / "scenario_info_ptbr.psb.m.json"
EMT_CONVERT = BASE / "EmtConvert.exe"
PSB_BUILD   = BASE / "PsBuild.exe"

KEY     = "523aad2de7132"
KEY_LEN = 131

info = json.loads(INFO_JSON.read_text(encoding="utf-8"))
file_info = info["file_info"]

print("Reconstruindo scenario_body.bin com novos offsets...")

new_body  = bytearray()
new_index = {}

ok = miss = 0

for name, (orig_offset, orig_size) in file_info.items():
    if name.endswith(".txt"):
        mdf = ENCRYPTED / (name + ".mdf")
        if mdf.exists():
            chunk = mdf.read_bytes()
            new_index[name] = [len(new_body), len(chunk)]
            new_body.extend(chunk)
            ok += 1
        else:
            # Usa chunk original
            orig_body = BODY_ORIG.read_bytes()
            chunk = orig_body[orig_offset:orig_offset+orig_size]
            new_index[name] = [len(new_body), len(chunk)]
            new_body.extend(chunk)
            miss += 1
            print(f"  ORIGINAL (sem tradução): {name}")
    else:
        # Arquivos não-.txt: copia do body original
        orig_body = BODY_ORIG.read_bytes()
        chunk = orig_body[orig_offset:orig_offset+orig_size]
        new_index[name] = [len(new_body), len(chunk)]
        new_body.extend(chunk)

# Salva novo body
OUTPUT_BODY.write_bytes(new_body)
print(f"Body salvo: {OUTPUT_BODY} ({len(new_body):,} bytes)")

# Atualiza o JSON do info com novos offsets
info["file_info"] = new_index
OUTPUT_INFO.write_text(json.dumps(info, ensure_ascii=False, indent=2), encoding="utf-8")
print(f"Info JSON atualizado: {OUTPUT_INFO}")

print(f"\nOK: {ok} | Sem tradução (original): {miss}")
print()
print("PRÓXIMOS PASSOS:")
print("  1. Execute: python 6_reempacotar_info.py")
print("  2. Substitua scenario_body.bin e scenario_info.psb.m")
