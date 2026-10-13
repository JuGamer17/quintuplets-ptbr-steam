r"""
aplicar_traducoes_do_git.py  (v3 - com caixas de escolha)
=================================================================
Aplica as traducoes PT-BR de volta na estrutura do scenario e gera
o scenario_body_ptbr.bin + scenario_info_ptbr.psb.m.json, prontos
para o passo final (finalizar_patch.bat).

NOVIDADE v3: alem dos dialogos (scenes[].texts), aplica tambem as
CAIXAS DE ESCOLHA (scenes[].selects[] e scenes[].selectInfo).

ESTRUTURA DE PASTAS ESPERADA (em D:\freemote\):
  _json\                       -> JSONs originais do scenario (moldes)
  Todos arquivos traduzidos\   -> dialogos traduzidos (texto_ptbr)
  escolhas_traduzidas\         -> escolhas traduzidas (opcional, mesmo modelo,
                                  gerado por extrair_escolhas.py)
  escolhas_util.py             -> modulo compartilhado (mesma pasta deste script)
  scenario_body.bin            -> body ORIGINAL do jogo
  scenario_info.psb.m.json     -> indice original

USO:
  python aplicar_traducoes_do_git.py                    (tudo)
  python aplicar_traducoes_do_git.py --so tu_01 ca01_01 (so esses, p/ teste)

Depois: rodar finalizar_patch.bat
Requisitos: PsBuild.exe e EmtConvert.exe na mesma pasta.
=================================================================
"""

import json
import shutil
import struct
import subprocess
import sys
import time
import zlib
from pathlib import Path

try:
    from escolhas_util import iterar_escolhas, definir_texto_en
except ImportError:
    print("ERRO: nao encontrei escolhas_util.py na mesma pasta deste script.")
    print("Copie o escolhas_util.py para D:\\freemote\\ e rode de novo.")
    raise SystemExit(1)

# ===================== CONFIGURACAO =====================

BASE          = Path(__file__).parent
JSON_DIR      = BASE / "_json"                        # JSONs originais (molde)
TRADUZIDOS    = BASE / "Todos arquivos traduzidos"    # dialogos traduzidos
ESCOLHAS_DIR  = BASE / "escolhas_traduzidas"          # escolhas traduzidas (opcional)
SCENARIO_INFO_JSON = BASE / "scenario_info.psb.m.json"
OUTPUT_CONFIG_SCEN = BASE / "output_scenario" / "scenario_info.psb.m.json"

PSB_BUILD     = BASE / "PsBuild.exe"
EMT_CONVERT   = BASE / "EmtConvert.exe"

KEY           = "523aad2de7132"
KEY_LEN       = "131"

PREFIXOS_DIALOGO = ("ca", "ed", "gr", "op", "tu")

LOG_PATH      = BASE / "log_aplicar_traducoes.txt"

PARA_O_JOGO   = BASE / "para ir para o jogo"
PARA_O_JOGO.mkdir(exist_ok=True)

# Chaves de TESTE (so para descobrir qual parte quebra o jogo):
#   --sem-escolhas      nao aplica nenhuma escolha (so dialogos)
#   --sem-pergunta      nao aplica o selectInfo (a pergunta)
#   --sem-selects       nao aplica as opcoes (selects)
#   --manter-textlength aplica o texto mas NAO mexe no textlength
OPCOES = {
    "sem_escolhas": False,
    "sem_pergunta": False,
    "sem_selects": False,
    "manter_textlength": False,
}

# ===================== LOG =====================

log_lines = []

def log(msg):
    print(msg)
    log_lines.append(str(msg))

def salvar_log():
    LOG_PATH.write_text("\n".join(log_lines), encoding="utf-8")


# ===================== PASSO 0: SANITY CHECKS =====================

def sanity_checks():
    log("=" * 70)
    log("PASSO 0 - Verificando arquivos e pastas necessarios")
    log("=" * 70)

    erros = []

    if not JSON_DIR.exists():
        erros.append(f"Pasta nao encontrada: {JSON_DIR}")
    if not TRADUZIDOS.exists():
        erros.append(f"Pasta nao encontrada: {TRADUZIDOS}")
    if not PSB_BUILD.exists():
        erros.append(f"Arquivo nao encontrado: {PSB_BUILD}")
    if not EMT_CONVERT.exists():
        erros.append(f"Arquivo nao encontrado: {EMT_CONVERT}")

    info_json = encontrar_scenario_info_json()
    if info_json is None:
        erros.append(
            "Nao encontrei o indice original do scenario "
            "(scenario_info.psb.m.json). Ele precisa estar em "
            "D:\\freemote\\scenario_info.psb.m.json ou "
            "D:\\freemote\\output_scenario\\scenario_info.psb.m.json"
        )

    if erros:
        log("\nERROS ENCONTRADOS:")
        for e in erros:
            log(f"  - {e}")
        log("\nCorrija os itens acima e rode o script novamente.")
        salvar_log()
        raise SystemExit(1)

    if ESCOLHAS_DIR.exists():
        log(f"OK - pasta de escolhas encontrada: {ESCOLHAS_DIR.name}\\")
    else:
        log(f"(aviso) pasta '{ESCOLHAS_DIR.name}' nao existe - so os dialogos serao aplicados.")

    log("OK - todos os arquivos e pastas necessarios foram encontrados.")
    return info_json


def encontrar_scenario_info_json():
    candidatos = [
        SCENARIO_INFO_JSON,
        OUTPUT_CONFIG_SCEN,
        BASE / "output_scenario" / "scenario" / "scenario_info.psb.m.json",
    ]
    for c in candidatos:
        if c.exists():
            return c
    achados = list(BASE.rglob("scenario_info.psb.m.json"))
    if achados:
        return achados[0]
    return None


# ===================== LOCALIZAR JSON ORIGINAL =====================

def encontrar_json_original(nome_arquivo):
    candidatos = [
        JSON_DIR / f"{nome_arquivo}.txt.json",
        JSON_DIR / f"{nome_arquivo}.psb.json",
        JSON_DIR / f"{nome_arquivo}.scn.m.json",
        JSON_DIR / f"{nome_arquivo}.scn.json",
        JSON_DIR / f"{nome_arquivo}.json",
    ]
    for c in candidatos:
        if c.exists():
            return c

    achados = sorted(JSON_DIR.glob(f"{nome_arquivo}.*"))
    achados = [a for a in achados if a.name.endswith(".json") and ".resx." not in a.name]
    if achados:
        return achados[0]

    return None


def encontrar_resx_json(json_original_path):
    nome = json_original_path.name
    if nome.endswith(".json") and not nome.endswith(".resx.json"):
        base = nome[:-len(".json")]
        candidato = json_original_path.parent / f"{base}.resx.json"
        if candidato.exists():
            return candidato
    return None


# ===================== APLICAR TRADUCAO NO JSON ORIGINAL =====================

def aplicar_traducao_no_json(dados_originais, dialogos_traduzidos):
    """
    Dialogos: percorre scenes[].texts na MESMA ordem da extracao e troca o
    texto EN (texts[i][1][1][1]) pelo texto_ptbr do dialogo de mesmo id.
    Retorna: (dados_modificados, aplicados, pulados)
    """
    mapa_traducao = {}
    for d in dialogos_traduzidos:
        ptbr = d.get("texto_ptbr") or ""
        if ptbr.strip():
            mapa_traducao[d["id"]] = ptbr

    aplicados = 0
    pulados = 0
    idx_atual = 0

    for scene in dados_originais.get("scenes", []):
        for entry in scene.get("texts", []):
            if not isinstance(entry, list) or len(entry) < 2:
                continue

            idiomas = entry[1]
            if not isinstance(idiomas, list) or len(idiomas) < 2:
                continue

            en = idiomas[1]
            if not isinstance(en, list) or len(en) < 2:
                continue

            texto_en_original = en[1] if en[1] else ""
            if not texto_en_original or not texto_en_original.strip():
                continue

            if idx_atual in mapa_traducao:
                novo_texto = mapa_traducao[idx_atual]
                en[1] = novo_texto
                if len(en) >= 3:
                    en[2] = len(novo_texto.encode("utf-8"))
                aplicados += 1
            else:
                pulados += 1

            idx_atual += 1

    return dados_originais, aplicados, pulados


def aplicar_escolhas_no_json(dados, entradas, opcoes=None):
    """
    Caixas de escolha: troca language[1].text (e textlength) pelo texto_ptbr.
    Seguranca: so aplica se o texto_en da entrada for IGUAL ao texto ingles
    que esta no molde naquela posicao (evita traduzir a opcao errada).
    Retorna: (aplicadas, avisos)
    """
    mapa = {}
    for e in entradas:
        ptbr = e.get("texto_ptbr") or ""
        if ptbr.strip():
            mapa[e["id"]] = e

    aplicadas = 0
    avisos = []
    opcoes = opcoes or {}
    itens = list(iterar_escolhas(dados, avisos))

    if len(itens) != len(entradas):
        avisos.append(
            f"o molde tem {len(itens)} itens de escolha mas o JSON traduzido tem "
            f"{len(entradas)} (aplicando so os que batem com o texto EN)"
        )

    for item in itens:
        e = mapa.get(item["idx"])
        if e is None:
            continue
        if item["tipo"] == "pergunta" and opcoes.get("sem_pergunta"):
            continue
        if item["tipo"] == "escolha" and opcoes.get("sem_selects"):
            continue
        if (e.get("texto_en") or "").strip() != item["texto_en"].strip():
            avisos.append(
                f"id {item['idx']}: texto EN diferente do molde "
                f"({e.get('texto_en')!r} x {item['texto_en']!r}) - NAO aplicado"
            )
            continue
        definir_texto_en(item["lang_en"], e["texto_ptbr"],
                         atualizar_len=not opcoes.get("manter_textlength"))
        aplicadas += 1

    return aplicadas, avisos


# ===================== RECOMPILAR + ENCRIPTAR UM ARQUIVO =====================

def recompilar_e_encriptar(nome_arquivo, json_path_temp, resx_path_original):
    """
    Pipeline comprovado: PsBuild -> .pure.scn -> zlib 9 -> fake MDF ->
    EmtConvert mdf -r (seed = KEY + nome + '.txt.scn.m').
    Retorna os bytes finais encriptados, ou None se falhar.
    """
    resx_temp_path = None
    if resx_path_original is not None and resx_path_original.exists():
        nome_temp = json_path_temp.name
        base_temp = nome_temp[:-len(".json")]
        resx_temp_path = json_path_temp.parent / f"{base_temp}.resx.json"
        shutil.copy2(resx_path_original, resx_temp_path)

    nome_temp_completo = json_path_temp.name
    candidatos_pure = [
        BASE / (nome_temp_completo[:-len(".json")] + ".pure.scn"),
    ]
    if nome_temp_completo.endswith(".txt.json"):
        candidatos_pure.append(
            BASE / (nome_temp_completo[:-len(".txt.json")] + ".pure.scn")
        )

    for c in candidatos_pure:
        if c.exists():
            c.unlink()

    result = subprocess.run(
        [str(PSB_BUILD), str(json_path_temp)],
        capture_output=True, text=True, cwd=BASE
    )
    time.sleep(0.2)

    if resx_temp_path is not None:
        resx_temp_path.unlink(missing_ok=True)

    pure_scn = None
    for c in candidatos_pure:
        if c.exists():
            pure_scn = c
            break

    if pure_scn is None:
        recentes = sorted(BASE.glob("*.pure.scn"), key=lambda p: p.stat().st_mtime, reverse=True)
        if recentes and (time.time() - recentes[0].stat().st_mtime) < 10:
            pure_scn = recentes[0]

    if pure_scn is None:
        log(f"  ERRO: PsBuild nao gerou nenhum .pure.scn para {nome_arquivo}")
        log(f"    stdout: {result.stdout.strip()}")
        log(f"    stderr: {result.stderr.strip()}")
        return None

    scn_data = pure_scn.read_bytes()
    compressed = zlib.compress(scn_data, level=9)

    header = b"mdf\x00" + struct.pack("<I", len(scn_data))
    fake_mdf = header + compressed
    fake_mdf_path = BASE / f"{nome_arquivo}.fake.mdf"
    fake_mdf_path.write_bytes(fake_mdf)

    seed = f"{KEY}{nome_arquivo}.txt.scn.m"
    result2 = subprocess.run(
        [str(EMT_CONVERT), "mdf", "-r", "-s", seed, "-l", KEY_LEN, str(fake_mdf_path)],
        capture_output=True, text=True, cwd=BASE
    )
    time.sleep(0.2)

    converted_path = BASE / f"{nome_arquivo}.fake.converted.mdf"
    if not converted_path.exists():
        log(f"  ERRO: EmtConvert nao gerou {converted_path.name}")
        log(f"    stdout: {result2.stdout.strip()}")
        log(f"    stderr: {result2.stderr.strip()}")
        for tmp in [pure_scn, fake_mdf_path]:
            try:
                tmp.unlink()
            except Exception:
                pass
        return None

    final_bytes = converted_path.read_bytes()

    for tmp in [pure_scn, fake_mdf_path, converted_path]:
        try:
            tmp.unlink()
        except Exception:
            pass

    return final_bytes


# ===================== RECONSTRUIR O BODY =====================

def reconstruir_body(info_original, chunks_finais):
    new_body = bytearray()
    new_index = {}

    for nome in info_original["file_info"].keys():
        if nome not in chunks_finais:
            raise RuntimeError(f"'{nome}' do indice nao tem chunk - abortando para nao gerar body corrompido")

        chunk = chunks_finais[nome]
        new_index[nome] = [len(new_body), len(chunk)]
        new_body.extend(chunk)

    return bytes(new_body), new_index


# ===================== CARREGAR JSONS TRADUZIDOS =====================

def carregar_jsons_traduzidos(pasta, rotulo, arquivos_com_erro):
    """Retorna {nome_arquivo: dados}. O nome vem do campo 'arquivo' do JSON."""
    resultado = {}
    if not pasta.exists():
        return resultado
    for p in sorted(pasta.glob("*.json")):
        try:
            dados = json.loads(p.read_text(encoding="utf-8-sig"))
        except Exception as e:
            log(f"  [ERRO] {rotulo} {p.name}: JSON invalido ({e})")
            arquivos_com_erro.append(p.stem)
            continue
        nome = dados.get("arquivo", p.stem.replace("_ptbr", ""))
        resultado[nome] = dados
    return resultado


# ===================== MAIN =====================

def ler_filtro_cli():
    """
    --so NOME1 NOME2 ...   processa apenas esses arquivos (teste rapido)
    + chaves de teste: --sem-escolhas --sem-pergunta --sem-selects --manter-textlength
    """
    args = sys.argv[1:]
    filtro = None
    i = 0
    while i < len(args):
        a = args[i]
        if a == "--so":
            filtro = set()
            i += 1
            while i < len(args) and not args[i].startswith("--"):
                filtro.add(args[i].replace(".json", "").replace(".txt", ""))
                i += 1
            continue
        if a == "--sem-escolhas":
            OPCOES["sem_escolhas"] = True
        elif a == "--sem-pergunta":
            OPCOES["sem_pergunta"] = True
        elif a == "--sem-selects":
            OPCOES["sem_selects"] = True
        elif a == "--manter-textlength":
            OPCOES["manter_textlength"] = True
        i += 1
    return filtro


def main():
    filtro = ler_filtro_cli()
    info_json_path = sanity_checks()

    if filtro is not None:
        log(f"\n*** MODO TESTE: processando apenas {sorted(filtro)} ***")
    ativas = [k for k, v in OPCOES.items() if v]
    if ativas:
        log(f"*** CHAVES DE TESTE ATIVAS: {ativas} ***")

    log("\n" + "=" * 70)
    log("PASSO 1 - Carregando indice original do scenario")
    log("=" * 70)
    info_original = json.loads(info_json_path.read_text(encoding="utf-8"))
    log(f"  Indice carregado: {info_json_path}")
    log(f"  Total de arquivos no indice: {len(info_original['file_info'])}")

    body_original_path = BASE / "scenario_body.bin"
    if not body_original_path.exists():
        log(f"\nERRO: nao encontrei {body_original_path}")
        log("Coloque uma copia do scenario_body.bin original em D:\\freemote\\")
        salvar_log()
        raise SystemExit(1)
    body_original = body_original_path.read_bytes()
    log(f"  scenario_body.bin original: {len(body_original)} bytes")

    tamanho_esperado = max(off + size for off, size in info_original["file_info"].values())
    if len(body_original) != tamanho_esperado:
        log(f"\nERRO: scenario_body.bin tem {len(body_original)} bytes, mas o indice espera {tamanho_esperado}.")
        log("Esse nao parece ser o body ORIGINAL do jogo. Restaure o original")
        log("(Steam > Verificar integridade dos arquivos) e copie de novo pra D:\\freemote\\.")
        salvar_log()
        raise SystemExit(1)

    log("\n" + "=" * 70)
    log("PASSO 2 - Lendo arquivos traduzidos (dialogos + escolhas)")
    log("=" * 70)

    arquivos_com_erro = []
    dialogos_por_nome = carregar_jsons_traduzidos(TRADUZIDOS, "dialogos", arquivos_com_erro)
    escolhas_por_nome = carregar_jsons_traduzidos(ESCOLHAS_DIR, "escolhas", arquivos_com_erro)
    log(f"  Dialogos traduzidos: {len(dialogos_por_nome)} arquivo(s) em {TRADUZIDOS.name}\\")
    log(f"  Escolhas traduzidas: {len(escolhas_por_nome)} arquivo(s) em {ESCOLHAS_DIR.name}\\")

    nomes = sorted(set(dialogos_por_nome) | set(escolhas_por_nome))

    chunks_finais = {}
    total_dialogos_aplicados = 0
    total_dialogos_pulados = 0
    total_escolhas_aplicadas = 0
    arquivos_processados = []
    arquivos_parciais = []
    arquivos_desalinhados = []
    arquivos_com_aviso_escolha = []

    # 2a. Preenche TODOS os arquivos do indice com o chunk ORIGINAL
    for nome, (offset, size) in info_original["file_info"].items():
        chunks_finais[nome] = body_original[offset: offset + size]

    # 2b. Processa cada arquivo que tenha dialogos E/OU escolhas traduzidos
    total_arqs = len(nomes)
    for i, nome_arquivo in enumerate(nomes, 1):
        if filtro is not None and nome_arquivo not in filtro:
            continue

        dados_trad = dialogos_por_nome.get(nome_arquivo)
        dados_esc = escolhas_por_nome.get(nome_arquivo)
        chave_indice = f"{nome_arquivo}.txt"

        if chave_indice not in info_original["file_info"]:
            log(f"  [{i}/{total_arqs}] [ERRO] {nome_arquivo}: '{chave_indice}' nao existe no indice do scenario")
            arquivos_com_erro.append(nome_arquivo)
            continue

        dialogos = dados_trad.get("dialogos", []) if dados_trad else []
        entradas_esc = dados_esc.get("dialogos", []) if dados_esc else []
        if OPCOES["sem_escolhas"]:
            entradas_esc = []

        com_traducao = sum(1 for d in dialogos if (d.get("texto_ptbr") or "").strip())
        esc_com_traducao = sum(1 for d in entradas_esc if (d.get("texto_ptbr") or "").strip())

        if com_traducao == 0 and esc_com_traducao == 0:
            log(f"  [{i}/{total_arqs}] [PULADO] {nome_arquivo}: nada traduzido (dialogos nem escolhas)")
            continue

        if dados_trad and 0 < com_traducao < len(dialogos):
            log(f"  [{i}/{total_arqs}] [AVISO] {nome_arquivo}: so {com_traducao}/{len(dialogos)} dialogos com texto_ptbr")
            arquivos_parciais.append(f"{nome_arquivo} ({com_traducao}/{len(dialogos)})")

        json_original_path = encontrar_json_original(nome_arquivo)
        if json_original_path is None:
            log(f"  [{i}/{total_arqs}] [ERRO] {nome_arquivo}: nao encontrei o JSON original em _json\\")
            arquivos_com_erro.append(nome_arquivo)
            continue

        resx_path_original = encontrar_resx_json(json_original_path)
        if resx_path_original is None:
            log(f"  [{i}/{total_arqs}] [AVISO] {nome_arquivo}: nao encontrei o .resx.json correspondente "
                f"(PsBuild pode falhar sem ele)")

        dados_originais = json.loads(json_original_path.read_text(encoding="utf-8"))

        # ---- dialogos
        dados_modificados = dados_originais
        aplicados = 0
        pulados = 0
        if com_traducao > 0:
            dados_modificados, aplicados, pulados = aplicar_traducao_no_json(
                dados_originais, dialogos
            )
            total_no_molde = aplicados + pulados
            if total_no_molde != len(dialogos):
                log(f"  [{i}/{total_arqs}] [ALERTA] {nome_arquivo}: o molde tem {total_no_molde} dialogos "
                    f"mas o JSON traduzido tem {len(dialogos)}. Ids desalinhados - arquivo NAO aplicado "
                    f"(fica em EN).")
                arquivos_desalinhados.append(nome_arquivo)
                continue

        # ---- escolhas
        esc_aplicadas = 0
        if esc_com_traducao > 0:
            esc_aplicadas, avisos_esc = aplicar_escolhas_no_json(dados_modificados, entradas_esc, OPCOES)
            for a in avisos_esc:
                log(f"    [AVISO escolhas] {nome_arquivo}: {a}")
            if avisos_esc:
                arquivos_com_aviso_escolha.append(nome_arquivo)

        if aplicados + esc_aplicadas == 0:
            log(f"  [{i}/{total_arqs}] [PULADO] {nome_arquivo}: nada foi aplicado (veja os avisos acima)")
            continue

        total_dialogos_aplicados += aplicados
        total_dialogos_pulados += pulados
        total_escolhas_aplicadas += esc_aplicadas

        json_temp_path = BASE / f"_tmp_{json_original_path.name}"
        json_temp_path.write_text(
            json.dumps(dados_modificados, ensure_ascii=False, indent=2),
            encoding="utf-8"
        )

        log(f"  [{i}/{total_arqs}] Processando {nome_arquivo}: {aplicados} dialogos, "
            f"{esc_aplicadas} escolhas traduzidos, {pulados} dialogos mantidos em EN...")

        chunk_final = recompilar_e_encriptar(nome_arquivo, json_temp_path, resx_path_original)

        json_temp_path.unlink(missing_ok=True)

        if chunk_final is None:
            log(f"    [ERRO] {nome_arquivo}: falha ao recompilar/encriptar")
            arquivos_com_erro.append(nome_arquivo)
            continue

        chunks_finais[chave_indice] = chunk_final
        arquivos_processados.append(nome_arquivo)
        log(f"    OK -> {len(chunk_final)} bytes")

    log("\n" + "=" * 70)
    log("PASSO 3 - Reconstruindo scenario_body.bin")
    log("=" * 70)
    novo_body, novo_index = reconstruir_body(info_original, chunks_finais)

    novo_body_path = BASE / "scenario_body_ptbr.bin"
    novo_body_path.write_bytes(novo_body)
    log(f"  Salvo: {novo_body_path.name} ({len(novo_body)} bytes)")

    novo_info = dict(info_original)
    novo_info["file_info"] = novo_index
    novo_info_json_path = BASE / "scenario_info_ptbr.psb.m.json"
    novo_info_json_path.write_text(
        json.dumps(novo_info, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    log(f"  Salvo: {novo_info_json_path.name}")

    sem_arquivo = []
    if filtro is None:
        nomes_com_arquivo = {f"{n}.txt" for n in dialogos_por_nome}
        for chave in info_original["file_info"].keys():
            if chave.endswith(".txt") and chave.startswith(PREFIXOS_DIALOGO):
                if chave not in nomes_com_arquivo:
                    tam = info_original["file_info"][chave][1]
                    sem_arquivo.append(f"{chave[:-4]} ({tam} bytes)")

    log("\n" + "=" * 70)
    log("RESUMO")
    log("=" * 70)
    log(f"  Arquivos processados com sucesso: {len(arquivos_processados)}")
    log(f"  Arquivos com erro: {len(arquivos_com_erro)}")
    for a in arquivos_com_erro:
        log(f"    - {a}")
    log(f"  Total de dialogos traduzidos aplicados: {total_dialogos_aplicados}")
    log(f"  Total de dialogos mantidos em EN (sem traducao): {total_dialogos_pulados}")
    log(f"  Total de caixas de escolha traduzidas aplicadas: {total_escolhas_aplicadas}")

    if arquivos_desalinhados:
        log(f"\n  ATENCAO - {len(arquivos_desalinhados)} arquivo(s) com ids desalinhados (nao aplicados):")
        for a in arquivos_desalinhados:
            log(f"    - {a}")
    if arquivos_com_aviso_escolha:
        log(f"\n  {len(arquivos_com_aviso_escolha)} arquivo(s) com avisos nas escolhas (veja o log):")
        for a in arquivos_com_aviso_escolha:
            log(f"    - {a}")
    if arquivos_parciais:
        log(f"\n  {len(arquivos_parciais)} arquivo(s) parcialmente traduzidos:")
        for a in arquivos_parciais:
            log(f"    - {a}")
    if sem_arquivo:
        log(f"\n  {len(sem_arquivo)} arquivo(s) de dialogo do jogo SEM JSON traduzido (ficam em EN):")
        for a in sem_arquivo:
            log(f"    - {a}")

    log("\n" + "=" * 70)
    log("PROXIMO PASSO")
    log("=" * 70)
    log("  Rode:  finalizar_patch.bat")
    log("  (ele reempacota o indice e copia os 2 arquivos finais para 'para ir para o jogo\\')")

    salvar_log()
    log(f"\nLog completo salvo em: {LOG_PATH}")


if __name__ == "__main__":
    main()
