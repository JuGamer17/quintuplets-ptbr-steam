"""
patch_info_final.py
Patcha o config_info com os novos offsets e tamanhos do body final,
e reencripta usando o keystream do original.
"""
import json, zlib, struct
from pathlib import Path

BASE         = Path(__file__).parent
ORIG_PSB     = BASE / "config_info_original.psb.decompressed.psb"
ORIG_MDF     = BASE / "config_info_original.psb.m"
INDEX_JSON   = BASE / "config_info_final_offsets.json"
OUT_MDF      = BASE / "config_info_final.psb.m"

orig_psb  = ORIG_PSB.read_bytes()
orig_mdf  = ORIG_MDF.read_bytes()
new_index = json.loads(INDEX_JSON.read_text(encoding="utf-8"))

# Lê offsets originais do text
orig_text_offset = 38785
orig_text_size   = 11815
new_text_offset, new_text_size = new_index["file_info"]["text"]

print(f"text original:  offset={orig_text_offset}, size={orig_text_size}")
print(f"text novo:      offset={new_text_offset}, size={new_text_size}")

# Patch binário no PSB original
data = bytearray(orig_psb)

orig_off_enc = bytes([0x07]) + orig_text_offset.to_bytes(3, 'little')
orig_sz_enc  = bytes([0x06]) + orig_text_size.to_bytes(2, 'little')
new_off_enc  = bytes([0x07]) + new_text_offset.to_bytes(3, 'little') if new_text_offset < 0x1000000 else bytes([0x08]) + new_text_offset.to_bytes(4, 'little')
# Escolhe encoding correto para o novo size
new_sz_bytes = (new_text_size.bit_length() + 7) // 8
new_sz_enc   = bytes([new_sz_bytes]) + new_text_size.to_bytes(new_sz_bytes, 'little')

combined     = orig_off_enc + orig_sz_enc
new_combined = new_off_enc  + new_sz_enc

idx = data.find(combined)
if idx == -1:
    print(f"ERRO: sequência {combined.hex()} não encontrada!")
    raise SystemExit(1)

print(f"Patch em 0x{idx:04x}: {combined.hex()} → {new_combined.hex()}")

# Ajusta tamanho se necessário (padding ou trim)
if len(new_combined) != len(combined):
    # PSB requer tamanho fixo — se mudar, precisa recompilar
    print(f"AVISO: tamanho do encoding mudou ({len(combined)} → {len(new_combined)})")
    # Tenta usar mesmo número de bytes
    if len(new_combined) < len(combined):
        new_combined = new_combined + bytes(len(combined) - len(new_combined))
    else:
        print("ERRO: encoding maior que o original — não é possível patch simples")
        raise SystemExit(1)

data[idx:idx+len(combined)] = new_combined

patched_psb = BASE / "config_info_patched_final.psb.decompressed.psb"
patched_psb.write_bytes(data)
print(f"PSB patchado: {patched_psb.name}")

# Reencripta usando keystream do original
orig_mdf_body   = orig_mdf[8:]
orig_compressed = zlib.compress(orig_psb, level=6)
assert len(orig_compressed) == len(orig_mdf_body)
keystream = bytes(a ^ b for a, b in zip(orig_compressed, orig_mdf_body))

patched_compressed = zlib.compress(bytes(data), level=6)
use_len  = min(len(patched_compressed), len(keystream))
new_body = bytes(a ^ b for a, b in zip(patched_compressed[:use_len], keystream[:use_len]))
header   = b"mdf\x00" + struct.pack("<I", len(data))
new_mdf  = header + new_body

OUT_MDF.write_bytes(new_mdf)
print(f"Info encriptado: {OUT_MDF.name} ({len(new_mdf)} bytes, original: {len(orig_mdf)} bytes)")

print("\nPróximo passo — copiar para o jogo e testar:")
print('copy config_body_final.bin "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_body.bin"')
print('copy config_info_final.psb.m "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_info.psb.m"')
