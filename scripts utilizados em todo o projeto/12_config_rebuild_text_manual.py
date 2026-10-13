"""
rebuild_text_manual.py
Reconstrói o text.psb.m traduzido manualmente:
1. Pega o text_original.psb.decompressed.psb (PSB raw original)
2. Aplica as strings PT-BR diretamente nos bytes do PSB
   (substituindo as strings inglesas)
3. Monta MDF header + zlib + encripta com EmtConvert

Mas primeiro: verifica se o text.psb.decompressed.psb (traduzido pelo PsBuild)
e valido comparando com o original descriptografado.
"""
import zlib, struct, json
from pathlib import Path

BASE         = Path(__file__).parent
ORIG_PSB     = BASE / "text_original.psb.decompressed.psb"
TRAD_PSB     = BASE / "text.psb.decompressed.psb"   # gerado pelo PsBuild
OUT_FAKE_MDF = BASE / "text_fake.mdf"

orig_psb = ORIG_PSB.read_bytes()
trad_psb = TRAD_PSB.read_bytes()

print(f"text original PSB:  {len(orig_psb)} bytes")
print(f"text traduzido PSB: {len(trad_psb)} bytes")
print(f"Header orig:  {orig_psb[:8].hex()}")
print(f"Header trad:  {trad_psb[:8].hex()}")

# Verifica compressao
for level in range(5, 10):
    c = zlib.compress(trad_psb, level=level)
    print(f"  trad level={level}: {len(c)} bytes")

# Monta fake MDF com level=6
trad_compressed = zlib.compress(trad_psb, level=6)
header = b"mdf\x00" + struct.pack("<I", len(trad_psb))
fake_mdf = header + trad_compressed
OUT_FAKE_MDF.write_bytes(fake_mdf)

print(f"\nFake MDF salvo: {OUT_FAKE_MDF.name} ({len(fake_mdf)} bytes)")
print(f"Original text.psb.m tinha: 11815 bytes")
print(f"Novo text fake MDF:        {len(fake_mdf)} bytes")

print("\nAgora encripta:")
print("  EmtConvert mdf -r -s 523aad2de7132text.psb.m text_fake.mdf -l 131")
print("  copy text_fake.converted.mdf text_ptbr.psb.m")
print("\nDepois reconstroi o body:")
print("  python config_body_minimal.py  (precisa apontar para text_ptbr.psb.m)")
