@echo off
cd /d "D:\freemote"

echo ===========================================================
echo TESTE RAPIDO DO tu_01  (opcoes: %*)
echo ATENCAO: o scenario do jogo fica so com o tu_01 traduzido
echo (o resto volta pro ingles) ate voce rodar a versao completa.
echo ===========================================================
echo.

python aplicar_traducoes_do_git.py --so tu_01 %*
if errorlevel 1 (
    echo [ERRO] o aplicar_traducoes_do_git.py falhou.
    pause
    exit /b 1
)

call finalizar_patch.bat

echo.
echo Copiando para o jogo...
copy /y "para ir para o jogo\scenario_body.bin" "E:\SteamLibrary\steamapps\common\goto02\windata\scenario_body.bin"
copy /y "para ir para o jogo\scenario_info.psb.m" "E:\SteamLibrary\steamapps\common\goto02\windata\scenario_info.psb.m"

echo.
echo ===========================================================
echo PRONTO. Abra o jogo, va em INICIAR (jogo novo) e veja se
echo passa da tela preta. Anote: FUNCIONOU ou TELA PRETA.
echo ===========================================================
pause
