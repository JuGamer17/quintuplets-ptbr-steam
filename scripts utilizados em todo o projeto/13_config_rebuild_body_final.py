"""
rebuild_body_final.py
Reconstrói o config_body usando chunks originais + text_ptbr.psb.m (manual).
"""
import json
from pathlib import Path

BASE       = Path(__file__).parent
INFO_JSON  = BASE / "output_config" / "config_info.psb.m.json"
BODY_ORIG  = BASE / "config_body_original.bin"
TEXT_PTBR  = BASE / "text_ptbr.psb.m"
OUT_BODY   = BASE / "config_body_final.bin"
OUT_JSON   = BASE / "config_info_final_offsets.json"

index     = json.loads(INFO_JSON.read_text(encoding="utf-8"))
body_orig = BODY_ORIG.read_bytes()
text_ptbr = TEXT_PTBR.read_bytes()

print(f"text_ptbr.psb.m: {len(text_ptbr)} bytes")
print(f"text original:   11815 bytes")

new_body     = bytearray()
new_file_info = {}

for name, (offset, size) in index["file_info"].items():
    if name == "text":
        chunk = text_ptbr
        print(f"  [TRADUZIDO] text: {size} -> {len(chunk)} bytes @ offset {len(new_body)}")
    else:
        chunk = body_orig[offset:offset+size]

    new_file_info[name] = [len(new_body), len(chunk)]
    new_body.extend(chunk)

OUT_BODY.write_bytes(new_body)
print(f"\nSalvo: {OUT_BODY.name} ({len(new_body)} bytes)")

# Salva offsets atualizados
new_index = dict(index)
new_index["file_info"] = new_file_info
OUT_JSON.write_text(json.dumps(new_index, ensure_ascii=False, indent=2), encoding="utf-8")
print(f"Salvo: {OUT_JSON.name}")
print(f"\ntext novo offset: {new_file_info['text']}")
