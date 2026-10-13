@echo off
cd /d D:\freemote
echo Decompilando PSBs...
if not exist _json mkdir _json

PsbDecompile _decrypted\addfile.txt.psb
if exist addfile.txt.json (
    move /Y addfile.txt.json _json\addfile.txt.json >nul
    if exist addfile.txt.resx.json del /Q addfile.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: addfile.txt
)
PsbDecompile _decrypted\ca01_01.txt.psb
if exist ca01_01.txt.json (
    move /Y ca01_01.txt.json _json\ca01_01.txt.json >nul
    if exist ca01_01.txt.resx.json del /Q ca01_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_01.txt
)
PsbDecompile _decrypted\ca01_02.txt.psb
if exist ca01_02.txt.json (
    move /Y ca01_02.txt.json _json\ca01_02.txt.json >nul
    if exist ca01_02.txt.resx.json del /Q ca01_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_02.txt
)
PsbDecompile _decrypted\ca01_03.txt.psb
if exist ca01_03.txt.json (
    move /Y ca01_03.txt.json _json\ca01_03.txt.json >nul
    if exist ca01_03.txt.resx.json del /Q ca01_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_03.txt
)
PsbDecompile _decrypted\ca01_04.txt.psb
if exist ca01_04.txt.json (
    move /Y ca01_04.txt.json _json\ca01_04.txt.json >nul
    if exist ca01_04.txt.resx.json del /Q ca01_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_04.txt
)
PsbDecompile _decrypted\ca01_05.txt.psb
if exist ca01_05.txt.json (
    move /Y ca01_05.txt.json _json\ca01_05.txt.json >nul
    if exist ca01_05.txt.resx.json del /Q ca01_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_05.txt
)
PsbDecompile _decrypted\ca01_06.txt.psb
if exist ca01_06.txt.json (
    move /Y ca01_06.txt.json _json\ca01_06.txt.json >nul
    if exist ca01_06.txt.resx.json del /Q ca01_06.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_06.txt
)
PsbDecompile _decrypted\ca01_07.txt.psb
if exist ca01_07.txt.json (
    move /Y ca01_07.txt.json _json\ca01_07.txt.json >nul
    if exist ca01_07.txt.resx.json del /Q ca01_07.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_07.txt
)
PsbDecompile _decrypted\ca01_08.txt.psb
if exist ca01_08.txt.json (
    move /Y ca01_08.txt.json _json\ca01_08.txt.json >nul
    if exist ca01_08.txt.resx.json del /Q ca01_08.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_08.txt
)
PsbDecompile _decrypted\ca01_09.txt.psb
if exist ca01_09.txt.json (
    move /Y ca01_09.txt.json _json\ca01_09.txt.json >nul
    if exist ca01_09.txt.resx.json del /Q ca01_09.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_09.txt
)
PsbDecompile _decrypted\ca01_10.txt.psb
if exist ca01_10.txt.json (
    move /Y ca01_10.txt.json _json\ca01_10.txt.json >nul
    if exist ca01_10.txt.resx.json del /Q ca01_10.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_10.txt
)
PsbDecompile _decrypted\ca01_11.txt.psb
if exist ca01_11.txt.json (
    move /Y ca01_11.txt.json _json\ca01_11.txt.json >nul
    if exist ca01_11.txt.resx.json del /Q ca01_11.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_11.txt
)
PsbDecompile _decrypted\ca01_12.txt.psb
if exist ca01_12.txt.json (
    move /Y ca01_12.txt.json _json\ca01_12.txt.json >nul
    if exist ca01_12.txt.resx.json del /Q ca01_12.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_12.txt
)
PsbDecompile _decrypted\ca01_13.txt.psb
if exist ca01_13.txt.json (
    move /Y ca01_13.txt.json _json\ca01_13.txt.json >nul
    if exist ca01_13.txt.resx.json del /Q ca01_13.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_13.txt
)
PsbDecompile _decrypted\ca01_14.txt.psb
if exist ca01_14.txt.json (
    move /Y ca01_14.txt.json _json\ca01_14.txt.json >nul
    if exist ca01_14.txt.resx.json del /Q ca01_14.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_14.txt
)
PsbDecompile _decrypted\ca01_15.txt.psb
if exist ca01_15.txt.json (
    move /Y ca01_15.txt.json _json\ca01_15.txt.json >nul
    if exist ca01_15.txt.resx.json del /Q ca01_15.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_15.txt
)
PsbDecompile _decrypted\ca01_16.txt.psb
if exist ca01_16.txt.json (
    move /Y ca01_16.txt.json _json\ca01_16.txt.json >nul
    if exist ca01_16.txt.resx.json del /Q ca01_16.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_16.txt
)
PsbDecompile _decrypted\ca01_17.txt.psb
if exist ca01_17.txt.json (
    move /Y ca01_17.txt.json _json\ca01_17.txt.json >nul
    if exist ca01_17.txt.resx.json del /Q ca01_17.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_17.txt
)
PsbDecompile _decrypted\ca01_18.txt.psb
if exist ca01_18.txt.json (
    move /Y ca01_18.txt.json _json\ca01_18.txt.json >nul
    if exist ca01_18.txt.resx.json del /Q ca01_18.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_18.txt
)
PsbDecompile _decrypted\ca01_19.txt.psb
if exist ca01_19.txt.json (
    move /Y ca01_19.txt.json _json\ca01_19.txt.json >nul
    if exist ca01_19.txt.resx.json del /Q ca01_19.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_19.txt
)
PsbDecompile _decrypted\ca01_20.txt.psb
if exist ca01_20.txt.json (
    move /Y ca01_20.txt.json _json\ca01_20.txt.json >nul
    if exist ca01_20.txt.resx.json del /Q ca01_20.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_20.txt
)
PsbDecompile _decrypted\ca01_21.txt.psb
if exist ca01_21.txt.json (
    move /Y ca01_21.txt.json _json\ca01_21.txt.json >nul
    if exist ca01_21.txt.resx.json del /Q ca01_21.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_21.txt
)
PsbDecompile _decrypted\ca01_22.txt.psb
if exist ca01_22.txt.json (
    move /Y ca01_22.txt.json _json\ca01_22.txt.json >nul
    if exist ca01_22.txt.resx.json del /Q ca01_22.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_22.txt
)
PsbDecompile _decrypted\ca01_23.txt.psb
if exist ca01_23.txt.json (
    move /Y ca01_23.txt.json _json\ca01_23.txt.json >nul
    if exist ca01_23.txt.resx.json del /Q ca01_23.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_23.txt
)
PsbDecompile _decrypted\ca01_24.txt.psb
if exist ca01_24.txt.json (
    move /Y ca01_24.txt.json _json\ca01_24.txt.json >nul
    if exist ca01_24.txt.resx.json del /Q ca01_24.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_24.txt
)
PsbDecompile _decrypted\ca01_25.txt.psb
if exist ca01_25.txt.json (
    move /Y ca01_25.txt.json _json\ca01_25.txt.json >nul
    if exist ca01_25.txt.resx.json del /Q ca01_25.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_25.txt
)
PsbDecompile _decrypted\ca01_26.txt.psb
if exist ca01_26.txt.json (
    move /Y ca01_26.txt.json _json\ca01_26.txt.json >nul
    if exist ca01_26.txt.resx.json del /Q ca01_26.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_26.txt
)
PsbDecompile _decrypted\ca01_27.txt.psb
if exist ca01_27.txt.json (
    move /Y ca01_27.txt.json _json\ca01_27.txt.json >nul
    if exist ca01_27.txt.resx.json del /Q ca01_27.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_27.txt
)
PsbDecompile _decrypted\ca01_28.txt.psb
if exist ca01_28.txt.json (
    move /Y ca01_28.txt.json _json\ca01_28.txt.json >nul
    if exist ca01_28.txt.resx.json del /Q ca01_28.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_28.txt
)
PsbDecompile _decrypted\ca01_mv1_01.txt.psb
if exist ca01_mv1_01.txt.json (
    move /Y ca01_mv1_01.txt.json _json\ca01_mv1_01.txt.json >nul
    if exist ca01_mv1_01.txt.resx.json del /Q ca01_mv1_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv1_01.txt
)
PsbDecompile _decrypted\ca01_mv1_02.txt.psb
if exist ca01_mv1_02.txt.json (
    move /Y ca01_mv1_02.txt.json _json\ca01_mv1_02.txt.json >nul
    if exist ca01_mv1_02.txt.resx.json del /Q ca01_mv1_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv1_02.txt
)
PsbDecompile _decrypted\ca01_mv1_03.txt.psb
if exist ca01_mv1_03.txt.json (
    move /Y ca01_mv1_03.txt.json _json\ca01_mv1_03.txt.json >nul
    if exist ca01_mv1_03.txt.resx.json del /Q ca01_mv1_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv1_03.txt
)
PsbDecompile _decrypted\ca01_mv2_01.txt.psb
if exist ca01_mv2_01.txt.json (
    move /Y ca01_mv2_01.txt.json _json\ca01_mv2_01.txt.json >nul
    if exist ca01_mv2_01.txt.resx.json del /Q ca01_mv2_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv2_01.txt
)
PsbDecompile _decrypted\ca01_mv2_02.txt.psb
if exist ca01_mv2_02.txt.json (
    move /Y ca01_mv2_02.txt.json _json\ca01_mv2_02.txt.json >nul
    if exist ca01_mv2_02.txt.resx.json del /Q ca01_mv2_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv2_02.txt
)
PsbDecompile _decrypted\ca01_mv2_03.txt.psb
if exist ca01_mv2_03.txt.json (
    move /Y ca01_mv2_03.txt.json _json\ca01_mv2_03.txt.json >nul
    if exist ca01_mv2_03.txt.resx.json del /Q ca01_mv2_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv2_03.txt
)
PsbDecompile _decrypted\ca01_mv3_01.txt.psb
if exist ca01_mv3_01.txt.json (
    move /Y ca01_mv3_01.txt.json _json\ca01_mv3_01.txt.json >nul
    if exist ca01_mv3_01.txt.resx.json del /Q ca01_mv3_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv3_01.txt
)
PsbDecompile _decrypted\ca01_mv3_02.txt.psb
if exist ca01_mv3_02.txt.json (
    move /Y ca01_mv3_02.txt.json _json\ca01_mv3_02.txt.json >nul
    if exist ca01_mv3_02.txt.resx.json del /Q ca01_mv3_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv3_02.txt
)
PsbDecompile _decrypted\ca01_mv3_03.txt.psb
if exist ca01_mv3_03.txt.json (
    move /Y ca01_mv3_03.txt.json _json\ca01_mv3_03.txt.json >nul
    if exist ca01_mv3_03.txt.resx.json del /Q ca01_mv3_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv3_03.txt
)
PsbDecompile _decrypted\ca01_mv4_01.txt.psb
if exist ca01_mv4_01.txt.json (
    move /Y ca01_mv4_01.txt.json _json\ca01_mv4_01.txt.json >nul
    if exist ca01_mv4_01.txt.resx.json del /Q ca01_mv4_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv4_01.txt
)
PsbDecompile _decrypted\ca01_mv4_02.txt.psb
if exist ca01_mv4_02.txt.json (
    move /Y ca01_mv4_02.txt.json _json\ca01_mv4_02.txt.json >nul
    if exist ca01_mv4_02.txt.resx.json del /Q ca01_mv4_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv4_02.txt
)
PsbDecompile _decrypted\ca01_mv4_03.txt.psb
if exist ca01_mv4_03.txt.json (
    move /Y ca01_mv4_03.txt.json _json\ca01_mv4_03.txt.json >nul
    if exist ca01_mv4_03.txt.resx.json del /Q ca01_mv4_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv4_03.txt
)
PsbDecompile _decrypted\ca01_mv5_01.txt.psb
if exist ca01_mv5_01.txt.json (
    move /Y ca01_mv5_01.txt.json _json\ca01_mv5_01.txt.json >nul
    if exist ca01_mv5_01.txt.resx.json del /Q ca01_mv5_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv5_01.txt
)
PsbDecompile _decrypted\ca01_mv5_02.txt.psb
if exist ca01_mv5_02.txt.json (
    move /Y ca01_mv5_02.txt.json _json\ca01_mv5_02.txt.json >nul
    if exist ca01_mv5_02.txt.resx.json del /Q ca01_mv5_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv5_02.txt
)
PsbDecompile _decrypted\ca01_mv5_03.txt.psb
if exist ca01_mv5_03.txt.json (
    move /Y ca01_mv5_03.txt.json _json\ca01_mv5_03.txt.json >nul
    if exist ca01_mv5_03.txt.resx.json del /Q ca01_mv5_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv5_03.txt
)
PsbDecompile _decrypted\ca01_mv6_01.txt.psb
if exist ca01_mv6_01.txt.json (
    move /Y ca01_mv6_01.txt.json _json\ca01_mv6_01.txt.json >nul
    if exist ca01_mv6_01.txt.resx.json del /Q ca01_mv6_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv6_01.txt
)
PsbDecompile _decrypted\ca01_mv6_02.txt.psb
if exist ca01_mv6_02.txt.json (
    move /Y ca01_mv6_02.txt.json _json\ca01_mv6_02.txt.json >nul
    if exist ca01_mv6_02.txt.resx.json del /Q ca01_mv6_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv6_02.txt
)
PsbDecompile _decrypted\ca01_mv6_03.txt.psb
if exist ca01_mv6_03.txt.json (
    move /Y ca01_mv6_03.txt.json _json\ca01_mv6_03.txt.json >nul
    if exist ca01_mv6_03.txt.resx.json del /Q ca01_mv6_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca01_mv6_03.txt
)
PsbDecompile _decrypted\ca02_01.txt.psb
if exist ca02_01.txt.json (
    move /Y ca02_01.txt.json _json\ca02_01.txt.json >nul
    if exist ca02_01.txt.resx.json del /Q ca02_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_01.txt
)
PsbDecompile _decrypted\ca02_02.txt.psb
if exist ca02_02.txt.json (
    move /Y ca02_02.txt.json _json\ca02_02.txt.json >nul
    if exist ca02_02.txt.resx.json del /Q ca02_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_02.txt
)
PsbDecompile _decrypted\ca02_03.txt.psb
if exist ca02_03.txt.json (
    move /Y ca02_03.txt.json _json\ca02_03.txt.json >nul
    if exist ca02_03.txt.resx.json del /Q ca02_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_03.txt
)
PsbDecompile _decrypted\ca02_04.txt.psb
if exist ca02_04.txt.json (
    move /Y ca02_04.txt.json _json\ca02_04.txt.json >nul
    if exist ca02_04.txt.resx.json del /Q ca02_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_04.txt
)
PsbDecompile _decrypted\ca02_05.txt.psb
if exist ca02_05.txt.json (
    move /Y ca02_05.txt.json _json\ca02_05.txt.json >nul
    if exist ca02_05.txt.resx.json del /Q ca02_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_05.txt
)
PsbDecompile _decrypted\ca02_06.txt.psb
if exist ca02_06.txt.json (
    move /Y ca02_06.txt.json _json\ca02_06.txt.json >nul
    if exist ca02_06.txt.resx.json del /Q ca02_06.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_06.txt
)
PsbDecompile _decrypted\ca02_07.txt.psb
if exist ca02_07.txt.json (
    move /Y ca02_07.txt.json _json\ca02_07.txt.json >nul
    if exist ca02_07.txt.resx.json del /Q ca02_07.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_07.txt
)
PsbDecompile _decrypted\ca02_08.txt.psb
if exist ca02_08.txt.json (
    move /Y ca02_08.txt.json _json\ca02_08.txt.json >nul
    if exist ca02_08.txt.resx.json del /Q ca02_08.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_08.txt
)
PsbDecompile _decrypted\ca02_09.txt.psb
if exist ca02_09.txt.json (
    move /Y ca02_09.txt.json _json\ca02_09.txt.json >nul
    if exist ca02_09.txt.resx.json del /Q ca02_09.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_09.txt
)
PsbDecompile _decrypted\ca02_10.txt.psb
if exist ca02_10.txt.json (
    move /Y ca02_10.txt.json _json\ca02_10.txt.json >nul
    if exist ca02_10.txt.resx.json del /Q ca02_10.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_10.txt
)
PsbDecompile _decrypted\ca02_11.txt.psb
if exist ca02_11.txt.json (
    move /Y ca02_11.txt.json _json\ca02_11.txt.json >nul
    if exist ca02_11.txt.resx.json del /Q ca02_11.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_11.txt
)
PsbDecompile _decrypted\ca02_12.txt.psb
if exist ca02_12.txt.json (
    move /Y ca02_12.txt.json _json\ca02_12.txt.json >nul
    if exist ca02_12.txt.resx.json del /Q ca02_12.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_12.txt
)
PsbDecompile _decrypted\ca02_13.txt.psb
if exist ca02_13.txt.json (
    move /Y ca02_13.txt.json _json\ca02_13.txt.json >nul
    if exist ca02_13.txt.resx.json del /Q ca02_13.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_13.txt
)
PsbDecompile _decrypted\ca02_14.txt.psb
if exist ca02_14.txt.json (
    move /Y ca02_14.txt.json _json\ca02_14.txt.json >nul
    if exist ca02_14.txt.resx.json del /Q ca02_14.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_14.txt
)
PsbDecompile _decrypted\ca02_15.txt.psb
if exist ca02_15.txt.json (
    move /Y ca02_15.txt.json _json\ca02_15.txt.json >nul
    if exist ca02_15.txt.resx.json del /Q ca02_15.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_15.txt
)
PsbDecompile _decrypted\ca02_16.txt.psb
if exist ca02_16.txt.json (
    move /Y ca02_16.txt.json _json\ca02_16.txt.json >nul
    if exist ca02_16.txt.resx.json del /Q ca02_16.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_16.txt
)
PsbDecompile _decrypted\ca02_17.txt.psb
if exist ca02_17.txt.json (
    move /Y ca02_17.txt.json _json\ca02_17.txt.json >nul
    if exist ca02_17.txt.resx.json del /Q ca02_17.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_17.txt
)
PsbDecompile _decrypted\ca02_18.txt.psb
if exist ca02_18.txt.json (
    move /Y ca02_18.txt.json _json\ca02_18.txt.json >nul
    if exist ca02_18.txt.resx.json del /Q ca02_18.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_18.txt
)
PsbDecompile _decrypted\ca02_19.txt.psb
if exist ca02_19.txt.json (
    move /Y ca02_19.txt.json _json\ca02_19.txt.json >nul
    if exist ca02_19.txt.resx.json del /Q ca02_19.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_19.txt
)
PsbDecompile _decrypted\ca02_20.txt.psb
if exist ca02_20.txt.json (
    move /Y ca02_20.txt.json _json\ca02_20.txt.json >nul
    if exist ca02_20.txt.resx.json del /Q ca02_20.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_20.txt
)
PsbDecompile _decrypted\ca02_21.txt.psb
if exist ca02_21.txt.json (
    move /Y ca02_21.txt.json _json\ca02_21.txt.json >nul
    if exist ca02_21.txt.resx.json del /Q ca02_21.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_21.txt
)
PsbDecompile _decrypted\ca02_22.txt.psb
if exist ca02_22.txt.json (
    move /Y ca02_22.txt.json _json\ca02_22.txt.json >nul
    if exist ca02_22.txt.resx.json del /Q ca02_22.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_22.txt
)
PsbDecompile _decrypted\ca02_23.txt.psb
if exist ca02_23.txt.json (
    move /Y ca02_23.txt.json _json\ca02_23.txt.json >nul
    if exist ca02_23.txt.resx.json del /Q ca02_23.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_23.txt
)
PsbDecompile _decrypted\ca02_24.txt.psb
if exist ca02_24.txt.json (
    move /Y ca02_24.txt.json _json\ca02_24.txt.json >nul
    if exist ca02_24.txt.resx.json del /Q ca02_24.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_24.txt
)
PsbDecompile _decrypted\ca02_25.txt.psb
if exist ca02_25.txt.json (
    move /Y ca02_25.txt.json _json\ca02_25.txt.json >nul
    if exist ca02_25.txt.resx.json del /Q ca02_25.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_25.txt
)
PsbDecompile _decrypted\ca02_26.txt.psb
if exist ca02_26.txt.json (
    move /Y ca02_26.txt.json _json\ca02_26.txt.json >nul
    if exist ca02_26.txt.resx.json del /Q ca02_26.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_26.txt
)
PsbDecompile _decrypted\ca02_27.txt.psb
if exist ca02_27.txt.json (
    move /Y ca02_27.txt.json _json\ca02_27.txt.json >nul
    if exist ca02_27.txt.resx.json del /Q ca02_27.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_27.txt
)
PsbDecompile _decrypted\ca02_28.txt.psb
if exist ca02_28.txt.json (
    move /Y ca02_28.txt.json _json\ca02_28.txt.json >nul
    if exist ca02_28.txt.resx.json del /Q ca02_28.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_28.txt
)
PsbDecompile _decrypted\ca02_29.txt.psb
if exist ca02_29.txt.json (
    move /Y ca02_29.txt.json _json\ca02_29.txt.json >nul
    if exist ca02_29.txt.resx.json del /Q ca02_29.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_29.txt
)
PsbDecompile _decrypted\ca02_30.txt.psb
if exist ca02_30.txt.json (
    move /Y ca02_30.txt.json _json\ca02_30.txt.json >nul
    if exist ca02_30.txt.resx.json del /Q ca02_30.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_30.txt
)
PsbDecompile _decrypted\ca02_mv1_01.txt.psb
if exist ca02_mv1_01.txt.json (
    move /Y ca02_mv1_01.txt.json _json\ca02_mv1_01.txt.json >nul
    if exist ca02_mv1_01.txt.resx.json del /Q ca02_mv1_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv1_01.txt
)
PsbDecompile _decrypted\ca02_mv1_02.txt.psb
if exist ca02_mv1_02.txt.json (
    move /Y ca02_mv1_02.txt.json _json\ca02_mv1_02.txt.json >nul
    if exist ca02_mv1_02.txt.resx.json del /Q ca02_mv1_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv1_02.txt
)
PsbDecompile _decrypted\ca02_mv1_03.txt.psb
if exist ca02_mv1_03.txt.json (
    move /Y ca02_mv1_03.txt.json _json\ca02_mv1_03.txt.json >nul
    if exist ca02_mv1_03.txt.resx.json del /Q ca02_mv1_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv1_03.txt
)
PsbDecompile _decrypted\ca02_mv2_01.txt.psb
if exist ca02_mv2_01.txt.json (
    move /Y ca02_mv2_01.txt.json _json\ca02_mv2_01.txt.json >nul
    if exist ca02_mv2_01.txt.resx.json del /Q ca02_mv2_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv2_01.txt
)
PsbDecompile _decrypted\ca02_mv2_02.txt.psb
if exist ca02_mv2_02.txt.json (
    move /Y ca02_mv2_02.txt.json _json\ca02_mv2_02.txt.json >nul
    if exist ca02_mv2_02.txt.resx.json del /Q ca02_mv2_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv2_02.txt
)
PsbDecompile _decrypted\ca02_mv2_03.txt.psb
if exist ca02_mv2_03.txt.json (
    move /Y ca02_mv2_03.txt.json _json\ca02_mv2_03.txt.json >nul
    if exist ca02_mv2_03.txt.resx.json del /Q ca02_mv2_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv2_03.txt
)
PsbDecompile _decrypted\ca02_mv3_01.txt.psb
if exist ca02_mv3_01.txt.json (
    move /Y ca02_mv3_01.txt.json _json\ca02_mv3_01.txt.json >nul
    if exist ca02_mv3_01.txt.resx.json del /Q ca02_mv3_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv3_01.txt
)
PsbDecompile _decrypted\ca02_mv3_02.txt.psb
if exist ca02_mv3_02.txt.json (
    move /Y ca02_mv3_02.txt.json _json\ca02_mv3_02.txt.json >nul
    if exist ca02_mv3_02.txt.resx.json del /Q ca02_mv3_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv3_02.txt
)
PsbDecompile _decrypted\ca02_mv3_03.txt.psb
if exist ca02_mv3_03.txt.json (
    move /Y ca02_mv3_03.txt.json _json\ca02_mv3_03.txt.json >nul
    if exist ca02_mv3_03.txt.resx.json del /Q ca02_mv3_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv3_03.txt
)
PsbDecompile _decrypted\ca02_mv4_01.txt.psb
if exist ca02_mv4_01.txt.json (
    move /Y ca02_mv4_01.txt.json _json\ca02_mv4_01.txt.json >nul
    if exist ca02_mv4_01.txt.resx.json del /Q ca02_mv4_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv4_01.txt
)
PsbDecompile _decrypted\ca02_mv4_02.txt.psb
if exist ca02_mv4_02.txt.json (
    move /Y ca02_mv4_02.txt.json _json\ca02_mv4_02.txt.json >nul
    if exist ca02_mv4_02.txt.resx.json del /Q ca02_mv4_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv4_02.txt
)
PsbDecompile _decrypted\ca02_mv4_03.txt.psb
if exist ca02_mv4_03.txt.json (
    move /Y ca02_mv4_03.txt.json _json\ca02_mv4_03.txt.json >nul
    if exist ca02_mv4_03.txt.resx.json del /Q ca02_mv4_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv4_03.txt
)
PsbDecompile _decrypted\ca02_mv5_01.txt.psb
if exist ca02_mv5_01.txt.json (
    move /Y ca02_mv5_01.txt.json _json\ca02_mv5_01.txt.json >nul
    if exist ca02_mv5_01.txt.resx.json del /Q ca02_mv5_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv5_01.txt
)
PsbDecompile _decrypted\ca02_mv5_02.txt.psb
if exist ca02_mv5_02.txt.json (
    move /Y ca02_mv5_02.txt.json _json\ca02_mv5_02.txt.json >nul
    if exist ca02_mv5_02.txt.resx.json del /Q ca02_mv5_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv5_02.txt
)
PsbDecompile _decrypted\ca02_mv5_03.txt.psb
if exist ca02_mv5_03.txt.json (
    move /Y ca02_mv5_03.txt.json _json\ca02_mv5_03.txt.json >nul
    if exist ca02_mv5_03.txt.resx.json del /Q ca02_mv5_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv5_03.txt
)
PsbDecompile _decrypted\ca02_mv5_04.txt.psb
if exist ca02_mv5_04.txt.json (
    move /Y ca02_mv5_04.txt.json _json\ca02_mv5_04.txt.json >nul
    if exist ca02_mv5_04.txt.resx.json del /Q ca02_mv5_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv5_04.txt
)
PsbDecompile _decrypted\ca02_mv5_05.txt.psb
if exist ca02_mv5_05.txt.json (
    move /Y ca02_mv5_05.txt.json _json\ca02_mv5_05.txt.json >nul
    if exist ca02_mv5_05.txt.resx.json del /Q ca02_mv5_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca02_mv5_05.txt
)
PsbDecompile _decrypted\ca03_01.txt.psb
if exist ca03_01.txt.json (
    move /Y ca03_01.txt.json _json\ca03_01.txt.json >nul
    if exist ca03_01.txt.resx.json del /Q ca03_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_01.txt
)
PsbDecompile _decrypted\ca03_02.txt.psb
if exist ca03_02.txt.json (
    move /Y ca03_02.txt.json _json\ca03_02.txt.json >nul
    if exist ca03_02.txt.resx.json del /Q ca03_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_02.txt
)
PsbDecompile _decrypted\ca03_03.txt.psb
if exist ca03_03.txt.json (
    move /Y ca03_03.txt.json _json\ca03_03.txt.json >nul
    if exist ca03_03.txt.resx.json del /Q ca03_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_03.txt
)
PsbDecompile _decrypted\ca03_04.txt.psb
if exist ca03_04.txt.json (
    move /Y ca03_04.txt.json _json\ca03_04.txt.json >nul
    if exist ca03_04.txt.resx.json del /Q ca03_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_04.txt
)
PsbDecompile _decrypted\ca03_05.txt.psb
if exist ca03_05.txt.json (
    move /Y ca03_05.txt.json _json\ca03_05.txt.json >nul
    if exist ca03_05.txt.resx.json del /Q ca03_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_05.txt
)
PsbDecompile _decrypted\ca03_06.txt.psb
if exist ca03_06.txt.json (
    move /Y ca03_06.txt.json _json\ca03_06.txt.json >nul
    if exist ca03_06.txt.resx.json del /Q ca03_06.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_06.txt
)
PsbDecompile _decrypted\ca03_07.txt.psb
if exist ca03_07.txt.json (
    move /Y ca03_07.txt.json _json\ca03_07.txt.json >nul
    if exist ca03_07.txt.resx.json del /Q ca03_07.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_07.txt
)
PsbDecompile _decrypted\ca03_08.txt.psb
if exist ca03_08.txt.json (
    move /Y ca03_08.txt.json _json\ca03_08.txt.json >nul
    if exist ca03_08.txt.resx.json del /Q ca03_08.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_08.txt
)
PsbDecompile _decrypted\ca03_09.txt.psb
if exist ca03_09.txt.json (
    move /Y ca03_09.txt.json _json\ca03_09.txt.json >nul
    if exist ca03_09.txt.resx.json del /Q ca03_09.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_09.txt
)
PsbDecompile _decrypted\ca03_10.txt.psb
if exist ca03_10.txt.json (
    move /Y ca03_10.txt.json _json\ca03_10.txt.json >nul
    if exist ca03_10.txt.resx.json del /Q ca03_10.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_10.txt
)
PsbDecompile _decrypted\ca03_11.txt.psb
if exist ca03_11.txt.json (
    move /Y ca03_11.txt.json _json\ca03_11.txt.json >nul
    if exist ca03_11.txt.resx.json del /Q ca03_11.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_11.txt
)
PsbDecompile _decrypted\ca03_12.txt.psb
if exist ca03_12.txt.json (
    move /Y ca03_12.txt.json _json\ca03_12.txt.json >nul
    if exist ca03_12.txt.resx.json del /Q ca03_12.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_12.txt
)
PsbDecompile _decrypted\ca03_13.txt.psb
if exist ca03_13.txt.json (
    move /Y ca03_13.txt.json _json\ca03_13.txt.json >nul
    if exist ca03_13.txt.resx.json del /Q ca03_13.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_13.txt
)
PsbDecompile _decrypted\ca03_14.txt.psb
if exist ca03_14.txt.json (
    move /Y ca03_14.txt.json _json\ca03_14.txt.json >nul
    if exist ca03_14.txt.resx.json del /Q ca03_14.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_14.txt
)
PsbDecompile _decrypted\ca03_15.txt.psb
if exist ca03_15.txt.json (
    move /Y ca03_15.txt.json _json\ca03_15.txt.json >nul
    if exist ca03_15.txt.resx.json del /Q ca03_15.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_15.txt
)
PsbDecompile _decrypted\ca03_16.txt.psb
if exist ca03_16.txt.json (
    move /Y ca03_16.txt.json _json\ca03_16.txt.json >nul
    if exist ca03_16.txt.resx.json del /Q ca03_16.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_16.txt
)
PsbDecompile _decrypted\ca03_17.txt.psb
if exist ca03_17.txt.json (
    move /Y ca03_17.txt.json _json\ca03_17.txt.json >nul
    if exist ca03_17.txt.resx.json del /Q ca03_17.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_17.txt
)
PsbDecompile _decrypted\ca03_18.txt.psb
if exist ca03_18.txt.json (
    move /Y ca03_18.txt.json _json\ca03_18.txt.json >nul
    if exist ca03_18.txt.resx.json del /Q ca03_18.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_18.txt
)
PsbDecompile _decrypted\ca03_19.txt.psb
if exist ca03_19.txt.json (
    move /Y ca03_19.txt.json _json\ca03_19.txt.json >nul
    if exist ca03_19.txt.resx.json del /Q ca03_19.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_19.txt
)
PsbDecompile _decrypted\ca03_20.txt.psb
if exist ca03_20.txt.json (
    move /Y ca03_20.txt.json _json\ca03_20.txt.json >nul
    if exist ca03_20.txt.resx.json del /Q ca03_20.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_20.txt
)
PsbDecompile _decrypted\ca03_21.txt.psb
if exist ca03_21.txt.json (
    move /Y ca03_21.txt.json _json\ca03_21.txt.json >nul
    if exist ca03_21.txt.resx.json del /Q ca03_21.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_21.txt
)
PsbDecompile _decrypted\ca03_22.txt.psb
if exist ca03_22.txt.json (
    move /Y ca03_22.txt.json _json\ca03_22.txt.json >nul
    if exist ca03_22.txt.resx.json del /Q ca03_22.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_22.txt
)
PsbDecompile _decrypted\ca03_23.txt.psb
if exist ca03_23.txt.json (
    move /Y ca03_23.txt.json _json\ca03_23.txt.json >nul
    if exist ca03_23.txt.resx.json del /Q ca03_23.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_23.txt
)
PsbDecompile _decrypted\ca03_24.txt.psb
if exist ca03_24.txt.json (
    move /Y ca03_24.txt.json _json\ca03_24.txt.json >nul
    if exist ca03_24.txt.resx.json del /Q ca03_24.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_24.txt
)
PsbDecompile _decrypted\ca03_25.txt.psb
if exist ca03_25.txt.json (
    move /Y ca03_25.txt.json _json\ca03_25.txt.json >nul
    if exist ca03_25.txt.resx.json del /Q ca03_25.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_25.txt
)
PsbDecompile _decrypted\ca03_26.txt.psb
if exist ca03_26.txt.json (
    move /Y ca03_26.txt.json _json\ca03_26.txt.json >nul
    if exist ca03_26.txt.resx.json del /Q ca03_26.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_26.txt
)
PsbDecompile _decrypted\ca03_27.txt.psb
if exist ca03_27.txt.json (
    move /Y ca03_27.txt.json _json\ca03_27.txt.json >nul
    if exist ca03_27.txt.resx.json del /Q ca03_27.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_27.txt
)
PsbDecompile _decrypted\ca03_28.txt.psb
if exist ca03_28.txt.json (
    move /Y ca03_28.txt.json _json\ca03_28.txt.json >nul
    if exist ca03_28.txt.resx.json del /Q ca03_28.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_28.txt
)
PsbDecompile _decrypted\ca03_29.txt.psb
if exist ca03_29.txt.json (
    move /Y ca03_29.txt.json _json\ca03_29.txt.json >nul
    if exist ca03_29.txt.resx.json del /Q ca03_29.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_29.txt
)
PsbDecompile _decrypted\ca03_30.txt.psb
if exist ca03_30.txt.json (
    move /Y ca03_30.txt.json _json\ca03_30.txt.json >nul
    if exist ca03_30.txt.resx.json del /Q ca03_30.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_30.txt
)
PsbDecompile _decrypted\ca03_31.txt.psb
if exist ca03_31.txt.json (
    move /Y ca03_31.txt.json _json\ca03_31.txt.json >nul
    if exist ca03_31.txt.resx.json del /Q ca03_31.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_31.txt
)
PsbDecompile _decrypted\ca03_mv1_01.txt.psb
if exist ca03_mv1_01.txt.json (
    move /Y ca03_mv1_01.txt.json _json\ca03_mv1_01.txt.json >nul
    if exist ca03_mv1_01.txt.resx.json del /Q ca03_mv1_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv1_01.txt
)
PsbDecompile _decrypted\ca03_mv1_02.txt.psb
if exist ca03_mv1_02.txt.json (
    move /Y ca03_mv1_02.txt.json _json\ca03_mv1_02.txt.json >nul
    if exist ca03_mv1_02.txt.resx.json del /Q ca03_mv1_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv1_02.txt
)
PsbDecompile _decrypted\ca03_mv1_03.txt.psb
if exist ca03_mv1_03.txt.json (
    move /Y ca03_mv1_03.txt.json _json\ca03_mv1_03.txt.json >nul
    if exist ca03_mv1_03.txt.resx.json del /Q ca03_mv1_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv1_03.txt
)
PsbDecompile _decrypted\ca03_mv2_01.txt.psb
if exist ca03_mv2_01.txt.json (
    move /Y ca03_mv2_01.txt.json _json\ca03_mv2_01.txt.json >nul
    if exist ca03_mv2_01.txt.resx.json del /Q ca03_mv2_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv2_01.txt
)
PsbDecompile _decrypted\ca03_mv2_02.txt.psb
if exist ca03_mv2_02.txt.json (
    move /Y ca03_mv2_02.txt.json _json\ca03_mv2_02.txt.json >nul
    if exist ca03_mv2_02.txt.resx.json del /Q ca03_mv2_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv2_02.txt
)
PsbDecompile _decrypted\ca03_mv2_03.txt.psb
if exist ca03_mv2_03.txt.json (
    move /Y ca03_mv2_03.txt.json _json\ca03_mv2_03.txt.json >nul
    if exist ca03_mv2_03.txt.resx.json del /Q ca03_mv2_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv2_03.txt
)
PsbDecompile _decrypted\ca03_mv3_01.txt.psb
if exist ca03_mv3_01.txt.json (
    move /Y ca03_mv3_01.txt.json _json\ca03_mv3_01.txt.json >nul
    if exist ca03_mv3_01.txt.resx.json del /Q ca03_mv3_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv3_01.txt
)
PsbDecompile _decrypted\ca03_mv3_02.txt.psb
if exist ca03_mv3_02.txt.json (
    move /Y ca03_mv3_02.txt.json _json\ca03_mv3_02.txt.json >nul
    if exist ca03_mv3_02.txt.resx.json del /Q ca03_mv3_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv3_02.txt
)
PsbDecompile _decrypted\ca03_mv3_03.txt.psb
if exist ca03_mv3_03.txt.json (
    move /Y ca03_mv3_03.txt.json _json\ca03_mv3_03.txt.json >nul
    if exist ca03_mv3_03.txt.resx.json del /Q ca03_mv3_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv3_03.txt
)
PsbDecompile _decrypted\ca03_mv4_01.txt.psb
if exist ca03_mv4_01.txt.json (
    move /Y ca03_mv4_01.txt.json _json\ca03_mv4_01.txt.json >nul
    if exist ca03_mv4_01.txt.resx.json del /Q ca03_mv4_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv4_01.txt
)
PsbDecompile _decrypted\ca03_mv4_02.txt.psb
if exist ca03_mv4_02.txt.json (
    move /Y ca03_mv4_02.txt.json _json\ca03_mv4_02.txt.json >nul
    if exist ca03_mv4_02.txt.resx.json del /Q ca03_mv4_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv4_02.txt
)
PsbDecompile _decrypted\ca03_mv4_03.txt.psb
if exist ca03_mv4_03.txt.json (
    move /Y ca03_mv4_03.txt.json _json\ca03_mv4_03.txt.json >nul
    if exist ca03_mv4_03.txt.resx.json del /Q ca03_mv4_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv4_03.txt
)
PsbDecompile _decrypted\ca03_mv5_01.txt.psb
if exist ca03_mv5_01.txt.json (
    move /Y ca03_mv5_01.txt.json _json\ca03_mv5_01.txt.json >nul
    if exist ca03_mv5_01.txt.resx.json del /Q ca03_mv5_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv5_01.txt
)
PsbDecompile _decrypted\ca03_mv5_02.txt.psb
if exist ca03_mv5_02.txt.json (
    move /Y ca03_mv5_02.txt.json _json\ca03_mv5_02.txt.json >nul
    if exist ca03_mv5_02.txt.resx.json del /Q ca03_mv5_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv5_02.txt
)
PsbDecompile _decrypted\ca03_mv5_03.txt.psb
if exist ca03_mv5_03.txt.json (
    move /Y ca03_mv5_03.txt.json _json\ca03_mv5_03.txt.json >nul
    if exist ca03_mv5_03.txt.resx.json del /Q ca03_mv5_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv5_03.txt
)
PsbDecompile _decrypted\ca03_mv6_01.txt.psb
if exist ca03_mv6_01.txt.json (
    move /Y ca03_mv6_01.txt.json _json\ca03_mv6_01.txt.json >nul
    if exist ca03_mv6_01.txt.resx.json del /Q ca03_mv6_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv6_01.txt
)
PsbDecompile _decrypted\ca03_mv6_02.txt.psb
if exist ca03_mv6_02.txt.json (
    move /Y ca03_mv6_02.txt.json _json\ca03_mv6_02.txt.json >nul
    if exist ca03_mv6_02.txt.resx.json del /Q ca03_mv6_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv6_02.txt
)
PsbDecompile _decrypted\ca03_mv6_03.txt.psb
if exist ca03_mv6_03.txt.json (
    move /Y ca03_mv6_03.txt.json _json\ca03_mv6_03.txt.json >nul
    if exist ca03_mv6_03.txt.resx.json del /Q ca03_mv6_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca03_mv6_03.txt
)
PsbDecompile _decrypted\ca04_01.txt.psb
if exist ca04_01.txt.json (
    move /Y ca04_01.txt.json _json\ca04_01.txt.json >nul
    if exist ca04_01.txt.resx.json del /Q ca04_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_01.txt
)
PsbDecompile _decrypted\ca04_02.txt.psb
if exist ca04_02.txt.json (
    move /Y ca04_02.txt.json _json\ca04_02.txt.json >nul
    if exist ca04_02.txt.resx.json del /Q ca04_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_02.txt
)
PsbDecompile _decrypted\ca04_03.txt.psb
if exist ca04_03.txt.json (
    move /Y ca04_03.txt.json _json\ca04_03.txt.json >nul
    if exist ca04_03.txt.resx.json del /Q ca04_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_03.txt
)
PsbDecompile _decrypted\ca04_04.txt.psb
if exist ca04_04.txt.json (
    move /Y ca04_04.txt.json _json\ca04_04.txt.json >nul
    if exist ca04_04.txt.resx.json del /Q ca04_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_04.txt
)
PsbDecompile _decrypted\ca04_05.txt.psb
if exist ca04_05.txt.json (
    move /Y ca04_05.txt.json _json\ca04_05.txt.json >nul
    if exist ca04_05.txt.resx.json del /Q ca04_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_05.txt
)
PsbDecompile _decrypted\ca04_06.txt.psb
if exist ca04_06.txt.json (
    move /Y ca04_06.txt.json _json\ca04_06.txt.json >nul
    if exist ca04_06.txt.resx.json del /Q ca04_06.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_06.txt
)
PsbDecompile _decrypted\ca04_07.txt.psb
if exist ca04_07.txt.json (
    move /Y ca04_07.txt.json _json\ca04_07.txt.json >nul
    if exist ca04_07.txt.resx.json del /Q ca04_07.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_07.txt
)
PsbDecompile _decrypted\ca04_08.txt.psb
if exist ca04_08.txt.json (
    move /Y ca04_08.txt.json _json\ca04_08.txt.json >nul
    if exist ca04_08.txt.resx.json del /Q ca04_08.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_08.txt
)
PsbDecompile _decrypted\ca04_09.txt.psb
if exist ca04_09.txt.json (
    move /Y ca04_09.txt.json _json\ca04_09.txt.json >nul
    if exist ca04_09.txt.resx.json del /Q ca04_09.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_09.txt
)
PsbDecompile _decrypted\ca04_10.txt.psb
if exist ca04_10.txt.json (
    move /Y ca04_10.txt.json _json\ca04_10.txt.json >nul
    if exist ca04_10.txt.resx.json del /Q ca04_10.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_10.txt
)
PsbDecompile _decrypted\ca04_11.txt.psb
if exist ca04_11.txt.json (
    move /Y ca04_11.txt.json _json\ca04_11.txt.json >nul
    if exist ca04_11.txt.resx.json del /Q ca04_11.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_11.txt
)
PsbDecompile _decrypted\ca04_12.txt.psb
if exist ca04_12.txt.json (
    move /Y ca04_12.txt.json _json\ca04_12.txt.json >nul
    if exist ca04_12.txt.resx.json del /Q ca04_12.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_12.txt
)
PsbDecompile _decrypted\ca04_13.txt.psb
if exist ca04_13.txt.json (
    move /Y ca04_13.txt.json _json\ca04_13.txt.json >nul
    if exist ca04_13.txt.resx.json del /Q ca04_13.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_13.txt
)
PsbDecompile _decrypted\ca04_14.txt.psb
if exist ca04_14.txt.json (
    move /Y ca04_14.txt.json _json\ca04_14.txt.json >nul
    if exist ca04_14.txt.resx.json del /Q ca04_14.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_14.txt
)
PsbDecompile _decrypted\ca04_15.txt.psb
if exist ca04_15.txt.json (
    move /Y ca04_15.txt.json _json\ca04_15.txt.json >nul
    if exist ca04_15.txt.resx.json del /Q ca04_15.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_15.txt
)
PsbDecompile _decrypted\ca04_16.txt.psb
if exist ca04_16.txt.json (
    move /Y ca04_16.txt.json _json\ca04_16.txt.json >nul
    if exist ca04_16.txt.resx.json del /Q ca04_16.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_16.txt
)
PsbDecompile _decrypted\ca04_17.txt.psb
if exist ca04_17.txt.json (
    move /Y ca04_17.txt.json _json\ca04_17.txt.json >nul
    if exist ca04_17.txt.resx.json del /Q ca04_17.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_17.txt
)
PsbDecompile _decrypted\ca04_18.txt.psb
if exist ca04_18.txt.json (
    move /Y ca04_18.txt.json _json\ca04_18.txt.json >nul
    if exist ca04_18.txt.resx.json del /Q ca04_18.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_18.txt
)
PsbDecompile _decrypted\ca04_19.txt.psb
if exist ca04_19.txt.json (
    move /Y ca04_19.txt.json _json\ca04_19.txt.json >nul
    if exist ca04_19.txt.resx.json del /Q ca04_19.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_19.txt
)
PsbDecompile _decrypted\ca04_20.txt.psb
if exist ca04_20.txt.json (
    move /Y ca04_20.txt.json _json\ca04_20.txt.json >nul
    if exist ca04_20.txt.resx.json del /Q ca04_20.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_20.txt
)
PsbDecompile _decrypted\ca04_21.txt.psb
if exist ca04_21.txt.json (
    move /Y ca04_21.txt.json _json\ca04_21.txt.json >nul
    if exist ca04_21.txt.resx.json del /Q ca04_21.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_21.txt
)
PsbDecompile _decrypted\ca04_22.txt.psb
if exist ca04_22.txt.json (
    move /Y ca04_22.txt.json _json\ca04_22.txt.json >nul
    if exist ca04_22.txt.resx.json del /Q ca04_22.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_22.txt
)
PsbDecompile _decrypted\ca04_23.txt.psb
if exist ca04_23.txt.json (
    move /Y ca04_23.txt.json _json\ca04_23.txt.json >nul
    if exist ca04_23.txt.resx.json del /Q ca04_23.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_23.txt
)
PsbDecompile _decrypted\ca04_24.txt.psb
if exist ca04_24.txt.json (
    move /Y ca04_24.txt.json _json\ca04_24.txt.json >nul
    if exist ca04_24.txt.resx.json del /Q ca04_24.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_24.txt
)
PsbDecompile _decrypted\ca04_25.txt.psb
if exist ca04_25.txt.json (
    move /Y ca04_25.txt.json _json\ca04_25.txt.json >nul
    if exist ca04_25.txt.resx.json del /Q ca04_25.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_25.txt
)
PsbDecompile _decrypted\ca04_26.txt.psb
if exist ca04_26.txt.json (
    move /Y ca04_26.txt.json _json\ca04_26.txt.json >nul
    if exist ca04_26.txt.resx.json del /Q ca04_26.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_26.txt
)
PsbDecompile _decrypted\ca04_mv1_01.txt.psb
if exist ca04_mv1_01.txt.json (
    move /Y ca04_mv1_01.txt.json _json\ca04_mv1_01.txt.json >nul
    if exist ca04_mv1_01.txt.resx.json del /Q ca04_mv1_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv1_01.txt
)
PsbDecompile _decrypted\ca04_mv1_02.txt.psb
if exist ca04_mv1_02.txt.json (
    move /Y ca04_mv1_02.txt.json _json\ca04_mv1_02.txt.json >nul
    if exist ca04_mv1_02.txt.resx.json del /Q ca04_mv1_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv1_02.txt
)
PsbDecompile _decrypted\ca04_mv1_03.txt.psb
if exist ca04_mv1_03.txt.json (
    move /Y ca04_mv1_03.txt.json _json\ca04_mv1_03.txt.json >nul
    if exist ca04_mv1_03.txt.resx.json del /Q ca04_mv1_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv1_03.txt
)
PsbDecompile _decrypted\ca04_mv2_01.txt.psb
if exist ca04_mv2_01.txt.json (
    move /Y ca04_mv2_01.txt.json _json\ca04_mv2_01.txt.json >nul
    if exist ca04_mv2_01.txt.resx.json del /Q ca04_mv2_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv2_01.txt
)
PsbDecompile _decrypted\ca04_mv2_02.txt.psb
if exist ca04_mv2_02.txt.json (
    move /Y ca04_mv2_02.txt.json _json\ca04_mv2_02.txt.json >nul
    if exist ca04_mv2_02.txt.resx.json del /Q ca04_mv2_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv2_02.txt
)
PsbDecompile _decrypted\ca04_mv2_03.txt.psb
if exist ca04_mv2_03.txt.json (
    move /Y ca04_mv2_03.txt.json _json\ca04_mv2_03.txt.json >nul
    if exist ca04_mv2_03.txt.resx.json del /Q ca04_mv2_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv2_03.txt
)
PsbDecompile _decrypted\ca04_mv3_01.txt.psb
if exist ca04_mv3_01.txt.json (
    move /Y ca04_mv3_01.txt.json _json\ca04_mv3_01.txt.json >nul
    if exist ca04_mv3_01.txt.resx.json del /Q ca04_mv3_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv3_01.txt
)
PsbDecompile _decrypted\ca04_mv3_02.txt.psb
if exist ca04_mv3_02.txt.json (
    move /Y ca04_mv3_02.txt.json _json\ca04_mv3_02.txt.json >nul
    if exist ca04_mv3_02.txt.resx.json del /Q ca04_mv3_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv3_02.txt
)
PsbDecompile _decrypted\ca04_mv3_03.txt.psb
if exist ca04_mv3_03.txt.json (
    move /Y ca04_mv3_03.txt.json _json\ca04_mv3_03.txt.json >nul
    if exist ca04_mv3_03.txt.resx.json del /Q ca04_mv3_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv3_03.txt
)
PsbDecompile _decrypted\ca04_mv4_01.txt.psb
if exist ca04_mv4_01.txt.json (
    move /Y ca04_mv4_01.txt.json _json\ca04_mv4_01.txt.json >nul
    if exist ca04_mv4_01.txt.resx.json del /Q ca04_mv4_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv4_01.txt
)
PsbDecompile _decrypted\ca04_mv4_02.txt.psb
if exist ca04_mv4_02.txt.json (
    move /Y ca04_mv4_02.txt.json _json\ca04_mv4_02.txt.json >nul
    if exist ca04_mv4_02.txt.resx.json del /Q ca04_mv4_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv4_02.txt
)
PsbDecompile _decrypted\ca04_mv4_03.txt.psb
if exist ca04_mv4_03.txt.json (
    move /Y ca04_mv4_03.txt.json _json\ca04_mv4_03.txt.json >nul
    if exist ca04_mv4_03.txt.resx.json del /Q ca04_mv4_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv4_03.txt
)
PsbDecompile _decrypted\ca04_mv5_01.txt.psb
if exist ca04_mv5_01.txt.json (
    move /Y ca04_mv5_01.txt.json _json\ca04_mv5_01.txt.json >nul
    if exist ca04_mv5_01.txt.resx.json del /Q ca04_mv5_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv5_01.txt
)
PsbDecompile _decrypted\ca04_mv5_02.txt.psb
if exist ca04_mv5_02.txt.json (
    move /Y ca04_mv5_02.txt.json _json\ca04_mv5_02.txt.json >nul
    if exist ca04_mv5_02.txt.resx.json del /Q ca04_mv5_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv5_02.txt
)
PsbDecompile _decrypted\ca04_mv5_03.txt.psb
if exist ca04_mv5_03.txt.json (
    move /Y ca04_mv5_03.txt.json _json\ca04_mv5_03.txt.json >nul
    if exist ca04_mv5_03.txt.resx.json del /Q ca04_mv5_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv5_03.txt
)
PsbDecompile _decrypted\ca04_mv6_01.txt.psb
if exist ca04_mv6_01.txt.json (
    move /Y ca04_mv6_01.txt.json _json\ca04_mv6_01.txt.json >nul
    if exist ca04_mv6_01.txt.resx.json del /Q ca04_mv6_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv6_01.txt
)
PsbDecompile _decrypted\ca04_mv6_02.txt.psb
if exist ca04_mv6_02.txt.json (
    move /Y ca04_mv6_02.txt.json _json\ca04_mv6_02.txt.json >nul
    if exist ca04_mv6_02.txt.resx.json del /Q ca04_mv6_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv6_02.txt
)
PsbDecompile _decrypted\ca04_mv6_03.txt.psb
if exist ca04_mv6_03.txt.json (
    move /Y ca04_mv6_03.txt.json _json\ca04_mv6_03.txt.json >nul
    if exist ca04_mv6_03.txt.resx.json del /Q ca04_mv6_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca04_mv6_03.txt
)
PsbDecompile _decrypted\ca05_01.txt.psb
if exist ca05_01.txt.json (
    move /Y ca05_01.txt.json _json\ca05_01.txt.json >nul
    if exist ca05_01.txt.resx.json del /Q ca05_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_01.txt
)
PsbDecompile _decrypted\ca05_02.txt.psb
if exist ca05_02.txt.json (
    move /Y ca05_02.txt.json _json\ca05_02.txt.json >nul
    if exist ca05_02.txt.resx.json del /Q ca05_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_02.txt
)
PsbDecompile _decrypted\ca05_03.txt.psb
if exist ca05_03.txt.json (
    move /Y ca05_03.txt.json _json\ca05_03.txt.json >nul
    if exist ca05_03.txt.resx.json del /Q ca05_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_03.txt
)
PsbDecompile _decrypted\ca05_04.txt.psb
if exist ca05_04.txt.json (
    move /Y ca05_04.txt.json _json\ca05_04.txt.json >nul
    if exist ca05_04.txt.resx.json del /Q ca05_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_04.txt
)
PsbDecompile _decrypted\ca05_05.txt.psb
if exist ca05_05.txt.json (
    move /Y ca05_05.txt.json _json\ca05_05.txt.json >nul
    if exist ca05_05.txt.resx.json del /Q ca05_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_05.txt
)
PsbDecompile _decrypted\ca05_06.txt.psb
if exist ca05_06.txt.json (
    move /Y ca05_06.txt.json _json\ca05_06.txt.json >nul
    if exist ca05_06.txt.resx.json del /Q ca05_06.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_06.txt
)
PsbDecompile _decrypted\ca05_07.txt.psb
if exist ca05_07.txt.json (
    move /Y ca05_07.txt.json _json\ca05_07.txt.json >nul
    if exist ca05_07.txt.resx.json del /Q ca05_07.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_07.txt
)
PsbDecompile _decrypted\ca05_08.txt.psb
if exist ca05_08.txt.json (
    move /Y ca05_08.txt.json _json\ca05_08.txt.json >nul
    if exist ca05_08.txt.resx.json del /Q ca05_08.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_08.txt
)
PsbDecompile _decrypted\ca05_09.txt.psb
if exist ca05_09.txt.json (
    move /Y ca05_09.txt.json _json\ca05_09.txt.json >nul
    if exist ca05_09.txt.resx.json del /Q ca05_09.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_09.txt
)
PsbDecompile _decrypted\ca05_10.txt.psb
if exist ca05_10.txt.json (
    move /Y ca05_10.txt.json _json\ca05_10.txt.json >nul
    if exist ca05_10.txt.resx.json del /Q ca05_10.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_10.txt
)
PsbDecompile _decrypted\ca05_11.txt.psb
if exist ca05_11.txt.json (
    move /Y ca05_11.txt.json _json\ca05_11.txt.json >nul
    if exist ca05_11.txt.resx.json del /Q ca05_11.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_11.txt
)
PsbDecompile _decrypted\ca05_12.txt.psb
if exist ca05_12.txt.json (
    move /Y ca05_12.txt.json _json\ca05_12.txt.json >nul
    if exist ca05_12.txt.resx.json del /Q ca05_12.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_12.txt
)
PsbDecompile _decrypted\ca05_13.txt.psb
if exist ca05_13.txt.json (
    move /Y ca05_13.txt.json _json\ca05_13.txt.json >nul
    if exist ca05_13.txt.resx.json del /Q ca05_13.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_13.txt
)
PsbDecompile _decrypted\ca05_14.txt.psb
if exist ca05_14.txt.json (
    move /Y ca05_14.txt.json _json\ca05_14.txt.json >nul
    if exist ca05_14.txt.resx.json del /Q ca05_14.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_14.txt
)
PsbDecompile _decrypted\ca05_15.txt.psb
if exist ca05_15.txt.json (
    move /Y ca05_15.txt.json _json\ca05_15.txt.json >nul
    if exist ca05_15.txt.resx.json del /Q ca05_15.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_15.txt
)
PsbDecompile _decrypted\ca05_16.txt.psb
if exist ca05_16.txt.json (
    move /Y ca05_16.txt.json _json\ca05_16.txt.json >nul
    if exist ca05_16.txt.resx.json del /Q ca05_16.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_16.txt
)
PsbDecompile _decrypted\ca05_17.txt.psb
if exist ca05_17.txt.json (
    move /Y ca05_17.txt.json _json\ca05_17.txt.json >nul
    if exist ca05_17.txt.resx.json del /Q ca05_17.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_17.txt
)
PsbDecompile _decrypted\ca05_18.txt.psb
if exist ca05_18.txt.json (
    move /Y ca05_18.txt.json _json\ca05_18.txt.json >nul
    if exist ca05_18.txt.resx.json del /Q ca05_18.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_18.txt
)
PsbDecompile _decrypted\ca05_19.txt.psb
if exist ca05_19.txt.json (
    move /Y ca05_19.txt.json _json\ca05_19.txt.json >nul
    if exist ca05_19.txt.resx.json del /Q ca05_19.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_19.txt
)
PsbDecompile _decrypted\ca05_20.txt.psb
if exist ca05_20.txt.json (
    move /Y ca05_20.txt.json _json\ca05_20.txt.json >nul
    if exist ca05_20.txt.resx.json del /Q ca05_20.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_20.txt
)
PsbDecompile _decrypted\ca05_21.txt.psb
if exist ca05_21.txt.json (
    move /Y ca05_21.txt.json _json\ca05_21.txt.json >nul
    if exist ca05_21.txt.resx.json del /Q ca05_21.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_21.txt
)
PsbDecompile _decrypted\ca05_22.txt.psb
if exist ca05_22.txt.json (
    move /Y ca05_22.txt.json _json\ca05_22.txt.json >nul
    if exist ca05_22.txt.resx.json del /Q ca05_22.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_22.txt
)
PsbDecompile _decrypted\ca05_23.txt.psb
if exist ca05_23.txt.json (
    move /Y ca05_23.txt.json _json\ca05_23.txt.json >nul
    if exist ca05_23.txt.resx.json del /Q ca05_23.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_23.txt
)
PsbDecompile _decrypted\ca05_24.txt.psb
if exist ca05_24.txt.json (
    move /Y ca05_24.txt.json _json\ca05_24.txt.json >nul
    if exist ca05_24.txt.resx.json del /Q ca05_24.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_24.txt
)
PsbDecompile _decrypted\ca05_25.txt.psb
if exist ca05_25.txt.json (
    move /Y ca05_25.txt.json _json\ca05_25.txt.json >nul
    if exist ca05_25.txt.resx.json del /Q ca05_25.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_25.txt
)
PsbDecompile _decrypted\ca05_26.txt.psb
if exist ca05_26.txt.json (
    move /Y ca05_26.txt.json _json\ca05_26.txt.json >nul
    if exist ca05_26.txt.resx.json del /Q ca05_26.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_26.txt
)
PsbDecompile _decrypted\ca05_27.txt.psb
if exist ca05_27.txt.json (
    move /Y ca05_27.txt.json _json\ca05_27.txt.json >nul
    if exist ca05_27.txt.resx.json del /Q ca05_27.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_27.txt
)
PsbDecompile _decrypted\ca05_28.txt.psb
if exist ca05_28.txt.json (
    move /Y ca05_28.txt.json _json\ca05_28.txt.json >nul
    if exist ca05_28.txt.resx.json del /Q ca05_28.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_28.txt
)
PsbDecompile _decrypted\ca05_29.txt.psb
if exist ca05_29.txt.json (
    move /Y ca05_29.txt.json _json\ca05_29.txt.json >nul
    if exist ca05_29.txt.resx.json del /Q ca05_29.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_29.txt
)
PsbDecompile _decrypted\ca05_30.txt.psb
if exist ca05_30.txt.json (
    move /Y ca05_30.txt.json _json\ca05_30.txt.json >nul
    if exist ca05_30.txt.resx.json del /Q ca05_30.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_30.txt
)
PsbDecompile _decrypted\ca05_31.txt.psb
if exist ca05_31.txt.json (
    move /Y ca05_31.txt.json _json\ca05_31.txt.json >nul
    if exist ca05_31.txt.resx.json del /Q ca05_31.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_31.txt
)
PsbDecompile _decrypted\ca05_mv1_01.txt.psb
if exist ca05_mv1_01.txt.json (
    move /Y ca05_mv1_01.txt.json _json\ca05_mv1_01.txt.json >nul
    if exist ca05_mv1_01.txt.resx.json del /Q ca05_mv1_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv1_01.txt
)
PsbDecompile _decrypted\ca05_mv1_02.txt.psb
if exist ca05_mv1_02.txt.json (
    move /Y ca05_mv1_02.txt.json _json\ca05_mv1_02.txt.json >nul
    if exist ca05_mv1_02.txt.resx.json del /Q ca05_mv1_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv1_02.txt
)
PsbDecompile _decrypted\ca05_mv1_03.txt.psb
if exist ca05_mv1_03.txt.json (
    move /Y ca05_mv1_03.txt.json _json\ca05_mv1_03.txt.json >nul
    if exist ca05_mv1_03.txt.resx.json del /Q ca05_mv1_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv1_03.txt
)
PsbDecompile _decrypted\ca05_mv2_01.txt.psb
if exist ca05_mv2_01.txt.json (
    move /Y ca05_mv2_01.txt.json _json\ca05_mv2_01.txt.json >nul
    if exist ca05_mv2_01.txt.resx.json del /Q ca05_mv2_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv2_01.txt
)
PsbDecompile _decrypted\ca05_mv2_02.txt.psb
if exist ca05_mv2_02.txt.json (
    move /Y ca05_mv2_02.txt.json _json\ca05_mv2_02.txt.json >nul
    if exist ca05_mv2_02.txt.resx.json del /Q ca05_mv2_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv2_02.txt
)
PsbDecompile _decrypted\ca05_mv2_03.txt.psb
if exist ca05_mv2_03.txt.json (
    move /Y ca05_mv2_03.txt.json _json\ca05_mv2_03.txt.json >nul
    if exist ca05_mv2_03.txt.resx.json del /Q ca05_mv2_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv2_03.txt
)
PsbDecompile _decrypted\ca05_mv3_01.txt.psb
if exist ca05_mv3_01.txt.json (
    move /Y ca05_mv3_01.txt.json _json\ca05_mv3_01.txt.json >nul
    if exist ca05_mv3_01.txt.resx.json del /Q ca05_mv3_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv3_01.txt
)
PsbDecompile _decrypted\ca05_mv3_02.txt.psb
if exist ca05_mv3_02.txt.json (
    move /Y ca05_mv3_02.txt.json _json\ca05_mv3_02.txt.json >nul
    if exist ca05_mv3_02.txt.resx.json del /Q ca05_mv3_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv3_02.txt
)
PsbDecompile _decrypted\ca05_mv3_03.txt.psb
if exist ca05_mv3_03.txt.json (
    move /Y ca05_mv3_03.txt.json _json\ca05_mv3_03.txt.json >nul
    if exist ca05_mv3_03.txt.resx.json del /Q ca05_mv3_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv3_03.txt
)
PsbDecompile _decrypted\ca05_mv4_01.txt.psb
if exist ca05_mv4_01.txt.json (
    move /Y ca05_mv4_01.txt.json _json\ca05_mv4_01.txt.json >nul
    if exist ca05_mv4_01.txt.resx.json del /Q ca05_mv4_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv4_01.txt
)
PsbDecompile _decrypted\ca05_mv4_02.txt.psb
if exist ca05_mv4_02.txt.json (
    move /Y ca05_mv4_02.txt.json _json\ca05_mv4_02.txt.json >nul
    if exist ca05_mv4_02.txt.resx.json del /Q ca05_mv4_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv4_02.txt
)
PsbDecompile _decrypted\ca05_mv4_03.txt.psb
if exist ca05_mv4_03.txt.json (
    move /Y ca05_mv4_03.txt.json _json\ca05_mv4_03.txt.json >nul
    if exist ca05_mv4_03.txt.resx.json del /Q ca05_mv4_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv4_03.txt
)
PsbDecompile _decrypted\ca05_mv5_01.txt.psb
if exist ca05_mv5_01.txt.json (
    move /Y ca05_mv5_01.txt.json _json\ca05_mv5_01.txt.json >nul
    if exist ca05_mv5_01.txt.resx.json del /Q ca05_mv5_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv5_01.txt
)
PsbDecompile _decrypted\ca05_mv5_02.txt.psb
if exist ca05_mv5_02.txt.json (
    move /Y ca05_mv5_02.txt.json _json\ca05_mv5_02.txt.json >nul
    if exist ca05_mv5_02.txt.resx.json del /Q ca05_mv5_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv5_02.txt
)
PsbDecompile _decrypted\ca05_mv5_03.txt.psb
if exist ca05_mv5_03.txt.json (
    move /Y ca05_mv5_03.txt.json _json\ca05_mv5_03.txt.json >nul
    if exist ca05_mv5_03.txt.resx.json del /Q ca05_mv5_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv5_03.txt
)
PsbDecompile _decrypted\ca05_mv6_01.txt.psb
if exist ca05_mv6_01.txt.json (
    move /Y ca05_mv6_01.txt.json _json\ca05_mv6_01.txt.json >nul
    if exist ca05_mv6_01.txt.resx.json del /Q ca05_mv6_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv6_01.txt
)
PsbDecompile _decrypted\ca05_mv6_02.txt.psb
if exist ca05_mv6_02.txt.json (
    move /Y ca05_mv6_02.txt.json _json\ca05_mv6_02.txt.json >nul
    if exist ca05_mv6_02.txt.resx.json del /Q ca05_mv6_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv6_02.txt
)
PsbDecompile _decrypted\ca05_mv6_03.txt.psb
if exist ca05_mv6_03.txt.json (
    move /Y ca05_mv6_03.txt.json _json\ca05_mv6_03.txt.json >nul
    if exist ca05_mv6_03.txt.resx.json del /Q ca05_mv6_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca05_mv6_03.txt
)
PsbDecompile _decrypted\ca06_01.txt.psb
if exist ca06_01.txt.json (
    move /Y ca06_01.txt.json _json\ca06_01.txt.json >nul
    if exist ca06_01.txt.resx.json del /Q ca06_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_01.txt
)
PsbDecompile _decrypted\ca06_02.txt.psb
if exist ca06_02.txt.json (
    move /Y ca06_02.txt.json _json\ca06_02.txt.json >nul
    if exist ca06_02.txt.resx.json del /Q ca06_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_02.txt
)
PsbDecompile _decrypted\ca06_03.txt.psb
if exist ca06_03.txt.json (
    move /Y ca06_03.txt.json _json\ca06_03.txt.json >nul
    if exist ca06_03.txt.resx.json del /Q ca06_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_03.txt
)
PsbDecompile _decrypted\ca06_04.txt.psb
if exist ca06_04.txt.json (
    move /Y ca06_04.txt.json _json\ca06_04.txt.json >nul
    if exist ca06_04.txt.resx.json del /Q ca06_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_04.txt
)
PsbDecompile _decrypted\ca06_05.txt.psb
if exist ca06_05.txt.json (
    move /Y ca06_05.txt.json _json\ca06_05.txt.json >nul
    if exist ca06_05.txt.resx.json del /Q ca06_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_05.txt
)
PsbDecompile _decrypted\ca06_06.txt.psb
if exist ca06_06.txt.json (
    move /Y ca06_06.txt.json _json\ca06_06.txt.json >nul
    if exist ca06_06.txt.resx.json del /Q ca06_06.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_06.txt
)
PsbDecompile _decrypted\ca06_07.txt.psb
if exist ca06_07.txt.json (
    move /Y ca06_07.txt.json _json\ca06_07.txt.json >nul
    if exist ca06_07.txt.resx.json del /Q ca06_07.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_07.txt
)
PsbDecompile _decrypted\ca06_08.txt.psb
if exist ca06_08.txt.json (
    move /Y ca06_08.txt.json _json\ca06_08.txt.json >nul
    if exist ca06_08.txt.resx.json del /Q ca06_08.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_08.txt
)
PsbDecompile _decrypted\ca06_09.txt.psb
if exist ca06_09.txt.json (
    move /Y ca06_09.txt.json _json\ca06_09.txt.json >nul
    if exist ca06_09.txt.resx.json del /Q ca06_09.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_09.txt
)
PsbDecompile _decrypted\ca06_10.txt.psb
if exist ca06_10.txt.json (
    move /Y ca06_10.txt.json _json\ca06_10.txt.json >nul
    if exist ca06_10.txt.resx.json del /Q ca06_10.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_10.txt
)
PsbDecompile _decrypted\ca06_11.txt.psb
if exist ca06_11.txt.json (
    move /Y ca06_11.txt.json _json\ca06_11.txt.json >nul
    if exist ca06_11.txt.resx.json del /Q ca06_11.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_11.txt
)
PsbDecompile _decrypted\ca06_12.txt.psb
if exist ca06_12.txt.json (
    move /Y ca06_12.txt.json _json\ca06_12.txt.json >nul
    if exist ca06_12.txt.resx.json del /Q ca06_12.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_12.txt
)
PsbDecompile _decrypted\ca06_13.txt.psb
if exist ca06_13.txt.json (
    move /Y ca06_13.txt.json _json\ca06_13.txt.json >nul
    if exist ca06_13.txt.resx.json del /Q ca06_13.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_13.txt
)
PsbDecompile _decrypted\ca06_14.txt.psb
if exist ca06_14.txt.json (
    move /Y ca06_14.txt.json _json\ca06_14.txt.json >nul
    if exist ca06_14.txt.resx.json del /Q ca06_14.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_14.txt
)
PsbDecompile _decrypted\ca06_15.txt.psb
if exist ca06_15.txt.json (
    move /Y ca06_15.txt.json _json\ca06_15.txt.json >nul
    if exist ca06_15.txt.resx.json del /Q ca06_15.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_15.txt
)
PsbDecompile _decrypted\ca06_16.txt.psb
if exist ca06_16.txt.json (
    move /Y ca06_16.txt.json _json\ca06_16.txt.json >nul
    if exist ca06_16.txt.resx.json del /Q ca06_16.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_16.txt
)
PsbDecompile _decrypted\ca06_17.txt.psb
if exist ca06_17.txt.json (
    move /Y ca06_17.txt.json _json\ca06_17.txt.json >nul
    if exist ca06_17.txt.resx.json del /Q ca06_17.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_17.txt
)
PsbDecompile _decrypted\ca06_18.txt.psb
if exist ca06_18.txt.json (
    move /Y ca06_18.txt.json _json\ca06_18.txt.json >nul
    if exist ca06_18.txt.resx.json del /Q ca06_18.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_18.txt
)
PsbDecompile _decrypted\ca06_19.txt.psb
if exist ca06_19.txt.json (
    move /Y ca06_19.txt.json _json\ca06_19.txt.json >nul
    if exist ca06_19.txt.resx.json del /Q ca06_19.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_19.txt
)
PsbDecompile _decrypted\ca06_20.txt.psb
if exist ca06_20.txt.json (
    move /Y ca06_20.txt.json _json\ca06_20.txt.json >nul
    if exist ca06_20.txt.resx.json del /Q ca06_20.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_20.txt
)
PsbDecompile _decrypted\ca06_21.txt.psb
if exist ca06_21.txt.json (
    move /Y ca06_21.txt.json _json\ca06_21.txt.json >nul
    if exist ca06_21.txt.resx.json del /Q ca06_21.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_21.txt
)
PsbDecompile _decrypted\ca06_22.txt.psb
if exist ca06_22.txt.json (
    move /Y ca06_22.txt.json _json\ca06_22.txt.json >nul
    if exist ca06_22.txt.resx.json del /Q ca06_22.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_22.txt
)
PsbDecompile _decrypted\ca06_23.txt.psb
if exist ca06_23.txt.json (
    move /Y ca06_23.txt.json _json\ca06_23.txt.json >nul
    if exist ca06_23.txt.resx.json del /Q ca06_23.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_23.txt
)
PsbDecompile _decrypted\ca06_24.txt.psb
if exist ca06_24.txt.json (
    move /Y ca06_24.txt.json _json\ca06_24.txt.json >nul
    if exist ca06_24.txt.resx.json del /Q ca06_24.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_24.txt
)
PsbDecompile _decrypted\ca06_25.txt.psb
if exist ca06_25.txt.json (
    move /Y ca06_25.txt.json _json\ca06_25.txt.json >nul
    if exist ca06_25.txt.resx.json del /Q ca06_25.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_25.txt
)
PsbDecompile _decrypted\ca06_26.txt.psb
if exist ca06_26.txt.json (
    move /Y ca06_26.txt.json _json\ca06_26.txt.json >nul
    if exist ca06_26.txt.resx.json del /Q ca06_26.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_26.txt
)
PsbDecompile _decrypted\ca06_27.txt.psb
if exist ca06_27.txt.json (
    move /Y ca06_27.txt.json _json\ca06_27.txt.json >nul
    if exist ca06_27.txt.resx.json del /Q ca06_27.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_27.txt
)
PsbDecompile _decrypted\ca06_28.txt.psb
if exist ca06_28.txt.json (
    move /Y ca06_28.txt.json _json\ca06_28.txt.json >nul
    if exist ca06_28.txt.resx.json del /Q ca06_28.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_28.txt
)
PsbDecompile _decrypted\ca06_29.txt.psb
if exist ca06_29.txt.json (
    move /Y ca06_29.txt.json _json\ca06_29.txt.json >nul
    if exist ca06_29.txt.resx.json del /Q ca06_29.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_29.txt
)
PsbDecompile _decrypted\ca06_30.txt.psb
if exist ca06_30.txt.json (
    move /Y ca06_30.txt.json _json\ca06_30.txt.json >nul
    if exist ca06_30.txt.resx.json del /Q ca06_30.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_30.txt
)
PsbDecompile _decrypted\ca06_31.txt.psb
if exist ca06_31.txt.json (
    move /Y ca06_31.txt.json _json\ca06_31.txt.json >nul
    if exist ca06_31.txt.resx.json del /Q ca06_31.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_31.txt
)
PsbDecompile _decrypted\ca06_mv1_01.txt.psb
if exist ca06_mv1_01.txt.json (
    move /Y ca06_mv1_01.txt.json _json\ca06_mv1_01.txt.json >nul
    if exist ca06_mv1_01.txt.resx.json del /Q ca06_mv1_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv1_01.txt
)
PsbDecompile _decrypted\ca06_mv1_02.txt.psb
if exist ca06_mv1_02.txt.json (
    move /Y ca06_mv1_02.txt.json _json\ca06_mv1_02.txt.json >nul
    if exist ca06_mv1_02.txt.resx.json del /Q ca06_mv1_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv1_02.txt
)
PsbDecompile _decrypted\ca06_mv1_03.txt.psb
if exist ca06_mv1_03.txt.json (
    move /Y ca06_mv1_03.txt.json _json\ca06_mv1_03.txt.json >nul
    if exist ca06_mv1_03.txt.resx.json del /Q ca06_mv1_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv1_03.txt
)
PsbDecompile _decrypted\ca06_mv2_01.txt.psb
if exist ca06_mv2_01.txt.json (
    move /Y ca06_mv2_01.txt.json _json\ca06_mv2_01.txt.json >nul
    if exist ca06_mv2_01.txt.resx.json del /Q ca06_mv2_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv2_01.txt
)
PsbDecompile _decrypted\ca06_mv2_02.txt.psb
if exist ca06_mv2_02.txt.json (
    move /Y ca06_mv2_02.txt.json _json\ca06_mv2_02.txt.json >nul
    if exist ca06_mv2_02.txt.resx.json del /Q ca06_mv2_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv2_02.txt
)
PsbDecompile _decrypted\ca06_mv2_03.txt.psb
if exist ca06_mv2_03.txt.json (
    move /Y ca06_mv2_03.txt.json _json\ca06_mv2_03.txt.json >nul
    if exist ca06_mv2_03.txt.resx.json del /Q ca06_mv2_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv2_03.txt
)
PsbDecompile _decrypted\ca06_mv3_01.txt.psb
if exist ca06_mv3_01.txt.json (
    move /Y ca06_mv3_01.txt.json _json\ca06_mv3_01.txt.json >nul
    if exist ca06_mv3_01.txt.resx.json del /Q ca06_mv3_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv3_01.txt
)
PsbDecompile _decrypted\ca06_mv3_02.txt.psb
if exist ca06_mv3_02.txt.json (
    move /Y ca06_mv3_02.txt.json _json\ca06_mv3_02.txt.json >nul
    if exist ca06_mv3_02.txt.resx.json del /Q ca06_mv3_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv3_02.txt
)
PsbDecompile _decrypted\ca06_mv3_03.txt.psb
if exist ca06_mv3_03.txt.json (
    move /Y ca06_mv3_03.txt.json _json\ca06_mv3_03.txt.json >nul
    if exist ca06_mv3_03.txt.resx.json del /Q ca06_mv3_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv3_03.txt
)
PsbDecompile _decrypted\ca06_mv4_01.txt.psb
if exist ca06_mv4_01.txt.json (
    move /Y ca06_mv4_01.txt.json _json\ca06_mv4_01.txt.json >nul
    if exist ca06_mv4_01.txt.resx.json del /Q ca06_mv4_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv4_01.txt
)
PsbDecompile _decrypted\ca06_mv4_02.txt.psb
if exist ca06_mv4_02.txt.json (
    move /Y ca06_mv4_02.txt.json _json\ca06_mv4_02.txt.json >nul
    if exist ca06_mv4_02.txt.resx.json del /Q ca06_mv4_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv4_02.txt
)
PsbDecompile _decrypted\ca06_mv4_03.txt.psb
if exist ca06_mv4_03.txt.json (
    move /Y ca06_mv4_03.txt.json _json\ca06_mv4_03.txt.json >nul
    if exist ca06_mv4_03.txt.resx.json del /Q ca06_mv4_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv4_03.txt
)
PsbDecompile _decrypted\ca06_mv5_01.txt.psb
if exist ca06_mv5_01.txt.json (
    move /Y ca06_mv5_01.txt.json _json\ca06_mv5_01.txt.json >nul
    if exist ca06_mv5_01.txt.resx.json del /Q ca06_mv5_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv5_01.txt
)
PsbDecompile _decrypted\ca06_mv5_02.txt.psb
if exist ca06_mv5_02.txt.json (
    move /Y ca06_mv5_02.txt.json _json\ca06_mv5_02.txt.json >nul
    if exist ca06_mv5_02.txt.resx.json del /Q ca06_mv5_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv5_02.txt
)
PsbDecompile _decrypted\ca06_mv5_03.txt.psb
if exist ca06_mv5_03.txt.json (
    move /Y ca06_mv5_03.txt.json _json\ca06_mv5_03.txt.json >nul
    if exist ca06_mv5_03.txt.resx.json del /Q ca06_mv5_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv5_03.txt
)
PsbDecompile _decrypted\ca06_mv6_01.txt.psb
if exist ca06_mv6_01.txt.json (
    move /Y ca06_mv6_01.txt.json _json\ca06_mv6_01.txt.json >nul
    if exist ca06_mv6_01.txt.resx.json del /Q ca06_mv6_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv6_01.txt
)
PsbDecompile _decrypted\ca06_mv6_02.txt.psb
if exist ca06_mv6_02.txt.json (
    move /Y ca06_mv6_02.txt.json _json\ca06_mv6_02.txt.json >nul
    if exist ca06_mv6_02.txt.resx.json del /Q ca06_mv6_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv6_02.txt
)
PsbDecompile _decrypted\ca06_mv6_03.txt.psb
if exist ca06_mv6_03.txt.json (
    move /Y ca06_mv6_03.txt.json _json\ca06_mv6_03.txt.json >nul
    if exist ca06_mv6_03.txt.resx.json del /Q ca06_mv6_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ca06_mv6_03.txt
)
PsbDecompile _decrypted\dummy.txt.psb
if exist dummy.txt.json (
    move /Y dummy.txt.json _json\dummy.txt.json >nul
    if exist dummy.txt.resx.json del /Q dummy.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: dummy.txt
)
PsbDecompile _decrypted\ed01_01_01.txt.psb
if exist ed01_01_01.txt.json (
    move /Y ed01_01_01.txt.json _json\ed01_01_01.txt.json >nul
    if exist ed01_01_01.txt.resx.json del /Q ed01_01_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed01_01_01.txt
)
PsbDecompile _decrypted\ed01_01_02.txt.psb
if exist ed01_01_02.txt.json (
    move /Y ed01_01_02.txt.json _json\ed01_01_02.txt.json >nul
    if exist ed01_01_02.txt.resx.json del /Q ed01_01_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed01_01_02.txt
)
PsbDecompile _decrypted\ed01_02_01.txt.psb
if exist ed01_02_01.txt.json (
    move /Y ed01_02_01.txt.json _json\ed01_02_01.txt.json >nul
    if exist ed01_02_01.txt.resx.json del /Q ed01_02_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed01_02_01.txt
)
PsbDecompile _decrypted\ed01_02_02.txt.psb
if exist ed01_02_02.txt.json (
    move /Y ed01_02_02.txt.json _json\ed01_02_02.txt.json >nul
    if exist ed01_02_02.txt.resx.json del /Q ed01_02_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed01_02_02.txt
)
PsbDecompile _decrypted\ed01_02_03.txt.psb
if exist ed01_02_03.txt.json (
    move /Y ed01_02_03.txt.json _json\ed01_02_03.txt.json >nul
    if exist ed01_02_03.txt.resx.json del /Q ed01_02_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed01_02_03.txt
)
PsbDecompile _decrypted\ed01_02_04.txt.psb
if exist ed01_02_04.txt.json (
    move /Y ed01_02_04.txt.json _json\ed01_02_04.txt.json >nul
    if exist ed01_02_04.txt.resx.json del /Q ed01_02_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed01_02_04.txt
)
PsbDecompile _decrypted\ed01_02_05.txt.psb
if exist ed01_02_05.txt.json (
    move /Y ed01_02_05.txt.json _json\ed01_02_05.txt.json >nul
    if exist ed01_02_05.txt.resx.json del /Q ed01_02_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed01_02_05.txt
)
PsbDecompile _decrypted\ed02_01_01.txt.psb
if exist ed02_01_01.txt.json (
    move /Y ed02_01_01.txt.json _json\ed02_01_01.txt.json >nul
    if exist ed02_01_01.txt.resx.json del /Q ed02_01_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed02_01_01.txt
)
PsbDecompile _decrypted\ed02_01_02.txt.psb
if exist ed02_01_02.txt.json (
    move /Y ed02_01_02.txt.json _json\ed02_01_02.txt.json >nul
    if exist ed02_01_02.txt.resx.json del /Q ed02_01_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed02_01_02.txt
)
PsbDecompile _decrypted\ed02_02_01.txt.psb
if exist ed02_02_01.txt.json (
    move /Y ed02_02_01.txt.json _json\ed02_02_01.txt.json >nul
    if exist ed02_02_01.txt.resx.json del /Q ed02_02_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed02_02_01.txt
)
PsbDecompile _decrypted\ed02_02_03.txt.psb
if exist ed02_02_03.txt.json (
    move /Y ed02_02_03.txt.json _json\ed02_02_03.txt.json >nul
    if exist ed02_02_03.txt.resx.json del /Q ed02_02_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed02_02_03.txt
)
PsbDecompile _decrypted\ed02_02_04.txt.psb
if exist ed02_02_04.txt.json (
    move /Y ed02_02_04.txt.json _json\ed02_02_04.txt.json >nul
    if exist ed02_02_04.txt.resx.json del /Q ed02_02_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed02_02_04.txt
)
PsbDecompile _decrypted\ed03_01_01.txt.psb
if exist ed03_01_01.txt.json (
    move /Y ed03_01_01.txt.json _json\ed03_01_01.txt.json >nul
    if exist ed03_01_01.txt.resx.json del /Q ed03_01_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed03_01_01.txt
)
PsbDecompile _decrypted\ed03_01_02.txt.psb
if exist ed03_01_02.txt.json (
    move /Y ed03_01_02.txt.json _json\ed03_01_02.txt.json >nul
    if exist ed03_01_02.txt.resx.json del /Q ed03_01_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed03_01_02.txt
)
PsbDecompile _decrypted\ed03_02_01.txt.psb
if exist ed03_02_01.txt.json (
    move /Y ed03_02_01.txt.json _json\ed03_02_01.txt.json >nul
    if exist ed03_02_01.txt.resx.json del /Q ed03_02_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed03_02_01.txt
)
PsbDecompile _decrypted\ed03_02_03.txt.psb
if exist ed03_02_03.txt.json (
    move /Y ed03_02_03.txt.json _json\ed03_02_03.txt.json >nul
    if exist ed03_02_03.txt.resx.json del /Q ed03_02_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed03_02_03.txt
)
PsbDecompile _decrypted\ed03_02_04.txt.psb
if exist ed03_02_04.txt.json (
    move /Y ed03_02_04.txt.json _json\ed03_02_04.txt.json >nul
    if exist ed03_02_04.txt.resx.json del /Q ed03_02_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed03_02_04.txt
)
PsbDecompile _decrypted\ed04_01_01.txt.psb
if exist ed04_01_01.txt.json (
    move /Y ed04_01_01.txt.json _json\ed04_01_01.txt.json >nul
    if exist ed04_01_01.txt.resx.json del /Q ed04_01_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed04_01_01.txt
)
PsbDecompile _decrypted\ed04_01_02.txt.psb
if exist ed04_01_02.txt.json (
    move /Y ed04_01_02.txt.json _json\ed04_01_02.txt.json >nul
    if exist ed04_01_02.txt.resx.json del /Q ed04_01_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed04_01_02.txt
)
PsbDecompile _decrypted\ed04_02_01.txt.psb
if exist ed04_02_01.txt.json (
    move /Y ed04_02_01.txt.json _json\ed04_02_01.txt.json >nul
    if exist ed04_02_01.txt.resx.json del /Q ed04_02_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed04_02_01.txt
)
PsbDecompile _decrypted\ed04_02_03.txt.psb
if exist ed04_02_03.txt.json (
    move /Y ed04_02_03.txt.json _json\ed04_02_03.txt.json >nul
    if exist ed04_02_03.txt.resx.json del /Q ed04_02_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed04_02_03.txt
)
PsbDecompile _decrypted\ed04_02_04.txt.psb
if exist ed04_02_04.txt.json (
    move /Y ed04_02_04.txt.json _json\ed04_02_04.txt.json >nul
    if exist ed04_02_04.txt.resx.json del /Q ed04_02_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed04_02_04.txt
)
PsbDecompile _decrypted\ed05_01_01.txt.psb
if exist ed05_01_01.txt.json (
    move /Y ed05_01_01.txt.json _json\ed05_01_01.txt.json >nul
    if exist ed05_01_01.txt.resx.json del /Q ed05_01_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed05_01_01.txt
)
PsbDecompile _decrypted\ed05_01_02.txt.psb
if exist ed05_01_02.txt.json (
    move /Y ed05_01_02.txt.json _json\ed05_01_02.txt.json >nul
    if exist ed05_01_02.txt.resx.json del /Q ed05_01_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed05_01_02.txt
)
PsbDecompile _decrypted\ed05_02_01.txt.psb
if exist ed05_02_01.txt.json (
    move /Y ed05_02_01.txt.json _json\ed05_02_01.txt.json >nul
    if exist ed05_02_01.txt.resx.json del /Q ed05_02_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed05_02_01.txt
)
PsbDecompile _decrypted\ed05_02_03.txt.psb
if exist ed05_02_03.txt.json (
    move /Y ed05_02_03.txt.json _json\ed05_02_03.txt.json >nul
    if exist ed05_02_03.txt.resx.json del /Q ed05_02_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed05_02_03.txt
)
PsbDecompile _decrypted\ed05_02_04.txt.psb
if exist ed05_02_04.txt.json (
    move /Y ed05_02_04.txt.json _json\ed05_02_04.txt.json >nul
    if exist ed05_02_04.txt.resx.json del /Q ed05_02_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed05_02_04.txt
)
PsbDecompile _decrypted\ed06_01_01.txt.psb
if exist ed06_01_01.txt.json (
    move /Y ed06_01_01.txt.json _json\ed06_01_01.txt.json >nul
    if exist ed06_01_01.txt.resx.json del /Q ed06_01_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_01_01.txt
)
PsbDecompile _decrypted\ed06_01_02.txt.psb
if exist ed06_01_02.txt.json (
    move /Y ed06_01_02.txt.json _json\ed06_01_02.txt.json >nul
    if exist ed06_01_02.txt.resx.json del /Q ed06_01_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_01_02.txt
)
PsbDecompile _decrypted\ed06_01_03.txt.psb
if exist ed06_01_03.txt.json (
    move /Y ed06_01_03.txt.json _json\ed06_01_03.txt.json >nul
    if exist ed06_01_03.txt.resx.json del /Q ed06_01_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_01_03.txt
)
PsbDecompile _decrypted\ed06_01_04.txt.psb
if exist ed06_01_04.txt.json (
    move /Y ed06_01_04.txt.json _json\ed06_01_04.txt.json >nul
    if exist ed06_01_04.txt.resx.json del /Q ed06_01_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_01_04.txt
)
PsbDecompile _decrypted\ed06_01_05.txt.psb
if exist ed06_01_05.txt.json (
    move /Y ed06_01_05.txt.json _json\ed06_01_05.txt.json >nul
    if exist ed06_01_05.txt.resx.json del /Q ed06_01_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_01_05.txt
)
PsbDecompile _decrypted\ed06_01_06.txt.psb
if exist ed06_01_06.txt.json (
    move /Y ed06_01_06.txt.json _json\ed06_01_06.txt.json >nul
    if exist ed06_01_06.txt.resx.json del /Q ed06_01_06.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_01_06.txt
)
PsbDecompile _decrypted\ed06_02_01.txt.psb
if exist ed06_02_01.txt.json (
    move /Y ed06_02_01.txt.json _json\ed06_02_01.txt.json >nul
    if exist ed06_02_01.txt.resx.json del /Q ed06_02_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_01.txt
)
PsbDecompile _decrypted\ed06_02_02.txt.psb
if exist ed06_02_02.txt.json (
    move /Y ed06_02_02.txt.json _json\ed06_02_02.txt.json >nul
    if exist ed06_02_02.txt.resx.json del /Q ed06_02_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_02.txt
)
PsbDecompile _decrypted\ed06_02_03.txt.psb
if exist ed06_02_03.txt.json (
    move /Y ed06_02_03.txt.json _json\ed06_02_03.txt.json >nul
    if exist ed06_02_03.txt.resx.json del /Q ed06_02_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_03.txt
)
PsbDecompile _decrypted\ed06_02_04.txt.psb
if exist ed06_02_04.txt.json (
    move /Y ed06_02_04.txt.json _json\ed06_02_04.txt.json >nul
    if exist ed06_02_04.txt.resx.json del /Q ed06_02_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_04.txt
)
PsbDecompile _decrypted\ed06_02_05.txt.psb
if exist ed06_02_05.txt.json (
    move /Y ed06_02_05.txt.json _json\ed06_02_05.txt.json >nul
    if exist ed06_02_05.txt.resx.json del /Q ed06_02_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_05.txt
)
PsbDecompile _decrypted\ed06_02_06.txt.psb
if exist ed06_02_06.txt.json (
    move /Y ed06_02_06.txt.json _json\ed06_02_06.txt.json >nul
    if exist ed06_02_06.txt.resx.json del /Q ed06_02_06.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_06.txt
)
PsbDecompile _decrypted\ed06_02_07.txt.psb
if exist ed06_02_07.txt.json (
    move /Y ed06_02_07.txt.json _json\ed06_02_07.txt.json >nul
    if exist ed06_02_07.txt.resx.json del /Q ed06_02_07.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_07.txt
)
PsbDecompile _decrypted\ed06_02_08.txt.psb
if exist ed06_02_08.txt.json (
    move /Y ed06_02_08.txt.json _json\ed06_02_08.txt.json >nul
    if exist ed06_02_08.txt.resx.json del /Q ed06_02_08.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_08.txt
)
PsbDecompile _decrypted\ed06_02_09.txt.psb
if exist ed06_02_09.txt.json (
    move /Y ed06_02_09.txt.json _json\ed06_02_09.txt.json >nul
    if exist ed06_02_09.txt.resx.json del /Q ed06_02_09.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_09.txt
)
PsbDecompile _decrypted\ed06_02_10.txt.psb
if exist ed06_02_10.txt.json (
    move /Y ed06_02_10.txt.json _json\ed06_02_10.txt.json >nul
    if exist ed06_02_10.txt.resx.json del /Q ed06_02_10.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: ed06_02_10.txt
)
PsbDecompile _decrypted\enlist.txt.psb
if exist enlist.txt.json (
    move /Y enlist.txt.json _json\enlist.txt.json >nul
    if exist enlist.txt.resx.json del /Q enlist.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: enlist.txt
)
PsbDecompile _decrypted\gr_01_01.txt.psb
if exist gr_01_01.txt.json (
    move /Y gr_01_01.txt.json _json\gr_01_01.txt.json >nul
    if exist gr_01_01.txt.resx.json del /Q gr_01_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_01_01.txt
)
PsbDecompile _decrypted\gr_01_02.txt.psb
if exist gr_01_02.txt.json (
    move /Y gr_01_02.txt.json _json\gr_01_02.txt.json >nul
    if exist gr_01_02.txt.resx.json del /Q gr_01_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_01_02.txt
)
PsbDecompile _decrypted\gr_02_01.txt.psb
if exist gr_02_01.txt.json (
    move /Y gr_02_01.txt.json _json\gr_02_01.txt.json >nul
    if exist gr_02_01.txt.resx.json del /Q gr_02_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_02_01.txt
)
PsbDecompile _decrypted\gr_02_02.txt.psb
if exist gr_02_02.txt.json (
    move /Y gr_02_02.txt.json _json\gr_02_02.txt.json >nul
    if exist gr_02_02.txt.resx.json del /Q gr_02_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_02_02.txt
)
PsbDecompile _decrypted\gr_02_03.txt.psb
if exist gr_02_03.txt.json (
    move /Y gr_02_03.txt.json _json\gr_02_03.txt.json >nul
    if exist gr_02_03.txt.resx.json del /Q gr_02_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_02_03.txt
)
PsbDecompile _decrypted\gr_02_04.txt.psb
if exist gr_02_04.txt.json (
    move /Y gr_02_04.txt.json _json\gr_02_04.txt.json >nul
    if exist gr_02_04.txt.resx.json del /Q gr_02_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_02_04.txt
)
PsbDecompile _decrypted\gr_02_05.txt.psb
if exist gr_02_05.txt.json (
    move /Y gr_02_05.txt.json _json\gr_02_05.txt.json >nul
    if exist gr_02_05.txt.resx.json del /Q gr_02_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_02_05.txt
)
PsbDecompile _decrypted\gr_03_01.txt.psb
if exist gr_03_01.txt.json (
    move /Y gr_03_01.txt.json _json\gr_03_01.txt.json >nul
    if exist gr_03_01.txt.resx.json del /Q gr_03_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_03_01.txt
)
PsbDecompile _decrypted\gr_04_01.txt.psb
if exist gr_04_01.txt.json (
    move /Y gr_04_01.txt.json _json\gr_04_01.txt.json >nul
    if exist gr_04_01.txt.resx.json del /Q gr_04_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_04_01.txt
)
PsbDecompile _decrypted\gr_05_01.txt.psb
if exist gr_05_01.txt.json (
    move /Y gr_05_01.txt.json _json\gr_05_01.txt.json >nul
    if exist gr_05_01.txt.resx.json del /Q gr_05_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_05_01.txt
)
PsbDecompile _decrypted\gr_06_01.txt.psb
if exist gr_06_01.txt.json (
    move /Y gr_06_01.txt.json _json\gr_06_01.txt.json >nul
    if exist gr_06_01.txt.resx.json del /Q gr_06_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_06_01.txt
)
PsbDecompile _decrypted\gr_06_02.txt.psb
if exist gr_06_02.txt.json (
    move /Y gr_06_02.txt.json _json\gr_06_02.txt.json >nul
    if exist gr_06_02.txt.resx.json del /Q gr_06_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_06_02.txt
)
PsbDecompile _decrypted\gr_06_03.txt.psb
if exist gr_06_03.txt.json (
    move /Y gr_06_03.txt.json _json\gr_06_03.txt.json >nul
    if exist gr_06_03.txt.resx.json del /Q gr_06_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: gr_06_03.txt
)
PsbDecompile _decrypted\movie.txt.psb
if exist movie.txt.json (
    move /Y movie.txt.json _json\movie.txt.json >nul
    if exist movie.txt.resx.json del /Q movie.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: movie.txt
)
PsbDecompile _decrypted\op_01_01.txt.psb
if exist op_01_01.txt.json (
    move /Y op_01_01.txt.json _json\op_01_01.txt.json >nul
    if exist op_01_01.txt.resx.json del /Q op_01_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: op_01_01.txt
)
PsbDecompile _decrypted\op_02_01.txt.psb
if exist op_02_01.txt.json (
    move /Y op_02_01.txt.json _json\op_02_01.txt.json >nul
    if exist op_02_01.txt.resx.json del /Q op_02_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: op_02_01.txt
)
PsbDecompile _decrypted\op_02_02.txt.psb
if exist op_02_02.txt.json (
    move /Y op_02_02.txt.json _json\op_02_02.txt.json >nul
    if exist op_02_02.txt.resx.json del /Q op_02_02.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: op_02_02.txt
)
PsbDecompile _decrypted\op_02_03.txt.psb
if exist op_02_03.txt.json (
    move /Y op_02_03.txt.json _json\op_02_03.txt.json >nul
    if exist op_02_03.txt.resx.json del /Q op_02_03.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: op_02_03.txt
)
PsbDecompile _decrypted\op_02_04.txt.psb
if exist op_02_04.txt.json (
    move /Y op_02_04.txt.json _json\op_02_04.txt.json >nul
    if exist op_02_04.txt.resx.json del /Q op_02_04.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: op_02_04.txt
)
PsbDecompile _decrypted\op_02_05.txt.psb
if exist op_02_05.txt.json (
    move /Y op_02_05.txt.json _json\op_02_05.txt.json >nul
    if exist op_02_05.txt.resx.json del /Q op_02_05.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: op_02_05.txt
)
PsbDecompile _decrypted\op_03_01.txt.psb
if exist op_03_01.txt.json (
    move /Y op_03_01.txt.json _json\op_03_01.txt.json >nul
    if exist op_03_01.txt.resx.json del /Q op_03_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: op_03_01.txt
)
PsbDecompile _decrypted\op_03_01_alpha.txt.psb
if exist op_03_01_alpha.txt.json (
    move /Y op_03_01_alpha.txt.json _json\op_03_01_alpha.txt.json >nul
    if exist op_03_01_alpha.txt.resx.json del /Q op_03_01_alpha.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: op_03_01_alpha.txt
)
PsbDecompile _decrypted\standlist.txt.psb
if exist standlist.txt.json (
    move /Y standlist.txt.json _json\standlist.txt.json >nul
    if exist standlist.txt.resx.json del /Q standlist.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: standlist.txt
)
PsbDecompile _decrypted\tu_01.txt.psb
if exist tu_01.txt.json (
    move /Y tu_01.txt.json _json\tu_01.txt.json >nul
    if exist tu_01.txt.resx.json del /Q tu_01.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: tu_01.txt
)
PsbDecompile _decrypted\twlist.txt.psb
if exist twlist.txt.json (
    move /Y twlist.txt.json _json\twlist.txt.json >nul
    if exist twlist.txt.resx.json del /Q twlist.txt.resx.json >nul 2>nul
) else (
    echo FALHA decompile: twlist.txt
)

echo Decompilacao concluida!
pause