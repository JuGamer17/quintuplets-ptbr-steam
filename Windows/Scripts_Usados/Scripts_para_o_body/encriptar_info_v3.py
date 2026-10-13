import zlib, struct
from pathlib import Path

BASE        = Path(__file__).parent
ORIG_MDF    = BASE / "config_info_original.psb.m"
ORIG_PSB    = BASE / "config_info_original.psb.decompressed.psb"
PATCHED_PSB = BASE / "config_info_patched_v3.psb.decompressed.psb"
OUT_MDF     = BASE / "config_info_final_v3.psb.m"

orig_psb    = ORIG_PSB.read_bytes()
patched_psb = PATCHED_PSB.read_bytes()
orig_mdf    = ORIG_MDF.read_bytes()

orig_mdf_body     = orig_mdf[8:]
orig_compressed   = zlib.compress(orig_psb, level=6)
keystream         = bytes(a ^ b for a,b in zip(orig_compressed, orig_mdf_body))
patched_compressed = zlib.compress(patched_psb, level=6)

print(f"keystream:          {len(keystream)} bytes")
print(f"patched comprimido: {len(patched_compressed)} bytes")

use_len  = min(len(patched_compressed), len(keystream))
new_body = bytes(a ^ b for a,b in zip(patched_compressed[:use_len], keystream[:use_len]))
header   = b"mdf\x00" + struct.pack("<I", len(patched_psb))
new_mdf  = header + new_body
OUT_MDF.write_bytes(new_mdf)
print(f"Salvo: {OUT_MDF.name} ({len(new_mdf)} bytes)")
print(f"Original: {len(orig_mdf)} bytes")
