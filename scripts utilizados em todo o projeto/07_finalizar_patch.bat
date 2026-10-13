@echo off
setlocal enabledelayedexpansion
cd /d "D:\freemote"

echo ===========================================================
echo FINALIZAR PATCH DO SCENARIO
echo (rodar DEPOIS do aplicar_traducoes_do_git.py)
echo ===========================================================
echo.

if not exist "scenario_info_ptbr.psb.m.json" (
    echo [ERRO] scenario_info_ptbr.psb.m.json nao encontrado.
    echo Rode primeiro: python aplicar_traducoes_do_git.py
    pause
    exit /b 1
)
if not exist "scenario_body_ptbr.bin" (
    echo [ERRO] scenario_body_ptbr.bin nao encontrado.
    echo Rode primeiro: python aplicar_traducoes_do_git.py
    pause
    exit /b 1
)

REM ---- limpa restos de execucoes anteriores (NAO mexe no .json) ----
del /q "scenario_info_ptbr.psb.m.psb" 2>nul
del /q "scenario_info_ptbr.psb.m.pure.psb" 2>nul
del /q "scenario_info_mdf.psb.m" 2>nul
del /q "scenario_info_mdf.psb.converted.mdf" 2>nul

REM ---- 1. PsBuild: JSON -> PSB ----
echo [1/4] Rodando PsBuild...
PsBuild.exe scenario_info_ptbr.psb.m.json

set "PSB_OUT="
for %%F in ("scenario_info_ptbr.psb.m.psb" "scenario_info_ptbr.psb.m.pure.psb") do (
    if exist %%F set "PSB_OUT=%%~F"
)
if not defined PSB_OUT (
    echo [ERRO] O PsBuild nao gerou o .psb esperado.
    dir scenario_info_ptbr*
    pause
    exit /b 1
)
echo   Encontrado: %PSB_OUT%

REM ---- 2. Comprime em shell MDF ----
echo [2/4] Comprimindo (pack -s MDF)...
EmtConvert.exe pack -s MDF -o scenario_info_mdf.psb.m "%PSB_OUT%"
if not exist "scenario_info_mdf.psb.m" (
    echo [ERRO] pack -s MDF nao gerou scenario_info_mdf.psb.m
    pause
    exit /b 1
)

REM ---- 3. Encripta (seed do INDICE) ----
echo [3/4] Encriptando (mdf -r)...
EmtConvert.exe mdf -r -s 523aad2de7132scenario_info.psb.m -l 131 scenario_info_mdf.psb.m
if not exist "scenario_info_mdf.psb.converted.mdf" (
    echo [ERRO] mdf -r nao gerou scenario_info_mdf.psb.converted.mdf
    pause
    exit /b 1
)
copy /y "scenario_info_mdf.psb.converted.mdf" "scenario_info_ptbr.psb.m" >nul

REM ---- 4. Copia os 2 arquivos finais ----
echo [4/4] Copiando para "para ir para o jogo"...
if not exist "para ir para o jogo" mkdir "para ir para o jogo"
copy /y "scenario_body_ptbr.bin" "para ir para o jogo\scenario_body.bin" >nul
copy /y "scenario_info_ptbr.psb.m" "para ir para o jogo\scenario_info.psb.m" >nul

echo.
echo ===========================================================
echo CONCLUIDO.
echo Arquivos finais em: D:\freemote\para ir para o jogo\
echo.
echo Para aplicar no jogo (faca backup antes!):
echo   copy /y "para ir para o jogo\scenario_body.bin" "E:\SteamLibrary\steamapps\common\goto02\windata\scenario_body.bin"
echo   copy /y "para ir para o jogo\scenario_info.psb.m" "E:\SteamLibrary\steamapps\common\goto02\windata\scenario_info.psb.m"
echo ===========================================================
pause