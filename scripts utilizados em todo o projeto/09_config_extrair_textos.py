"""
extrair_textos_config.py
Lê todos os JSONs em output_config\config\ e extrai apenas
as chaves que contêm strings traduzíveis (não numéricas).
Gera um único JSON organizado por arquivo/seção.
"""
import json
from pathlib import Path

BASE     = Path(__file__).parent
CONFIG   = BASE / "output_config" / "config"
OUT_JSON = BASE / "config_textos_para_traduzir.json"

# Arquivos a ignorar (só configs numéricas ou sem texto)
IGNORAR = {"config", "revision"}

resultado = {}

def tem_texto(valor):
    """Verifica se um valor contém strings traduzíveis."""
    if isinstance(valor, str) and len(valor) > 1:
        return True
    if isinstance(valor, list):
        return any(isinstance(v, str) and len(v) > 1 for v in valor)
    if isinstance(valor, dict):
        return any(tem_texto(v) for v in valor.values())
    return False

def extrair_strings(obj):
    """Extrai apenas as entradas com strings de um objeto."""
    if isinstance(obj, dict):
        return {k: extrair_strings(v) for k, v in obj.items() if tem_texto(v)}
    if isinstance(obj, list):
        return [v for v in obj if isinstance(v, str)]
    return obj

arquivos = sorted(CONFIG.glob("*.psb.m.json"))
total_chaves = 0

for f in arquivos:
    nome = f.stem.replace(".psb.m", "")
    if nome in IGNORAR:
        continue
    
    dados = json.loads(f.read_text(encoding="utf-8"))
    extraido = extrair_strings(dados)
    
    if extraido:
        resultado[nome] = extraido
        n = sum(1 for v in extraido.values() if isinstance(v, list)) if isinstance(extraido, dict) else 0
        print(f"  {nome}: {len(extraido) if isinstance(extraido, dict) else '?'} entradas")
        total_chaves += len(extraido) if isinstance(extraido, dict) else 0

OUT_JSON.write_text(
    json.dumps(resultado, ensure_ascii=False, indent=2),
    encoding="utf-8"
)
print(f"\nTotal: {total_chaves} chaves em {len(resultado)} arquivos")
print(f"Salvo: {OUT_JSON.name}")
