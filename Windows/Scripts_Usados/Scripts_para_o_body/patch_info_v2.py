from pathlib import Path

BASE     = Path(__file__).parent
PSB_ORIG = BASE / "config_info_original.psb.decompressed.psb"
PSB_OUT  = BASE / "config_info_patched.psb.decompressed.psb"

# Valores originais do text
ORIG_OFFSET = 38785   # 0x009781 - 3 bytes LE com tag 07
ORIG_SIZE   = 11815   # 0x2E27   - 2 bytes LE com tag 06
NEW_OFFSET  = 38785   # nao muda
NEW_SIZE    = 12297   # 0x3009   - 2 bytes LE com tag 06

data = bytearray(PSB_ORIG.read_bytes())
print(f"PSB: {len(data)} bytes")

# Encoding observado no dump:
# offset 38785 = 07 81 97 00  (tag 07 = 3 bytes LE)
# size   11815 = 06 27 2e     (tag 06 = 2 bytes LE)
orig_off_enc = bytes([0x07]) + ORIG_OFFSET.to_bytes(3, 'little')
orig_sz_enc  = bytes([0x06]) + ORIG_SIZE.to_bytes(2, 'little')
new_off_enc  = bytes([0x07]) + NEW_OFFSET.to_bytes(3, 'little')
new_sz_enc   = bytes([0x06]) + NEW_SIZE.to_bytes(2, 'little')

print(f"offset enc: {orig_off_enc.hex()} -> {new_off_enc.hex()}")
print(f"size   enc: {orig_sz_enc.hex()}  -> {new_sz_enc.hex()}")

combined     = orig_off_enc + orig_sz_enc
new_combined = new_off_enc  + new_sz_enc

idx = data.find(combined)
if idx == -1:
    print(f"ERRO: sequencia {combined.hex()} nao encontrada!")
    raise SystemExit(1)

count = data.count(combined)
print(f"\nEncontrado {count}x em 0x{idx:04x} ({idx})")

if count > 1:
    print("AVISO: multiplas ocorrencias, usando a primeira")

data[idx:idx+len(combined)] = new_combined
PSB_OUT.write_bytes(data)
print(f"Salvo: {PSB_OUT.name}")

print("\nAgora reencripta:")
print("  EmtConvert mdf -r -s 523aad2de7132config_info.psb.m config_info_patched.psb.decompressed.psb -l 131")
print('  copy config_info_patched.psb.decompressed.psb.converted.mdf config_info_patched.psb.m')
print('  copy config_body_minimal.bin "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_body.bin"')
print('  copy config_info_patched.psb.m "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_info.psb.m"')
