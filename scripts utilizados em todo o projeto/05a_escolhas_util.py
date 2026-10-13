r"""
escolhas_util.py
=================================================================
Funcoes compartilhadas entre extrair_escolhas.py e
aplicar_traducoes_do_git.py.

Localiza as CAIXAS DE ESCOLHA dentro do JSON de cenario do FreeMote:

    scenes[]
      |-- selectInfo            (a pergunta da escolha, opcional)
      |     '-- language[1]     (ingles)  {"text", "textlength", ...}
      '-- selects[]             (as opcoes)
            '-- language[1]     (ingles)  {"text", "textlength", ...}

A ORDEM de iteracao e o filtro (so entra o que tem texto EN nao vazio)
sao a "chave" que liga o JSON de extracao ao JSON de aplicacao.
Por isso as duas pontas usam SEMPRE esta mesma funcao.
=================================================================
"""


def _nome_cena(scene):
    for chave in ("label", "title", "name", "scenename"):
        v = scene.get(chave)
        if isinstance(v, str) and v:
            return v
    return ""


def _lang_en(obj, avisos, contexto):
    """Retorna o dict do ingles (language[1]) se ele existir e tiver texto."""
    if not isinstance(obj, dict):
        return None
    lang = obj.get("language")
    if not isinstance(lang, list) or len(lang) < 2 or lang[1] is None:
        return None

    en = lang[1]
    if not isinstance(en, dict):
        if avisos is not None:
            avisos.append(f"{contexto}: language[1] nao e um dict (formato inesperado) - ignorado")
        return None

    texto = en.get("text")
    if not isinstance(texto, str) or not texto.strip():
        return None
    return en


def iterar_escolhas(dados, avisos=None):
    """
    Gera um dict por item traduzivel, na ordem do arquivo:
      idx       -> posicao (0, 1, 2...) so entre os itens validos
      tipo      -> "pergunta" (selectInfo) ou "escolha" (selects)
      cena      -> nome da cena (informativo)
      selidx    -> indice da opcao (so para "escolha")
      texto_jp  -> texto japones original (contexto)
      texto_en  -> texto ingles atual
      lang_en   -> referencia ao dict language[1] (para editar)
    """
    idx = 0
    for scene in dados.get("scenes", []) or []:
        if not isinstance(scene, dict):
            continue
        nome_cena = _nome_cena(scene)

        info = scene.get("selectInfo")
        en = _lang_en(info, avisos, f"{nome_cena} selectInfo")
        if en is not None:
            yield {
                "idx": idx,
                "tipo": "pergunta",
                "cena": nome_cena,
                "selidx": None,
                "texto_jp": info.get("text") or "",
                "texto_en": en["text"],
                "lang_en": en,
            }
            idx += 1

        for pos, sel in enumerate(scene.get("selects") or []):
            en = _lang_en(sel, avisos, f"{nome_cena} selects[{pos}]")
            if en is None:
                continue
            yield {
                "idx": idx,
                "tipo": "escolha",
                "cena": nome_cena,
                "selidx": sel.get("selidx", pos),
                "texto_jp": sel.get("text") or "",
                "texto_en": en["text"],
                "lang_en": en,
            }
            idx += 1


def definir_texto_en(lang_en, novo_texto, atualizar_len=True):
    """
    Troca o texto ingles pelo PT-BR e atualiza textlength (em CARACTERES,
    como no proprio arquivo: 'Yes' = 3, 'Nao' = 3, japones 1 char = 1).
    NAO mexe em searchtext / speechtext.
    atualizar_len=False deixa o textlength original (usado so em testes).
    """
    lang_en["text"] = novo_texto
    if atualizar_len and "textlength" in lang_en:
        lang_en["textlength"] = len(novo_texto)
