# 🇧🇷 Tradução PT-BR — The Quintessential Quintuplets: Five Memories Spent With You

Tradução para Português do Brasil da visual novel **5等分の花嫁 ∬ ~五つ子ちゃんはパズルを五等分できない~** (The Quintessential Quintuplets: Five Memories Spent With You).

> ⚠️ **Tradução automática** — Feita via Google Translate. Contribuições para melhorar a qualidade são muito bem-vindas!

## 📊 Status da Tradução

| Conteúdo | Status | Quantidade |
|----------|--------|------------|
| Diálogos (cenários) | ✅ Traduzido | ~29.000 linhas (360 cenários) |
| Interface (menus/botões) | ✅ Traduzido | 123 textos |
| Conquistas | ✅ Traduzido | 26 conquistas |
| Scripts (.nut) | ❌ Pendente | Pode ter texto hardcoded |
| Legendas de vídeo | ❌ Pendente | Arquivos de subtitle |
| Sobre as legendas | Traduzido os videos de Okinawa que estavam no body |

## | Adento da futura situação desse fork |

Vou ver agora de traduzir os .nut, e um outro amigo meu vai arrumar os dialogos, então fiquem na espera dos proximos capitulos.

## 📥 Instalação

### Linux / Steam Deck
```bash
git clone https://github.com/nerdseverino/quintuplets-ptbr.git
cd quintuplets-ptbr
chmod +x instalar.sh
./instalar.sh "/caminho/para/The.Quintessential.Quintuplets.Five.Memories.Spent.With.You"
```

### Windows (manual)
1. Baixe os arquivos de `steam ou windows/windata/` aqui do GitHub
2. Se sua versão for de meios navais, recomendo fazer backup dos arquivos que serão substituidos.
3. Copie os arquivos de `windata/` para a pasta `windata/` do jogo (substituindo os originais)
4. Abra o jogo e pronto.

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
2. O cache de tradução está em `translation_cache.json` (formato `"inglês": "português"`)
3. Será criado furamente uma pasta com cada cena separada, com todos os textos em ingles para futura tradução melhorada, se ainda não tiver aguarde.
4. Corrija as entradas necessárias
5. Abra um Pull Request

### Prioridades
- [ ] Revisar nomes próprios (personagens, lugares)
- [ ] Corrigir expressões idiomáticas japonesas traduzidas literalmente
- [ ] Revisar contexto de falas românticas/emocionais
- [ ] Traduzir scripts `.nut` (texto hardcoded na UI)
- [ ] Traduzir legendas de vídeo

## 🔧 Detalhes Técnicos

- Engine: M2/EMote (arquivos PSB criptografados)
- Ferramenta: [FreeMote](https://github.com/UlyssesWu/FreeMote) v4.4.1
- Chave de criptografia: `523aad2de7132`
- Método: Substituição direta na string table dos PSBs

## 📋 Desinstalar
No linux:
O script de instalação cria backups automáticos (`.bkp-TIMESTAMP`).
Para reverter, renomeie os backups removendo o sufixo.

No windows/steam
Repare os arquivos pela steam, se não for stem faça backup dos arquivos do backup.

## 📜 Créditos

- Tradução automática: Google Translate via [deep-translator](https://github.com/nidhaloff/deep-translator)
- Extração/reempacotamento: [FreeMote](https://github.com/UlyssesWu/FreeMote)
- Claude AI: sem ele eu não teria feito nada.
- Fontes do jogo já suportam caracteres acentuados (NotoSans, Tsukugo, Humming)

