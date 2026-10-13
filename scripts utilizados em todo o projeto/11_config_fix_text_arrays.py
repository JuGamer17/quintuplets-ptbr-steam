"""
fix_text_arrays.py
Compara text_original.psb.decompressed.json (original, 4 valores por chave)
com output_config\config\text.psb.m.json (traduzido, algumas chaves com 3)
e corrige adicionando o 4º valor (chinês tradicional) onde estiver faltando.

Uso: python fix_text_arrays.py
Executar em: D:\freemote\
"""

import json
import shutil
from pathlib import Path

BASE         = Path(__file__).parent
ORIG_JSON    = BASE / "text_original_dec" / "text_original.psb.decompressed.json"
TRAD_JSON    = BASE / "output_config" / "config" / "text.psb.m.json"
BACKUP_JSON  = BASE / "output_config" / "config" / "text.psb.m.json.bak"

# ── 1. Sanity checks ──────────────────────────────────────────────────────────
for f in [ORIG_JSON, TRAD_JSON]:
    if not f.exists():
        print(f"ERRO: não encontrado → {f}")
        raise SystemExit(1)

# ── 2. Backup ─────────────────────────────────────────────────────────────────
if not BACKUP_JSON.exists():
    shutil.copy2(TRAD_JSON, BACKUP_JSON)
    print(f"Backup salvo: {BACKUP_JSON.name}")

# ── 3. Lê os dois JSONs ───────────────────────────────────────────────────────
orig = json.loads(ORIG_JSON.read_text(encoding="utf-8"))
trad = json.loads(TRAD_JSON.read_text(encoding="utf-8"))

# ── 4. Corrige arrays com contagem diferente ──────────────────────────────────
fixed = 0
problems = []

for key in trad:
    if key not in orig:
        continue
    
    orig_arr = orig[key]
    trad_arr = trad[key]
    
    if not isinstance(orig_arr, list) or not isinstance(trad_arr, list):
        continue
    
    if len(trad_arr) == len(orig_arr):
        continue  # OK
    
    if len(trad_arr) < len(orig_arr):
        # Faltam entradas no final — copia do original
        missing = orig_arr[len(trad_arr):]
        print(f"  CORRIGINDO {key}: {len(trad_arr)} → {len(orig_arr)} entradas")
        for i, val in enumerate(missing):
            print(f"    adicionando [{len(trad_arr)+i}]: {str(val)[:60]}")
        trad[key] = trad_arr + missing
        fixed += 1
    else:
        # Tem mais entradas que o original — anota mas não mexe
        problems.append(f"  AVISO {key}: {len(trad_arr)} entradas (original tem {len(orig_arr)})")

print(f"\nTotal corrigido: {fixed} chaves")

if problems:
    print("\nAvisos (mais entradas que o original):")
    for p in problems:
        print(p)

# ── 5. Salva o JSON corrigido ─────────────────────────────────────────────────
TRAD_JSON.write_text(
    json.dumps(trad, ensure_ascii=False, indent=2), encoding="utf-8"
)
print(f"\nSalvo: {TRAD_JSON}")

print("\n" + "=" * 60)
print("Agora recompila o text e reconstrói o body:")
print("  python config_body_minimal.py")
print("  python fix_minimal.py")
print("  PsBuild info-psb output_config\\config_info.psb.m.json")
print('  copy config_body_minimal.bin "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_body.bin"')
print('  copy config_info.psb.m "E:\\SteamLibrary\\steamapps\\common\\goto02\\windata\\config_info.psb.m"')
