r"""
extrair_escolhas.py
=================================================================
Varre TODOS os JSONs de cenario originais (D:\freemote\_json\) e
extrai as CAIXAS DE ESCOLHA (scenes[].selects[] e a pergunta
scenes[].selectInfo) para o MESMO modelo de JSON de traducao dos
dialogos:

  {"arquivo": "tu_01", "total": N,
   "dialogos": [{"id":0, "personagem":"", "texto_en":"...", "texto_ptbr":"..."}, ...]}

Cada entrada tem alguns campos extras so para dar contexto ao tradutor
(tipo, cena, texto_jp) - o script de aplicacao ignora o que nao precisa.

SAIDA:
  escolhas_para_traduzir\NOME.json   (so arquivos que TEM escolhas)
  escolhas_resumo.txt                (lista de arquivos + textos unicos)

PRE-PREENCHIMENTO (voce pode editar depois):
  - "Yes" -> "Sim" e "No" -> "Não"  (o teste recomendado no relatorio)
  - A "pergunta" (selectInfo) recebe a traducao do dialogo que tem
    exatamente o mesmo texto EN em "Todos arquivos traduzidos\NOME.json"

DEPOIS DE TRADUZIR: copie os JSONs prontos para a pasta
  escolhas_traduzidas\
e rode o aplicar_traducoes_do_git.py (versao v3).

USO:
  python extrair_escolhas.py
=================================================================
"""

import json
from collections import Counter
from pathlib import Path

from escolhas_util import iterar_escolhas

BASE        = Path(__file__).parent
JSON_DIR    = BASE / "_json"
TRADUZIDOS  = BASE / "Todos arquivos traduzidos"
SAIDA       = BASE / "escolhas_para_traduzir"
RESUMO      = BASE / "escolhas_resumo.txt"

PRE_TRADUCOES = {
    "Yes": "Sim",
    "No":  "Não",
}


def carregar_traducao_dialogos(nome):
    """Dict {texto_en: texto_ptbr} dos dialogos ja traduzidos desse arquivo."""
    caminho = TRADUZIDOS / f"{nome}.json"
    if not caminho.exists():
        return {}
    try:
        dados = json.loads(caminho.read_text(encoding="utf-8-sig"))
    except Exception:
        return {}
    mapa = {}
    for d in dados.get("dialogos", []):
        en = (d.get("texto_en") or "").strip()
        pt = (d.get("texto_ptbr") or "").strip()
        if en and pt:
            mapa[en] = d["texto_ptbr"]
    return mapa


def main():
    if not JSON_DIR.exists():
        print(f"ERRO: pasta nao encontrada: {JSON_DIR}")
        raise SystemExit(1)

    SAIDA.mkdir(exist_ok=True)

    arquivos = sorted(
        p for p in JSON_DIR.glob("*.txt.json") if ".resx." not in p.name
    )
    print(f"Varrendo {len(arquivos)} JSONs de cenario em {JSON_DIR.name}\\ ...")

    resumo_arquivos = []
    contador_textos = Counter()
    total_itens = 0
    com_erro = []
    todos_avisos = []

    for p in arquivos:
        nome = p.name[: -len(".txt.json")]
        try:
            dados = json.loads(p.read_text(encoding="utf-8-sig"))
        except Exception as e:
            com_erro.append(f"{nome} ({e})")
            continue

        avisos = []
        itens = list(iterar_escolhas(dados, avisos))
        todos_avisos.extend(f"{nome}: {a}" for a in avisos)
        if not itens:
            continue

        mapa_dialogos = carregar_traducao_dialogos(nome)

        dialogos = []
        for it in itens:
            en = it["texto_en"]
            if it["tipo"] == "pergunta":
                ptbr = mapa_dialogos.get(en.strip(), "")
            else:
                ptbr = PRE_TRADUCOES.get(en.strip(), "")

            entrada = {
                "id": it["idx"],
                "tipo": it["tipo"],
                "personagem": "",
                "cena": it["cena"],
                "texto_jp": it["texto_jp"],
                "texto_en": en,
                "texto_ptbr": ptbr,
            }
            if it["selidx"] is not None:
                entrada["selidx"] = it["selidx"]
            dialogos.append(entrada)

            if it["tipo"] == "escolha":
                contador_textos[en.strip()] += 1

        saida = {"arquivo": nome, "total": len(dialogos), "dialogos": dialogos}
        (SAIDA / f"{nome}.json").write_text(
            json.dumps(saida, ensure_ascii=False, indent=2), encoding="utf-8"
        )

        n_esc = sum(1 for d in dialogos if d["tipo"] == "escolha")
        n_perg = len(dialogos) - n_esc
        total_itens += len(dialogos)
        resumo_arquivos.append((nome, n_esc, n_perg))

    # ---------------- resumo ----------------
    linhas = []
    linhas.append("RESUMO DA EXTRACAO DAS CAIXAS DE ESCOLHA")
    linhas.append("=" * 60)
    linhas.append(f"JSONs varridos: {len(arquivos)}")
    linhas.append(f"Arquivos COM escolhas: {len(resumo_arquivos)}")
    linhas.append(f"Total de itens (escolhas + perguntas): {total_itens}")
    linhas.append("")
    linhas.append("ARQUIVOS (nome: escolhas / perguntas)")
    linhas.append("-" * 60)
    for nome, n_esc, n_perg in resumo_arquivos:
        linhas.append(f"  {nome}: {n_esc} escolha(s) / {n_perg} pergunta(s)")
    linhas.append("")
    linhas.append("TEXTOS UNICOS DAS OPCOES (quantas vezes aparece)")
    linhas.append("-" * 60)
    for texto, qtd in contador_textos.most_common():
        linhas.append(f"  {qtd:4d}x  {texto}")
    if todos_avisos:
        linhas.append("")
        linhas.append("AVISOS")
        linhas.append("-" * 60)
        linhas.extend(f"  {a}" for a in todos_avisos)
    if com_erro:
        linhas.append("")
        linhas.append("ARQUIVOS COM ERRO DE LEITURA")
        linhas.append("-" * 60)
        linhas.extend(f"  {a}" for a in com_erro)

    RESUMO.write_text("\n".join(linhas), encoding="utf-8")

    print("\n".join(linhas))
    print(f"\nJSONs gerados em: {SAIDA}")
    print(f"Resumo salvo em:  {RESUMO}")
    print("\nProximo passo: traduzir os 'texto_ptbr' vazios, copiar os JSONs prontos")
    print("para a pasta 'escolhas_traduzidas' e rodar o aplicar_traducoes_do_git.py.")


if __name__ == "__main__":
    main()
