@echo off
REM ============================================================================
REM 14_gerar_patches_xdelta.bat
REM ----------------------------------------------------------------------------
REM Gera os 6 patches binarios (xdelta3) usados pelo instalador.
REM Cada patch = diferenca entre o arquivo ORIGINAL do jogo e o TRADUZIDO.
REM O instalador so carrega os patches - nunca os arquivos originais do jogo.
REM
REM Estes sao os mesmos comandos que foram rodados manualmente no projeto,
REM reunidos num so arquivo. O -f permite sobrescrever patches antigos.
REM
REM ENTRADAS (em D:\freemote\):
REM   backups\arquivos jogo original\   -> os 6 arquivos ORIGINAIS (Steam > Verificar integridade)
REM   para ir para o jogo\              -> os 6 arquivos TRADUZIDOS finais
REM   xdelta3-3.0.11-x86_64.exe
REM SAIDA:
REM   patches\*.xdelta
REM
REM Rode ANTES de compilar o instalador (Windows\instalador\Instalador_Traducao_PTBR.iss).
REM Sempre que scenario / config / motion forem refeitos, gere os patches de novo.
REM ============================================================================
setlocal
cd /d D:\freemote

set "X=xdelta3-3.0.11-x86_64.exe"
set "ORIG=backups\arquivos jogo original"
set "NOVO=para ir para o jogo"

if not exist "%X%" (
    echo [ERRO] %X% nao encontrado em D:\freemote
    pause
    exit /b 1
)
if not exist patches mkdir patches

call :gerar config_body.bin       config_body.xdelta
call :gerar config_info.psb.m     config_info.xdelta
call :gerar scenario_body.bin     scenario_body.xdelta
call :gerar scenario_info.psb.m   scenario_info.xdelta
call :gerar motion_body.bin       motion_body.xdelta
call :gerar motion_info.psb.m     motion_info.xdelta

echo.
echo ===========================================================
echo Patches gerados em D:\freemote\patches\
dir /b patches
echo ===========================================================
echo Proximo passo: abrir o .iss no Inno Setup e compilar (F9).
pause
exit /b 0

:gerar
echo Gerando %2 ...
"%X%" -e -f -s "%ORIG%\%1" "%NOVO%\%1" "patches\%2"
if errorlevel 1 (
    echo [ERRO] falha ao gerar %2
    pause
    exit /b 1
)
exit /b 0
