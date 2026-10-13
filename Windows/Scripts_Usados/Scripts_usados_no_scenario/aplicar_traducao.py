"""
aplicar_traducao.py
Aplica as traduções PT-BR nos JSONs extraídos.
Execute APÓS o bat_extrair.bat terminar.
"""
import json
import os
from pathlib import Path

BASE   = Path(__file__).parent
JSON_DIR  = BASE / "_json"
CACHE  = BASE / "translation_cache.json"

print("Carregando cache de tradução...")
cache = json.loads(CACHE.read_text(encoding="utf-8"))
print(f"  {len(cache)} entradas")

jsons = sorted(JSON_DIR.glob("*.json"))
print(f"JSONs encontrados: {len(jsons)}")

total_ok = 0
total_miss = 0

for jp in jsons:
    data = json.loads(jp.read_text(encoding="utf-8"))
    changed = 0

    for scene in data.get("scenes", []):
        for text in scene.get("texts", []):
            if not isinstance(text, list) or len(text) < 2: continue
            lang = text[1]
            if not isinstance(lang, list) or len(lang) < 2: continue
            en = lang[1]
            if not isinstance(en, list) or len(en) < 2: continue
            en_text = en[1]
            if not isinstance(en_text, str) or not en_text.strip(): continue

            if en_text in cache:
                pt = cache[en_text]
                en[1] = pt
                if len(en) > 2 and isinstance(en[2], int): en[2] = len(pt.encode('utf-8'))
                if len(en) > 3 and isinstance(en[3], str): en[3] = pt.replace("\\n"," ").replace("\n"," ")
                if len(en) > 4 and isinstance(en[4], str): en[4] = pt.replace("\\n"," ").replace("\n"," ")
                changed += 1
                total_ok += 1
            else:
                total_miss += 1

    jp.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")
    print(f"  {jp.name}: {changed} substituições")

print()
print(f"Total traduzidos: {total_ok}")
print(f"Total sem tradução: {total_miss}")
print()
print("Agora execute: bat_reempacotar.bat")
