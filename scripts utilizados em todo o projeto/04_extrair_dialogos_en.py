"""
extrair_dialogos_en.py v2
Extrai os diálogos em inglês de cada arquivo de scenario.
Formato real: texts[i] = [personagem_jp, [[jp,jp_text,len],[en_name,en_text,len],[tw,tw_text,len]], ...]
Texto EN: texts[i][1][1][1]
Personagem EN: texts[i][1][1][0]

Uso: python extrair_dialogos_en.py
Executar em: D:\freemote\
"""

import json
from pathlib import Path

BASE     = Path(__file__).parent
SCENARIO = BASE / "output_scenario" / "scenario"
OUT_DIR  = BASE / "dialogos_para_traduzir"
OUT_DIR.mkdir(exist_ok=True)

IGNORAR = {
    "charvoice", "classlist", "dummy", "enlist",
    "filelist", "movie", "scenelist", "standlist",
    "standposition", "twlist", "addfile"
}

arquivos = sorted(SCENARIO.glob("*.scn.m.json"))
total_arquivos = 0
total_dialogos = 0

for arquivo in arquivos:
    if ".resx" in arquivo.name:
        continue

    nome = arquivo.stem.replace(".scn.m", "").replace(".txt", "")
    if nome in IGNORAR:
        continue

    dados = json.loads(arquivo.read_text(encoding="utf-8"))

    dialogos = []
    idx = 0

    for scene in dados.get("scenes", []):
        for entry in scene.get("texts", []):
            if not isinstance(entry, list) or len(entry) < 2:
                continue

            idiomas = entry[1]
            if not isinstance(idiomas, list) or len(idiomas) < 2:
                continue

            en = idiomas[1]
            if not isinstance(en, list) or len(en) < 2:
                continue

            personagem = en[0] if en[0] else ""
            texto_en   = en[1] if en[1] else ""

            if not texto_en or not texto_en.strip():
                continue

            dialogos.append({
                "id": idx,
                "personagem": personagem,
                "texto_en": texto_en,
                "texto_ptbr": ""
            })
            idx += 1

    if not dialogos:
        continue

    out_file = OUT_DIR / f"{nome}.json"
    out_file.write_text(
        json.dumps({
            "arquivo": nome,
            "total": len(dialogos),
            "dialogos": dialogos
        }, ensure_ascii=False, indent=2),
        encoding="utf-8"
    )
    total_arquivos += 1
    total_dialogos += len(dialogos)
    print(f"  {nome}: {len(dialogos)} diálogos")

print(f"\nTotal: {total_arquivos} arquivos, {total_dialogos} diálogos")
print(f"Salvo em: {OUT_DIR}")
