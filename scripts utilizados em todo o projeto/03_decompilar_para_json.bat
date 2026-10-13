@echo off
REM ============================================================================
REM 03_decompilar_para_json.bat
REM ----------------------------------------------------------------------------
REM PASSO 3 - Converte cada PSB descriptografado em JSON editavel (PsbDecompile).
REM
REM Para cada _decrypted\NOME.txt.psb:
REM   PsbDecompile _decrypted\NOME.txt.psb
REM   -> gera NOME.txt.json e NOME.txt.resx.json AO LADO do .psb, em _decrypted\.
REM      O .json e movido para _json\ e, no fim, os .resx.json sao copiados para _json\
REM
REM Os JSONs de _json\ sao os "moldes" usados depois pelo
REM 06_aplicar_traducoes_do_git.py (junto com o .resx.json, que o PsBuild
REM precisa na hora de recompilar).
REM
REM Versao COMPACTA: o original tinha um bloco por arquivo (355 blocos).
REM
REM ENTRADA: _decrypted\*.txt.psb       (saida do 02_descriptografar_chunks.bat)
REM SAIDA:   _json\*.txt.json
REM Requer:  PsbDecompile.exe na pasta D:\freemote
REM ============================================================================
setlocal enabledelayedexpansion
cd /d D:\freemote

echo Decompilando PSBs para JSON...
if not exist _json mkdir _json

set /a OK=0
set /a FALHAS=0
for %%F in (_decrypted\*.txt.psb) do (
    set "N=%%~nF"
    set "SAIDA="
    PsbDecompile "_decrypted\!N!.psb"
    REM O PsbDecompile grava o .json AO LADO do .psb, em _decrypted\ ;
    REM por garantia, procura tambem na pasta de trabalho.
    if exist "!N!.json" set "SAIDA=!N!.json"
    if exist "_decrypted\!N!.json" set "SAIDA=_decrypted\!N!.json"
    if defined SAIDA (
        move /Y "!SAIDA!" "_json\!N!.json" >nul
        if exist "!N!.resx.json" del /Q "!N!.resx.json" >nul 2>nul
        set /a OK+=1
    ) else (
        echo FALHA decompile: !N!
        set /a FALHAS+=1
    )
)

echo.
echo Copiando os .resx.json para _json\ (o PsBuild precisa deles ao lado dos moldes)...
copy /Y "_decrypted\*.resx.json" "_json\" >nul

echo.
echo Decompilacao concluida! OK: !OK!  Falhas: !FALHAS!
pause
