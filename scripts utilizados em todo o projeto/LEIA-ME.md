# Scripts utilizados em todo o projeto

Tradução PT-BR de **The Quintessential Quintuplets – Five Memories Spent With You** (Gotoubun no Hanayome, Steam, AppID 2507620).

Os arquivos estão **numerados na ordem de uso**. Este LEIA-ME explica o que cada um faz, o que entra, o que sai e quais passos são manuais (comandos digitados à mão).

> Este repositório **não guarda arquivos do jogo**. A distribuição é feita por patches binários dentro do instalador (veja a Parte D).

---

## Como usar

- Os scripts foram escritos para rodar em **`D:\freemote\`** (eles usam a própria pasta onde estão como base). Para executar um deles, copie-o para essa pasta e **remova o prefixo numérico**.
  Exemplo: `06_aplicar_traducoes_do_git.py` → `aplicar_traducoes_do_git.py`.
- `05a_escolhas_util.py` precisa virar **`escolhas_util.py`**, porque os outros scripts o importam por esse nome.
- Ferramentas externas, na mesma pasta: **FreeMote** (`PsbDecompile.exe`, `PsBuild.exe`, `EmtConvert.exe`) e **`xdelta3-3.0.11-x86_64.exe`**. Para compilar o instalador: **Inno Setup 6**.
- Tamanhos dos **originais** do jogo, para conferir se o arquivo está limpo: `scenario_body.bin` = 9.973.533 bytes · `motion_body.bin` = 65.101.503 bytes · `config_body.bin` = 50.600 bytes. Se o tamanho for outro, restaure pela Steam (*Verificar integridade dos arquivos*).

## Mapa: número → nome original em `D:\freemote`

| Nº | Arquivo | Nome original | O que faz |
|---|---|---|---|
| 01 | `01_extrair_chunks.ps1` | `1_extrair_chunks.ps1` | Corta o `scenario_body.bin` em um arquivo por cena (`_chunks\`) |
| 02 | `02_descriptografar_chunks.bat` | `2_descriptografar.bat` | Descriptografa cada chunk (`_decrypted\`) |
| 03 | `03_decompilar_para_json.bat` | `3_decompile.bat` | Converte cada cena em JSON (`_json\`, os "moldes") |
| 04 | `04_extrair_dialogos_en.py` | `Scripts\extrair_dialogos_en.py` | Gera os JSONs de tradução dos diálogos |
| 05a | `05a_escolhas_util.py` | `escolhas_util.py` | Módulo que localiza as caixas de escolha |
| 05b | `05b_extrair_escolhas.py` | `extrair_escolhas.py` | Gera os JSONs de tradução das caixas de escolha |
| 06 | `06_aplicar_traducoes_do_git.py` | `aplicar_traducoes_do_git.py` | Aplica diálogos + escolhas e remonta o `scenario_body` |
| 07 | `07_finalizar_patch.bat` | `finalizar_patch.bat` | Remonta o `scenario_info` e gera os 2 arquivos finais |
| 08 | `08_testar_tu01.bat` | `testar_tu01.bat` | Ferramenta de teste rápido só com o `tu_01` |
| 09 | `09_config_extrair_textos.py` | `Scripts\extrair_textos_config.py` | Extrai os textos do config para tradução |
| 10 | `10_config_aplicar_traducao.py` | `Scripts\config_aplicar_pt.py` | Aplica a tradução (CSV) nos JSONs do config |
| 11 | `11_config_fix_text_arrays.py` | `Scripts\fix_text_arrays.py` | Ajusta os arrays do JSON de texto traduzido |
| 12 | `12_config_rebuild_text_manual.py` | `Scripts\rebuild_text_manual.py` | Monta o `text_ptbr.psb.m` |
| 13 | `13_config_rebuild_body_final.py` | `Scripts\rebuild_body_final.py` | Monta o `config_body_final.bin` |
| 14 | `14_config_patch_info_final.py` | `Scripts\patch_info_final.py` | Gera o `config_info_final.psb.m` |
| 15 | `15_motion_reconstruir_body.py` | `reconstruir_motion_body.py` | Recoloca o `gamemode` traduzido no `motion_body.bin` |
| 16 | `16_gerar_patches_xdelta.bat` | *(reúne comandos manuais)* | Gera os 6 patches `.xdelta` |
| 17 | `..\Windows\instalador\Instalador_Traducao_PTBR.iss` | `instalador\Instalador_Traducao_PTBR.iss` | Script do instalador (Inno Setup). **Fica fora desta pasta**, junto com a `images\` |

> Os passos **01, 02 e 03** são versões **compactas**. Os originais eram gerados automaticamente, com um bloco por arquivo e os offsets escritos à mão (355 blocos, 28 a 90 KB cada). As entradas e saídas são as mesmas. Os originais continuam arquivados em `Windows\Scripts_Usados\Scripts_usados_no_scenario`.
>
> **Validação:** comparados byte a byte com a saída dos scripts originais, os 355 chunks, os 355 PSB e os 710 arquivos de `_json` (`.json` + `.resx.json`) saíram idênticos, com uma única exceção: `ca01_mv5_02`. O molde antigo desse arquivo estava **já traduzido** (sobra da primeira rodada, com o `translation_cache.json`) e com os `seed` numéricos truncados; o novo é o original limpo, em inglês, e coincide com o da extração do jogo (9 cenas, 63 diálogos EN, tamanho de 179.228 bytes igual ao do cabeçalho do chunk). Todos os outros 354 moldes antigos eram limpos.

---

## Parte A – Diálogos e caixas de escolha (scenario)

**Passo 0 (manual)** – extrair o índice e as cenas do jogo. O comando usado no motion foi:
```
PsbDecompile.exe info-psb -k 523aad2de7132 -l 131 -b "<jogo>\windata\scenario_body.bin" "<jogo>\windata\scenario_info.psb.m" -o output_scenario
```
Ele gera `output_scenario\scenario\*.scn.m.json` e o `scenario_info.psb.m.json`, que o `01` espera na raiz. Não há registro separado do comando exato do scenario; o formato é o mesmo do motion.

**Ordem:**
1. `01` → `02` → `03` geram os moldes em `_json\` (cada molde precisa do `.resx.json` ao lado; o `03` já copia os `.resx.json` de `_decrypted\` para `_json\`, e o `06` os usa temporariamente com o PsBuild).
2. `04` lê `output_scenario\scenario\` e grava `dialogos_para_traduzir\NOME.json`.
3. **Tradução** (colaboradores + IA): preencher `texto_ptbr`. Os prontos vão para `Todos arquivos traduzidos\`.
4. `05b` varre `_json\` e grava `escolhas_para_traduzir\NOME.json` (só os arquivos que têm escolhas). "Yes/No" já saem como "Sim/Não" e a pergunta (`selectInfo`) é copiada do diálogo igual. Depois de traduzidos, os JSONs vão para `escolhas_traduzidas\`.
5. `06` aplica tudo (`python aplicar_traducoes_do_git.py`; para teste: `--so tu_01`).
6. `07` (`finalizar_patch.bat`) gera `scenario_body.bin` e `scenario_info.psb.m` em `para ir para o jogo\`.

**Formato dos JSONs de tradução** (diálogos e escolhas): `{"arquivo", "total", "dialogos": [{"id", "personagem", "texto_en", "texto_ptbr", ...}]}`.

**Histórico:** a primeira rodada usou um cache `translation_cache.json` (EN→PT, 29.331 entradas, cobrindo cerca de 88% dos diálogos), aplicado pelo fluxo "tudo em um" antigo (`traduzir_gotoubun.py`, arquivado). O restante foi traduzido pelos colaboradores, no formato dos JSONs acima. O repositório de referência usado no início foi o do nerdseverino: https://github.com/nerdseverino/quintuplets-ptbr.

---

## Parte B – Config (menus de configuração)

**Diagnóstico (registrado em junho):** recompilar os 28 arquivos do config com o PsBuild gerava um body que **travava o jogo** (o body original sem modificações funcionava). O motor é rígido com o formato. A solução foi **manter os chunks originais de todos os arquivos e trocar só o `text`** (o único com texto traduzido). É exatamente o que o `13` faz.

> ⚠️ Os scripts **09 a 14** estão na ordem deduzida pelos nomes de saída e pelos cabeçalhos. Eles geram `config_body_final.bin` e `config_info_final.psb.m`, que correspondem aos arquivos que foram para o jogo. As tentativas anteriores (`config_body_minimal`, `fix_minimal`, `patch_xor_*` etc.) estão em `D:\freemote\Scripts`, fora do repositório.

**Passo 0 (manual)** – extração do config, registrada no contexto de junho:
```
PsbDecompile info-psb -k 523aad2de7132 -l 131 -a config_info.psb.m -o output_config
```
Gera os 28 arquivos `*.psb.m.json` em `output_config\config\`. Só o `text.psb.m.json` tem texto traduzível.

**Ordem:**
1. `09` extrai os textos para `config_textos_para_traduzir.json`.
2. Tradução num CSV (`config_traducao.csv`, colunas `arquivo|chave|indice|texto_en|traducao_pt`).
3. `10` aplica o CSV nos JSONs de `output_config\config\`. (Esse script também tentou montar `config_body_ptbr.bin` sozinho, via PsBuild, o que travava o jogo. O que foi para o jogo é montado pelos passos 12–14.)
4. `11` ajusta os arrays do JSON de texto traduzido.
5. **Manual:** compilar o JSON de texto com o `PsBuild` (veja os comentários dentro de cada script).
6. `12` → `13` → `14` montam o texto, o body e o info.
7. Os arquivos finais foram copiados para `para ir para o jogo\` como `config_body.bin` e `config_info.psb.m`.

---

## Parte C – Motion (`gamemode.psb.m`, menu de título)

Só o `gamemode` foi editado; os outros 37 arquivos do `motion_body.bin` ficam como estão.

**Extração (manual):**
```
PsbDecompile.exe info-psb -k 523aad2de7132 -l 131 -b "<jogo>\windata\motion_body.bin" "<jogo>\windata\motion_info.psb.m" -o output_motion
PsbDecompile.exe img -o output_title\gamemode.psb.m output_motion\motion\gamemode.psb.m
```

**Edição:** as texturas `text_en#000-texture.png` (1024×1024) e `text_en#001-texture.png` (1024×256) e as coordenadas em `gamemode.psb.m.json` (seções `image` e `source`, blocos `text_en#000` e `text_en#001`). Notas técnicas em "Armadilhas".

**Recompilação (manual), repetida a cada ajuste:**
```
PsBuild.exe output_title\gamemode.psb.m\gamemode.psb.m.json
EmtConvert.exe pack -s MDF -o gamemode_mdfN.psb.m gamemode.psb.m.pure.psb
EmtConvert.exe mdf -r -s 523aad2de7132gamemode.psb.m -l 131 gamemode_mdfN.psb.m
```
Isso gera `gamemode_mdfN.psb.converted.mdf`. Ajuste `GAMEMODE_NOVO_PATH` dentro do `15` para esse nome e rode `python reconstruir_motion_body.py` (gera `motion_body_ptbr.bin` e `motion_info_ptbr.psb.m.json`). Depois, o índice:
```
PsBuild.exe motion_info_ptbr.psb.m.json
EmtConvert.exe pack -s MDF -o motion_info_mdfN.psb.m motion_info_ptbr.psb.m.psb
EmtConvert.exe mdf -r -s 523aad2de7132motion_info.psb.m -l 131 motion_info_mdfN.psb.m
copy /y motion_info_mdfN.psb.converted.mdf motion_info_ptbr.psb.m
```
Por fim, copiar `motion_body_ptbr.bin` e `motion_info_ptbr.psb.m` para `para ir para o jogo\` como `motion_body.bin` e `motion_info.psb.m`.

---

## Parte D – Instalador

O instalador fica em **`Windows\instalador\`** (fora desta pasta), junto com a pasta `images\`.

1. Passo 16: gera `patches\*.xdelta` (original × traduzido) em `D:\freemote\patches\`. Requer os 6 originais em `backups\arquivos jogo original\` (use *Steam › Verificar integridade* antes) e os 6 traduzidos em `para ir para o jogo\`.
2. Abrir `Windows\instalador\Instalador_Traducao_PTBR.iss` no Inno Setup 6 e compilar (F9). O `.exe` sai na pasta definida em `OutputDir` no `.iss` (hoje `D:\freemote\instalador\output`).

O `.iss` precisa, **só na hora de compilar**, de:
- `images\` ao lado do `.iss` (`logo.ico`, `logo_55/69/83/110.png`, `fundo_gradiente.png`, `lateral.png`; os caminhos são relativos);
- `D:\freemote\xdelta3-3.0.11-x86_64.exe` e `D:\freemote\patches\*.xdelta` (caminhos absolutos no `.iss`).

Os recursos ficam embutidos no `.exe`; quem instala não precisa de nada disso.

**Como o instalador funciona:** localiza a pasta `windata` pela Steam (registro do usuário → `libraryfolders.vdf` → `appmanifest_2507620.acf`, com plano B pela chave de desinstalação) e, se não achar, o usuário escolhe a pasta. Faz backup `.original` de cada arquivo e aplica os patches com o `xdelta3`. Rodar de novo usa sempre o backup como base. Só os patches são distribuídos, nunca os arquivos originais do jogo.

---

## Notas técnicas

**Formato dos arquivos do jogo:** todos são MDF (M2 Data File): cabeçalho `"mdf\0"` + `uint32` little-endian com o tamanho original + ZLIB do conteúdo, tudo criptografado com XOR MT19937. Os `*_info.psb.m` guardam o índice `{"file_info": {"nome": [offset, tamanho], ...}}` do `*_body.bin`.

**Chave:** `523aad2de7132`, tamanho `131`, shell `MDF`.

**Seed de criptografia = chave + nome do arquivo:**

| Arquivo | Seed |
|---|---|
| Cena do scenario | `523aad2de7132ca01_01.txt.scn.m` |
| Índice do scenario | `523aad2de7132scenario_info.psb.m` |
| Arquivo do config | `523aad2de7132text.psb.m` (exemplo: `text`) |
| Índice do config | `523aad2de7132config_info.psb.m` |
| Índice do motion | `523aad2de7132motion_info.psb.m` |
| `gamemode` (dentro do motion) | `523aad2de7132gamemode.psb.m` |

**Comportamento das ferramentas:**
- `EmtConvert mdf` **sem** `-r` descriptografa; **com** `-r` criptografa.
- O PsBuild gera `NOME.pure.scn` para as cenas e `.psb.m` já em MDF para os arquivos do config. Para o `gamemode` e os índices do motion/scenario, gera um PSB comum (`.pure.psb` / `.psb`), que precisa de `EmtConvert pack -s MDF` antes do `mdf -r`.
- `EmtConvert mdf` e `PsbDecompile` gravam a saída **ao lado do arquivo de entrada** (ex.: `_chunks\NOME.txt.decompressed.psb`, `_decrypted\NOME.txt.json`). O PsBuild grava na pasta de trabalho (`D:\freemote`). Nos testes do motion, o `-o` do `EmtConvert pack` funcionou. Confira onde o arquivo saiu.
- Rode `Set-ExecutionPolicy Bypass` no PowerShell antes dos `.ps1`.

**Comandos úteis:**
```
certutil -dump ARQUIVO | findstr "0000  "        (cabeçalho de um MDF deve começar com 6d 64 66 00)
certutil -hashfile ARQUIVO MD5
PsbDecompile info-psb -k 523aad2de7132 -l 131 -b BODY INFO -o PASTA    (confere se a tradução entrou no body)
```

---

## Regras de tradução do config

- Manter intactos: `%C`, `%%C`, `%s`, `${dialog}`, `${needspace}`, `${error}`.
- Manter `\n` como quebra de linha.
- Não traduzir nomes próprios (Ichika, Nino, Miku, Yotsuba, Itsuki, Raiha).
- **Não alterar** `LANG_BASE` e `LANG_ID` (ficam `_en` e `en`) nem `GAME_TITLE`.
- "Visual novel" = *assistir* (ex.: `YESNO_SCENARIO_JUMP` = "Assistir este cenário?").
- Turnos do dia: `TIME_TEXT1..4` = MAN / TAR / ENT / NOI.
- Finais: `[Rota %s] Final Normal`, `[Rota %s] Final Bom`, `[Rota com Todas] [%s] Final Bom`.
- Ortografia: "sobrescrever" (um só *e*), "usuário", "memória", "possível".

---

## Armadilhas aprendidas

- **`finalizar_patch.bat` velho → tela preta na abertura.** A versão antiga procurava um `.psb.MDF` que o PsBuild não gera mais e pegava um arquivo de junho, criando um índice com offsets de outro build. A versão atual (`07`) apaga os intermediários e usa `pack -s MDF`. Se o jogo travar no carregamento depois de trocar os arquivos, desconfie primeiro do índice.
- **Testar em instalação limpa.** Rode *Verificar integridade* na Steam antes de cada teste e copie sempre os dois arquivos juntos (`*_body.bin` e `*_info.psb.m`).
- **Caixas de escolha:** só `language[1].text` e `language[1].textlength` (em caracteres) são alterados. `searchtext`, `speechtext`, `selidx`, `storage`, `target`, `render` e `text` ficam intactos. Entradas com `{UNTRANSLATED}dummy` são opções falsas do jogo e ficam em branco. **Validado no jogo**, na versão completa e no instalador compilado.
- **Descrições do menu (`txmd`):** a ordem real é a do campo `time` no `frameList` do `text_dummy` (`time` 20 = CONTINUAR, 21 = CARREGAR RÁPIDO, 22 = OPÇÕES, 23 = CG, 24 = CENAS, 25 = FILMES, 26 = SOM, 27 = MANUAL), **não** a posição vertical na textura.
- **Texto borrado em CENAS/FILMES:** em `text_en#001`, manter o texto na mesma faixa vertical que o original ocupava (≈ y 160–220). Fora dela o botão ficava com opacidade baixa dentro do jogo.
- **Acentos (Ç, Õ, Ã):** a seleção do recorte precisa cobrir til e cedilha por inteiro, senão aparecem artefatos.
- **Mudou scenario, config ou motion?** Rode o passo 16 de novo e recompile o instalador.

---

## Onde estão os outros scripts

- `Windows\Scripts_Usados\` – versões das primeiras etapas, inclusive o `traduzir_gotoubun.py` (fluxo "tudo em um" com `translation_cache.json`), `5_preparar_e_encriptar.py`, `6_reempacotar_info.py` e os scripts do `body`/subtítulos.
- `D:\freemote\Scripts\` – cerca de 60 scripts de experimentos e testes (não estão no repositório).
