#!/bin/bash
# Tradução PT-BR - The Quintessential Quintuplets: Five Memories Spent With You
# Diálogos, UI e conquistas traduzidos para Português do Brasil
#
# IMPORTANTE: O jogo deve estar configurado com idioma "English" no menu.
# A tradução substitui o texto inglês por português.

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Detectar diretório do jogo
if [ -n "$1" ]; then
    GAMEDIR="$1"
elif [ -f "./5toubun2_steam.exe" ]; then
    GAMEDIR="."
else
    echo "Uso: $0 <caminho_do_jogo>"
    echo "Exemplo: $0 '/home/deck/Games/.../The.Quintessential.Quintuplets.Five.Memories.Spent.With.You'"
    exit 1
fi

# Validar
if [ ! -f "$GAMEDIR/5toubun2_steam.exe" ]; then
    echo "ERRO: Executável do jogo não encontrado em: $GAMEDIR"
    exit 1
fi

echo "=== Instalando tradução PT-BR ==="
echo "Diretório: $GAMEDIR"

# Backup
TIMESTAMP=$(date +%Y%m%d%H%M%S)
echo ""
echo "[1/3] Criando backup dos originais..."
cp "$GAMEDIR/windata/scenario_body.bin" "$GAMEDIR/windata/scenario_body.bin.bkp-$TIMESTAMP"
cp "$GAMEDIR/windata/config_body.bin" "$GAMEDIR/windata/config_body.bin.bkp-$TIMESTAMP"
cp "$GAMEDIR/tenoke.ini" "$GAMEDIR/tenoke.ini.bkp-$TIMESTAMP"

# Copiar arquivos traduzidos
echo "[2/3] Instalando arquivos traduzidos..."
cp "$SCRIPT_DIR/windata/scenario_body.bin" "$GAMEDIR/windata/scenario_body.bin"
cp "$SCRIPT_DIR/windata/config_body.bin" "$GAMEDIR/windata/config_body.bin"

# Achievements
echo "[3/3] Adicionando conquistas em português..."
if ! grep -q "^brazilian" "$GAMEDIR/tenoke.ini" 2>/dev/null; then
    echo "" >> "$GAMEDIR/tenoke.ini"
    cat "$SCRIPT_DIR/achievements_ptbr.txt" >> "$GAMEDIR/tenoke.ini"
fi

# Garantir idioma english
sed -i 's/language = ".*"/language = "english"/' "$GAMEDIR/tenoke.ini"

echo ""
echo "✅ Tradução instalada com sucesso!"
echo "   Selecione 'English' no menu do jogo para ver o texto em português."
echo "   Backups salvos com sufixo .bkp-$TIMESTAMP"
