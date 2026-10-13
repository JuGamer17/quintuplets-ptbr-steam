@echo off
REM ============================================================================
REM 02_descriptografar_chunks.bat
REM ----------------------------------------------------------------------------
REM PASSO 2 - Descriptografa/descomprime cada chunk (MDF + MT19937) com EmtConvert.
REM
REM Para cada _chunks\NOME.txt.mdf:
REM   EmtConvert mdf -s 523aad2de7132NOME.txt.scn.m -l 131 _chunks\NOME.txt.mdf
REM   -> gera NOME.txt.decompressed.psb ao lado do chunk (em _chunks\), que e movido
REM      para _decrypted\NOME.txt.psb
REM
REM A "seed" de cada arquivo e a chave do jogo (523aad2de7132) + o nome da cena
REM + ".scn.m"; o tamanho da chave e 131.
REM
REM Versao COMPACTA: o original tinha um bloco por arquivo (355 blocos).
REM
REM ENTRADA: _chunks\*.txt.mdf          (saida do 01_extrair_chunks.ps1)
REM SAIDA:   _decrypted\*.txt.psb
REM Requer:  EmtConvert.exe na pasta D:\freemote
REM ============================================================================
setlocal enabledelayedexpansion
cd /d D:\freemote

echo Descriptografando chunks...
if not exist _decrypted mkdir _decrypted

set /a OK=0
set /a FALHAS=0
for %%F in (_chunks\*.txt.mdf) do (
    set "N=%%~nF"
    set "SAIDA="
    EmtConvert mdf -s 523aad2de7132!N!.scn.m -l 131 "_chunks\!N!.mdf"
    REM O EmtConvert grava o .decompressed.psb AO LADO do chunk, em _chunks\ ;
    REM por garantia, procura tambem na pasta de trabalho.
    if exist "!N!.decompressed.psb" set "SAIDA=!N!.decompressed.psb"
    if exist "_chunks\!N!.decompressed.psb" set "SAIDA=_chunks\!N!.decompressed.psb"
    if defined SAIDA (
        move /Y "!SAIDA!" "_decrypted\!N!.psb" >nul
        set /a OK+=1
    ) else (
        echo FALHA decrypt: !N!
        set /a FALHAS+=1
    )
)

echo.
echo Descriptografia concluida! OK: !OK!  Falhas: !FALHAS!
pause
