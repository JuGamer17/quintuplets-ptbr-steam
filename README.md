# 🇧🇷 Tradução PT-BR — The Quintessential Quintuplets: Five Memories Spent With You

Tradução para Português do Brasil da visual novel **5等分の花嫁 ∬ ~五つ子ちゃんはパズルを五等分できない~** (The Quintessential Quintuplets: Five Memories Spent With You).

> ⚠️ **Tradução automática** — Feita via Google Translate inicialmente, agora melhorada com IA mas ainda podendo haver erros.

## 📊 Status da Tradução

| Conteúdo | Status | Quantidade |
|----------|--------|------------|
| Diálogos (cenários) | ✅ Traduzido | ~29.000 linhas (360 cenários) |
| Interface (menus/botões) | ✅ Traduzido | 123 textos |
| Conquistas | ✅ Traduzido | 26 conquistas |
| Scripts (.nut) | Não nescessario | Não a texti neles |
| Legendas de vídeo | ✅ Traduzido |  Traduzido os videos de Okinawa que estavam no body |


## | Adento da futura situação desse fork |

Traduzido quase completamente o jogo, interface fica por meios de textura e o que vôs escreve aqui não possui abilidades suficientes para editar elas, fiz apenas com os do menu inicial e nem ficou tão bom, caso queira contribuir editando as texturas entre em contado por uma Issue.

## 📥 Instalação

### Linux / Steam Deck
```bash
git clone https://github.com/nerdseverino/quintuplets-ptbr.git
cd quintuplets-ptbr/Linux
chmod +x instalar.sh
./instalar.sh "/caminho/para/The.Quintessential.Quintuplets.Five.Memories.Spent.With.You"
```

### Windows
1. Baixe o arquivo [Instalar_Traducao_PTBR_Gotoubun_Five_Memories.exe](https://github.com/JuGamer17/quintuplets-ptbr-steam/releases/tag/1.0) e execute-o.
2. É possivel que o Windows reclame pr ser um .exe não verificado, apenas selecione para executar mesmo assim, e caso não se sinta confortavel com isso pode ver o codigo do instalador [Aqui](/Windows/instalador/Instalador_Traducao_PTBR.iss).
3. Selecione a pasta do jogo (E para ser pego automaticamente caso baixado pela Steam).
4. Instale e abra o jogo.

### Em caso de o jogo não abrir

Em caso de erro ou tela preta va na pasta do jogo, excula os arquivos modificados(Os que tem o mesmo nome que os arquivos .original), e remova o .original que são os arquivos de backup, ou repare os arquivos pela Steam, após isso abra uma [Issue](../../issues) com:
- Sistena operacional
- Se é versão steam ou pirata
- Se é em parte expecifica ou logo ao abrir.

### Como usar
Selecione **English** no menu de idiomas do jogo. O texto aparecerá em português.

> A tradução substitui o texto inglês. Não é criado um idioma novo no menu.

## 🤝 Como Contribuir

A tradução automática tem limitações — nomes de personagens, expressões idiomáticas e contexto podem estar incorretos. Sua ajuda é essencial!

### Reportar erros de tradução
Abra uma [Issue](../../issues) com:
- Captura de tela do texto incorreto
- Cenário/capítulo onde aparece
- Sugestão de tradução correta

### Contribuir com correções
1. Fork este repositório
2. Os arquivos de tradução estão [aqui](/todos%20os%20dialogos/Todos%20os%20arquivos%20de%20dialogos/) no caso de dialogos e [aqui](/todos%20os%20dialogos/Todos%20os%20arquivos%20de%20escolhas/) no caso de escolhas.
3. Corrija as entradas necessárias
4. Abra um Pull Request

### Prioridades
- [ ] Revisar nomes próprios (personagens, lugares)
- [ ] Corrigir expressões idiomáticas japonesas traduzidas literalmente
- [ ] Revisar contexto de falas românticas/emocionais
- [ ] Traduzir texturas dos menus(não disponiveis no repositório)


## 🔧 Detalhes Técnicos

- Engine: M2/EMote (arquivos PSB criptografados)
- Ferramenta: [FreeMote](https://github.com/UlyssesWu/FreeMote) v4.4.1
- Chave de criptografia: `523aad2de7132`
- Método: Substituição direta na string table dos PSBs

## 📋 Desinstalar
- No linux:
O script de instalação cria backups automáticos (`.bkp-TIMESTAMP`).
Para reverter, renomeie os backups removendo o sufixo.

- No windows/steam
Repare os arquivos pela steam, caso não for steam apenas remova os arquivos modificados e remova o .original dos backups.

## 📜 Créditos

- Tradução automática: Google Translate via [deep-translator](https://github.com/nidhaloff/deep-translator)
- Tradução nova: Via Claude, modelo Sonnet 4.5 a 5.5 pensamento Alto.
- Extração/reempacotamento: [FreeMote](https://github.com/UlyssesWu/FreeMote)
- Claude Sonnet 4.5 a 5.5: sem ele eu não teria feito nada.
- Fontes do jogo já suportam caracteres acentuados (NotoSans, Tsukugo, Humming)
