@echo off
cd /d D:\freemote
echo Descriptografando chunks...
if not exist _decrypted mkdir _decrypted

EmtConvert mdf -s 523aad2de7132addfile.txt.scn.m -l 131 _chunks\addfile.txt.mdf
if exist addfile.txt.decompressed.psb (
    move /Y addfile.txt.decompressed.psb _decrypted\addfile.txt.psb >nul
) else (
    echo FALHA decrypt: addfile.txt
)
EmtConvert mdf -s 523aad2de7132ca01_01.txt.scn.m -l 131 _chunks\ca01_01.txt.mdf
if exist ca01_01.txt.decompressed.psb (
    move /Y ca01_01.txt.decompressed.psb _decrypted\ca01_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_01.txt
)
EmtConvert mdf -s 523aad2de7132ca01_02.txt.scn.m -l 131 _chunks\ca01_02.txt.mdf
if exist ca01_02.txt.decompressed.psb (
    move /Y ca01_02.txt.decompressed.psb _decrypted\ca01_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_02.txt
)
EmtConvert mdf -s 523aad2de7132ca01_03.txt.scn.m -l 131 _chunks\ca01_03.txt.mdf
if exist ca01_03.txt.decompressed.psb (
    move /Y ca01_03.txt.decompressed.psb _decrypted\ca01_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_03.txt
)
EmtConvert mdf -s 523aad2de7132ca01_04.txt.scn.m -l 131 _chunks\ca01_04.txt.mdf
if exist ca01_04.txt.decompressed.psb (
    move /Y ca01_04.txt.decompressed.psb _decrypted\ca01_04.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_04.txt
)
EmtConvert mdf -s 523aad2de7132ca01_05.txt.scn.m -l 131 _chunks\ca01_05.txt.mdf
if exist ca01_05.txt.decompressed.psb (
    move /Y ca01_05.txt.decompressed.psb _decrypted\ca01_05.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_05.txt
)
EmtConvert mdf -s 523aad2de7132ca01_06.txt.scn.m -l 131 _chunks\ca01_06.txt.mdf
if exist ca01_06.txt.decompressed.psb (
    move /Y ca01_06.txt.decompressed.psb _decrypted\ca01_06.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_06.txt
)
EmtConvert mdf -s 523aad2de7132ca01_07.txt.scn.m -l 131 _chunks\ca01_07.txt.mdf
if exist ca01_07.txt.decompressed.psb (
    move /Y ca01_07.txt.decompressed.psb _decrypted\ca01_07.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_07.txt
)
EmtConvert mdf -s 523aad2de7132ca01_08.txt.scn.m -l 131 _chunks\ca01_08.txt.mdf
if exist ca01_08.txt.decompressed.psb (
    move /Y ca01_08.txt.decompressed.psb _decrypted\ca01_08.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_08.txt
)
EmtConvert mdf -s 523aad2de7132ca01_09.txt.scn.m -l 131 _chunks\ca01_09.txt.mdf
if exist ca01_09.txt.decompressed.psb (
    move /Y ca01_09.txt.decompressed.psb _decrypted\ca01_09.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_09.txt
)
EmtConvert mdf -s 523aad2de7132ca01_10.txt.scn.m -l 131 _chunks\ca01_10.txt.mdf
if exist ca01_10.txt.decompressed.psb (
    move /Y ca01_10.txt.decompressed.psb _decrypted\ca01_10.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_10.txt
)
EmtConvert mdf -s 523aad2de7132ca01_11.txt.scn.m -l 131 _chunks\ca01_11.txt.mdf
if exist ca01_11.txt.decompressed.psb (
    move /Y ca01_11.txt.decompressed.psb _decrypted\ca01_11.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_11.txt
)
EmtConvert mdf -s 523aad2de7132ca01_12.txt.scn.m -l 131 _chunks\ca01_12.txt.mdf
if exist ca01_12.txt.decompressed.psb (
    move /Y ca01_12.txt.decompressed.psb _decrypted\ca01_12.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_12.txt
)
EmtConvert mdf -s 523aad2de7132ca01_13.txt.scn.m -l 131 _chunks\ca01_13.txt.mdf
if exist ca01_13.txt.decompressed.psb (
    move /Y ca01_13.txt.decompressed.psb _decrypted\ca01_13.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_13.txt
)
EmtConvert mdf -s 523aad2de7132ca01_14.txt.scn.m -l 131 _chunks\ca01_14.txt.mdf
if exist ca01_14.txt.decompressed.psb (
    move /Y ca01_14.txt.decompressed.psb _decrypted\ca01_14.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_14.txt
)
EmtConvert mdf -s 523aad2de7132ca01_15.txt.scn.m -l 131 _chunks\ca01_15.txt.mdf
if exist ca01_15.txt.decompressed.psb (
    move /Y ca01_15.txt.decompressed.psb _decrypted\ca01_15.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_15.txt
)
EmtConvert mdf -s 523aad2de7132ca01_16.txt.scn.m -l 131 _chunks\ca01_16.txt.mdf
if exist ca01_16.txt.decompressed.psb (
    move /Y ca01_16.txt.decompressed.psb _decrypted\ca01_16.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_16.txt
)
EmtConvert mdf -s 523aad2de7132ca01_17.txt.scn.m -l 131 _chunks\ca01_17.txt.mdf
if exist ca01_17.txt.decompressed.psb (
    move /Y ca01_17.txt.decompressed.psb _decrypted\ca01_17.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_17.txt
)
EmtConvert mdf -s 523aad2de7132ca01_18.txt.scn.m -l 131 _chunks\ca01_18.txt.mdf
if exist ca01_18.txt.decompressed.psb (
    move /Y ca01_18.txt.decompressed.psb _decrypted\ca01_18.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_18.txt
)
EmtConvert mdf -s 523aad2de7132ca01_19.txt.scn.m -l 131 _chunks\ca01_19.txt.mdf
if exist ca01_19.txt.decompressed.psb (
    move /Y ca01_19.txt.decompressed.psb _decrypted\ca01_19.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_19.txt
)
EmtConvert mdf -s 523aad2de7132ca01_20.txt.scn.m -l 131 _chunks\ca01_20.txt.mdf
if exist ca01_20.txt.decompressed.psb (
    move /Y ca01_20.txt.decompressed.psb _decrypted\ca01_20.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_20.txt
)
EmtConvert mdf -s 523aad2de7132ca01_21.txt.scn.m -l 131 _chunks\ca01_21.txt.mdf
if exist ca01_21.txt.decompressed.psb (
    move /Y ca01_21.txt.decompressed.psb _decrypted\ca01_21.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_21.txt
)
EmtConvert mdf -s 523aad2de7132ca01_22.txt.scn.m -l 131 _chunks\ca01_22.txt.mdf
if exist ca01_22.txt.decompressed.psb (
    move /Y ca01_22.txt.decompressed.psb _decrypted\ca01_22.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_22.txt
)
EmtConvert mdf -s 523aad2de7132ca01_23.txt.scn.m -l 131 _chunks\ca01_23.txt.mdf
if exist ca01_23.txt.decompressed.psb (
    move /Y ca01_23.txt.decompressed.psb _decrypted\ca01_23.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_23.txt
)
EmtConvert mdf -s 523aad2de7132ca01_24.txt.scn.m -l 131 _chunks\ca01_24.txt.mdf
if exist ca01_24.txt.decompressed.psb (
    move /Y ca01_24.txt.decompressed.psb _decrypted\ca01_24.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_24.txt
)
EmtConvert mdf -s 523aad2de7132ca01_25.txt.scn.m -l 131 _chunks\ca01_25.txt.mdf
if exist ca01_25.txt.decompressed.psb (
    move /Y ca01_25.txt.decompressed.psb _decrypted\ca01_25.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_25.txt
)
EmtConvert mdf -s 523aad2de7132ca01_26.txt.scn.m -l 131 _chunks\ca01_26.txt.mdf
if exist ca01_26.txt.decompressed.psb (
    move /Y ca01_26.txt.decompressed.psb _decrypted\ca01_26.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_26.txt
)
EmtConvert mdf -s 523aad2de7132ca01_27.txt.scn.m -l 131 _chunks\ca01_27.txt.mdf
if exist ca01_27.txt.decompressed.psb (
    move /Y ca01_27.txt.decompressed.psb _decrypted\ca01_27.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_27.txt
)
EmtConvert mdf -s 523aad2de7132ca01_28.txt.scn.m -l 131 _chunks\ca01_28.txt.mdf
if exist ca01_28.txt.decompressed.psb (
    move /Y ca01_28.txt.decompressed.psb _decrypted\ca01_28.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_28.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv1_01.txt.scn.m -l 131 _chunks\ca01_mv1_01.txt.mdf
if exist ca01_mv1_01.txt.decompressed.psb (
    move /Y ca01_mv1_01.txt.decompressed.psb _decrypted\ca01_mv1_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv1_01.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv1_02.txt.scn.m -l 131 _chunks\ca01_mv1_02.txt.mdf
if exist ca01_mv1_02.txt.decompressed.psb (
    move /Y ca01_mv1_02.txt.decompressed.psb _decrypted\ca01_mv1_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv1_02.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv1_03.txt.scn.m -l 131 _chunks\ca01_mv1_03.txt.mdf
if exist ca01_mv1_03.txt.decompressed.psb (
    move /Y ca01_mv1_03.txt.decompressed.psb _decrypted\ca01_mv1_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv1_03.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv2_01.txt.scn.m -l 131 _chunks\ca01_mv2_01.txt.mdf
if exist ca01_mv2_01.txt.decompressed.psb (
    move /Y ca01_mv2_01.txt.decompressed.psb _decrypted\ca01_mv2_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv2_01.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv2_02.txt.scn.m -l 131 _chunks\ca01_mv2_02.txt.mdf
if exist ca01_mv2_02.txt.decompressed.psb (
    move /Y ca01_mv2_02.txt.decompressed.psb _decrypted\ca01_mv2_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv2_02.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv2_03.txt.scn.m -l 131 _chunks\ca01_mv2_03.txt.mdf
if exist ca01_mv2_03.txt.decompressed.psb (
    move /Y ca01_mv2_03.txt.decompressed.psb _decrypted\ca01_mv2_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv2_03.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv3_01.txt.scn.m -l 131 _chunks\ca01_mv3_01.txt.mdf
if exist ca01_mv3_01.txt.decompressed.psb (
    move /Y ca01_mv3_01.txt.decompressed.psb _decrypted\ca01_mv3_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv3_01.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv3_02.txt.scn.m -l 131 _chunks\ca01_mv3_02.txt.mdf
if exist ca01_mv3_02.txt.decompressed.psb (
    move /Y ca01_mv3_02.txt.decompressed.psb _decrypted\ca01_mv3_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv3_02.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv3_03.txt.scn.m -l 131 _chunks\ca01_mv3_03.txt.mdf
if exist ca01_mv3_03.txt.decompressed.psb (
    move /Y ca01_mv3_03.txt.decompressed.psb _decrypted\ca01_mv3_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv3_03.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv4_01.txt.scn.m -l 131 _chunks\ca01_mv4_01.txt.mdf
if exist ca01_mv4_01.txt.decompressed.psb (
    move /Y ca01_mv4_01.txt.decompressed.psb _decrypted\ca01_mv4_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv4_01.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv4_02.txt.scn.m -l 131 _chunks\ca01_mv4_02.txt.mdf
if exist ca01_mv4_02.txt.decompressed.psb (
    move /Y ca01_mv4_02.txt.decompressed.psb _decrypted\ca01_mv4_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv4_02.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv4_03.txt.scn.m -l 131 _chunks\ca01_mv4_03.txt.mdf
if exist ca01_mv4_03.txt.decompressed.psb (
    move /Y ca01_mv4_03.txt.decompressed.psb _decrypted\ca01_mv4_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv4_03.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv5_01.txt.scn.m -l 131 _chunks\ca01_mv5_01.txt.mdf
if exist ca01_mv5_01.txt.decompressed.psb (
    move /Y ca01_mv5_01.txt.decompressed.psb _decrypted\ca01_mv5_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv5_01.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv5_02.txt.scn.m -l 131 _chunks\ca01_mv5_02.txt.mdf
if exist ca01_mv5_02.txt.decompressed.psb (
    move /Y ca01_mv5_02.txt.decompressed.psb _decrypted\ca01_mv5_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv5_02.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv5_03.txt.scn.m -l 131 _chunks\ca01_mv5_03.txt.mdf
if exist ca01_mv5_03.txt.decompressed.psb (
    move /Y ca01_mv5_03.txt.decompressed.psb _decrypted\ca01_mv5_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv5_03.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv6_01.txt.scn.m -l 131 _chunks\ca01_mv6_01.txt.mdf
if exist ca01_mv6_01.txt.decompressed.psb (
    move /Y ca01_mv6_01.txt.decompressed.psb _decrypted\ca01_mv6_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv6_01.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv6_02.txt.scn.m -l 131 _chunks\ca01_mv6_02.txt.mdf
if exist ca01_mv6_02.txt.decompressed.psb (
    move /Y ca01_mv6_02.txt.decompressed.psb _decrypted\ca01_mv6_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv6_02.txt
)
EmtConvert mdf -s 523aad2de7132ca01_mv6_03.txt.scn.m -l 131 _chunks\ca01_mv6_03.txt.mdf
if exist ca01_mv6_03.txt.decompressed.psb (
    move /Y ca01_mv6_03.txt.decompressed.psb _decrypted\ca01_mv6_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca01_mv6_03.txt
)
EmtConvert mdf -s 523aad2de7132ca02_01.txt.scn.m -l 131 _chunks\ca02_01.txt.mdf
if exist ca02_01.txt.decompressed.psb (
    move /Y ca02_01.txt.decompressed.psb _decrypted\ca02_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_01.txt
)
EmtConvert mdf -s 523aad2de7132ca02_02.txt.scn.m -l 131 _chunks\ca02_02.txt.mdf
if exist ca02_02.txt.decompressed.psb (
    move /Y ca02_02.txt.decompressed.psb _decrypted\ca02_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_02.txt
)
EmtConvert mdf -s 523aad2de7132ca02_03.txt.scn.m -l 131 _chunks\ca02_03.txt.mdf
if exist ca02_03.txt.decompressed.psb (
    move /Y ca02_03.txt.decompressed.psb _decrypted\ca02_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_03.txt
)
EmtConvert mdf -s 523aad2de7132ca02_04.txt.scn.m -l 131 _chunks\ca02_04.txt.mdf
if exist ca02_04.txt.decompressed.psb (
    move /Y ca02_04.txt.decompressed.psb _decrypted\ca02_04.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_04.txt
)
EmtConvert mdf -s 523aad2de7132ca02_05.txt.scn.m -l 131 _chunks\ca02_05.txt.mdf
if exist ca02_05.txt.decompressed.psb (
    move /Y ca02_05.txt.decompressed.psb _decrypted\ca02_05.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_05.txt
)
EmtConvert mdf -s 523aad2de7132ca02_06.txt.scn.m -l 131 _chunks\ca02_06.txt.mdf
if exist ca02_06.txt.decompressed.psb (
    move /Y ca02_06.txt.decompressed.psb _decrypted\ca02_06.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_06.txt
)
EmtConvert mdf -s 523aad2de7132ca02_07.txt.scn.m -l 131 _chunks\ca02_07.txt.mdf
if exist ca02_07.txt.decompressed.psb (
    move /Y ca02_07.txt.decompressed.psb _decrypted\ca02_07.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_07.txt
)
EmtConvert mdf -s 523aad2de7132ca02_08.txt.scn.m -l 131 _chunks\ca02_08.txt.mdf
if exist ca02_08.txt.decompressed.psb (
    move /Y ca02_08.txt.decompressed.psb _decrypted\ca02_08.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_08.txt
)
EmtConvert mdf -s 523aad2de7132ca02_09.txt.scn.m -l 131 _chunks\ca02_09.txt.mdf
if exist ca02_09.txt.decompressed.psb (
    move /Y ca02_09.txt.decompressed.psb _decrypted\ca02_09.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_09.txt
)
EmtConvert mdf -s 523aad2de7132ca02_10.txt.scn.m -l 131 _chunks\ca02_10.txt.mdf
if exist ca02_10.txt.decompressed.psb (
    move /Y ca02_10.txt.decompressed.psb _decrypted\ca02_10.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_10.txt
)
EmtConvert mdf -s 523aad2de7132ca02_11.txt.scn.m -l 131 _chunks\ca02_11.txt.mdf
if exist ca02_11.txt.decompressed.psb (
    move /Y ca02_11.txt.decompressed.psb _decrypted\ca02_11.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_11.txt
)
EmtConvert mdf -s 523aad2de7132ca02_12.txt.scn.m -l 131 _chunks\ca02_12.txt.mdf
if exist ca02_12.txt.decompressed.psb (
    move /Y ca02_12.txt.decompressed.psb _decrypted\ca02_12.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_12.txt
)
EmtConvert mdf -s 523aad2de7132ca02_13.txt.scn.m -l 131 _chunks\ca02_13.txt.mdf
if exist ca02_13.txt.decompressed.psb (
    move /Y ca02_13.txt.decompressed.psb _decrypted\ca02_13.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_13.txt
)
EmtConvert mdf -s 523aad2de7132ca02_14.txt.scn.m -l 131 _chunks\ca02_14.txt.mdf
if exist ca02_14.txt.decompressed.psb (
    move /Y ca02_14.txt.decompressed.psb _decrypted\ca02_14.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_14.txt
)
EmtConvert mdf -s 523aad2de7132ca02_15.txt.scn.m -l 131 _chunks\ca02_15.txt.mdf
if exist ca02_15.txt.decompressed.psb (
    move /Y ca02_15.txt.decompressed.psb _decrypted\ca02_15.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_15.txt
)
EmtConvert mdf -s 523aad2de7132ca02_16.txt.scn.m -l 131 _chunks\ca02_16.txt.mdf
if exist ca02_16.txt.decompressed.psb (
    move /Y ca02_16.txt.decompressed.psb _decrypted\ca02_16.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_16.txt
)
EmtConvert mdf -s 523aad2de7132ca02_17.txt.scn.m -l 131 _chunks\ca02_17.txt.mdf
if exist ca02_17.txt.decompressed.psb (
    move /Y ca02_17.txt.decompressed.psb _decrypted\ca02_17.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_17.txt
)
EmtConvert mdf -s 523aad2de7132ca02_18.txt.scn.m -l 131 _chunks\ca02_18.txt.mdf
if exist ca02_18.txt.decompressed.psb (
    move /Y ca02_18.txt.decompressed.psb _decrypted\ca02_18.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_18.txt
)
EmtConvert mdf -s 523aad2de7132ca02_19.txt.scn.m -l 131 _chunks\ca02_19.txt.mdf
if exist ca02_19.txt.decompressed.psb (
    move /Y ca02_19.txt.decompressed.psb _decrypted\ca02_19.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_19.txt
)
EmtConvert mdf -s 523aad2de7132ca02_20.txt.scn.m -l 131 _chunks\ca02_20.txt.mdf
if exist ca02_20.txt.decompressed.psb (
    move /Y ca02_20.txt.decompressed.psb _decrypted\ca02_20.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_20.txt
)
EmtConvert mdf -s 523aad2de7132ca02_21.txt.scn.m -l 131 _chunks\ca02_21.txt.mdf
if exist ca02_21.txt.decompressed.psb (
    move /Y ca02_21.txt.decompressed.psb _decrypted\ca02_21.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_21.txt
)
EmtConvert mdf -s 523aad2de7132ca02_22.txt.scn.m -l 131 _chunks\ca02_22.txt.mdf
if exist ca02_22.txt.decompressed.psb (
    move /Y ca02_22.txt.decompressed.psb _decrypted\ca02_22.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_22.txt
)
EmtConvert mdf -s 523aad2de7132ca02_23.txt.scn.m -l 131 _chunks\ca02_23.txt.mdf
if exist ca02_23.txt.decompressed.psb (
    move /Y ca02_23.txt.decompressed.psb _decrypted\ca02_23.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_23.txt
)
EmtConvert mdf -s 523aad2de7132ca02_24.txt.scn.m -l 131 _chunks\ca02_24.txt.mdf
if exist ca02_24.txt.decompressed.psb (
    move /Y ca02_24.txt.decompressed.psb _decrypted\ca02_24.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_24.txt
)
EmtConvert mdf -s 523aad2de7132ca02_25.txt.scn.m -l 131 _chunks\ca02_25.txt.mdf
if exist ca02_25.txt.decompressed.psb (
    move /Y ca02_25.txt.decompressed.psb _decrypted\ca02_25.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_25.txt
)
EmtConvert mdf -s 523aad2de7132ca02_26.txt.scn.m -l 131 _chunks\ca02_26.txt.mdf
if exist ca02_26.txt.decompressed.psb (
    move /Y ca02_26.txt.decompressed.psb _decrypted\ca02_26.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_26.txt
)
EmtConvert mdf -s 523aad2de7132ca02_27.txt.scn.m -l 131 _chunks\ca02_27.txt.mdf
if exist ca02_27.txt.decompressed.psb (
    move /Y ca02_27.txt.decompressed.psb _decrypted\ca02_27.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_27.txt
)
EmtConvert mdf -s 523aad2de7132ca02_28.txt.scn.m -l 131 _chunks\ca02_28.txt.mdf
if exist ca02_28.txt.decompressed.psb (
    move /Y ca02_28.txt.decompressed.psb _decrypted\ca02_28.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_28.txt
)
EmtConvert mdf -s 523aad2de7132ca02_29.txt.scn.m -l 131 _chunks\ca02_29.txt.mdf
if exist ca02_29.txt.decompressed.psb (
    move /Y ca02_29.txt.decompressed.psb _decrypted\ca02_29.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_29.txt
)
EmtConvert mdf -s 523aad2de7132ca02_30.txt.scn.m -l 131 _chunks\ca02_30.txt.mdf
if exist ca02_30.txt.decompressed.psb (
    move /Y ca02_30.txt.decompressed.psb _decrypted\ca02_30.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_30.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv1_01.txt.scn.m -l 131 _chunks\ca02_mv1_01.txt.mdf
if exist ca02_mv1_01.txt.decompressed.psb (
    move /Y ca02_mv1_01.txt.decompressed.psb _decrypted\ca02_mv1_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv1_01.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv1_02.txt.scn.m -l 131 _chunks\ca02_mv1_02.txt.mdf
if exist ca02_mv1_02.txt.decompressed.psb (
    move /Y ca02_mv1_02.txt.decompressed.psb _decrypted\ca02_mv1_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv1_02.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv1_03.txt.scn.m -l 131 _chunks\ca02_mv1_03.txt.mdf
if exist ca02_mv1_03.txt.decompressed.psb (
    move /Y ca02_mv1_03.txt.decompressed.psb _decrypted\ca02_mv1_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv1_03.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv2_01.txt.scn.m -l 131 _chunks\ca02_mv2_01.txt.mdf
if exist ca02_mv2_01.txt.decompressed.psb (
    move /Y ca02_mv2_01.txt.decompressed.psb _decrypted\ca02_mv2_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv2_01.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv2_02.txt.scn.m -l 131 _chunks\ca02_mv2_02.txt.mdf
if exist ca02_mv2_02.txt.decompressed.psb (
    move /Y ca02_mv2_02.txt.decompressed.psb _decrypted\ca02_mv2_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv2_02.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv2_03.txt.scn.m -l 131 _chunks\ca02_mv2_03.txt.mdf
if exist ca02_mv2_03.txt.decompressed.psb (
    move /Y ca02_mv2_03.txt.decompressed.psb _decrypted\ca02_mv2_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv2_03.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv3_01.txt.scn.m -l 131 _chunks\ca02_mv3_01.txt.mdf
if exist ca02_mv3_01.txt.decompressed.psb (
    move /Y ca02_mv3_01.txt.decompressed.psb _decrypted\ca02_mv3_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv3_01.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv3_02.txt.scn.m -l 131 _chunks\ca02_mv3_02.txt.mdf
if exist ca02_mv3_02.txt.decompressed.psb (
    move /Y ca02_mv3_02.txt.decompressed.psb _decrypted\ca02_mv3_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv3_02.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv3_03.txt.scn.m -l 131 _chunks\ca02_mv3_03.txt.mdf
if exist ca02_mv3_03.txt.decompressed.psb (
    move /Y ca02_mv3_03.txt.decompressed.psb _decrypted\ca02_mv3_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv3_03.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv4_01.txt.scn.m -l 131 _chunks\ca02_mv4_01.txt.mdf
if exist ca02_mv4_01.txt.decompressed.psb (
    move /Y ca02_mv4_01.txt.decompressed.psb _decrypted\ca02_mv4_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv4_01.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv4_02.txt.scn.m -l 131 _chunks\ca02_mv4_02.txt.mdf
if exist ca02_mv4_02.txt.decompressed.psb (
    move /Y ca02_mv4_02.txt.decompressed.psb _decrypted\ca02_mv4_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv4_02.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv4_03.txt.scn.m -l 131 _chunks\ca02_mv4_03.txt.mdf
if exist ca02_mv4_03.txt.decompressed.psb (
    move /Y ca02_mv4_03.txt.decompressed.psb _decrypted\ca02_mv4_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv4_03.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv5_01.txt.scn.m -l 131 _chunks\ca02_mv5_01.txt.mdf
if exist ca02_mv5_01.txt.decompressed.psb (
    move /Y ca02_mv5_01.txt.decompressed.psb _decrypted\ca02_mv5_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv5_01.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv5_02.txt.scn.m -l 131 _chunks\ca02_mv5_02.txt.mdf
if exist ca02_mv5_02.txt.decompressed.psb (
    move /Y ca02_mv5_02.txt.decompressed.psb _decrypted\ca02_mv5_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv5_02.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv5_03.txt.scn.m -l 131 _chunks\ca02_mv5_03.txt.mdf
if exist ca02_mv5_03.txt.decompressed.psb (
    move /Y ca02_mv5_03.txt.decompressed.psb _decrypted\ca02_mv5_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv5_03.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv5_04.txt.scn.m -l 131 _chunks\ca02_mv5_04.txt.mdf
if exist ca02_mv5_04.txt.decompressed.psb (
    move /Y ca02_mv5_04.txt.decompressed.psb _decrypted\ca02_mv5_04.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv5_04.txt
)
EmtConvert mdf -s 523aad2de7132ca02_mv5_05.txt.scn.m -l 131 _chunks\ca02_mv5_05.txt.mdf
if exist ca02_mv5_05.txt.decompressed.psb (
    move /Y ca02_mv5_05.txt.decompressed.psb _decrypted\ca02_mv5_05.txt.psb >nul
) else (
    echo FALHA decrypt: ca02_mv5_05.txt
)
EmtConvert mdf -s 523aad2de7132ca03_01.txt.scn.m -l 131 _chunks\ca03_01.txt.mdf
if exist ca03_01.txt.decompressed.psb (
    move /Y ca03_01.txt.decompressed.psb _decrypted\ca03_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_01.txt
)
EmtConvert mdf -s 523aad2de7132ca03_02.txt.scn.m -l 131 _chunks\ca03_02.txt.mdf
if exist ca03_02.txt.decompressed.psb (
    move /Y ca03_02.txt.decompressed.psb _decrypted\ca03_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_02.txt
)
EmtConvert mdf -s 523aad2de7132ca03_03.txt.scn.m -l 131 _chunks\ca03_03.txt.mdf
if exist ca03_03.txt.decompressed.psb (
    move /Y ca03_03.txt.decompressed.psb _decrypted\ca03_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_03.txt
)
EmtConvert mdf -s 523aad2de7132ca03_04.txt.scn.m -l 131 _chunks\ca03_04.txt.mdf
if exist ca03_04.txt.decompressed.psb (
    move /Y ca03_04.txt.decompressed.psb _decrypted\ca03_04.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_04.txt
)
EmtConvert mdf -s 523aad2de7132ca03_05.txt.scn.m -l 131 _chunks\ca03_05.txt.mdf
if exist ca03_05.txt.decompressed.psb (
    move /Y ca03_05.txt.decompressed.psb _decrypted\ca03_05.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_05.txt
)
EmtConvert mdf -s 523aad2de7132ca03_06.txt.scn.m -l 131 _chunks\ca03_06.txt.mdf
if exist ca03_06.txt.decompressed.psb (
    move /Y ca03_06.txt.decompressed.psb _decrypted\ca03_06.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_06.txt
)
EmtConvert mdf -s 523aad2de7132ca03_07.txt.scn.m -l 131 _chunks\ca03_07.txt.mdf
if exist ca03_07.txt.decompressed.psb (
    move /Y ca03_07.txt.decompressed.psb _decrypted\ca03_07.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_07.txt
)
EmtConvert mdf -s 523aad2de7132ca03_08.txt.scn.m -l 131 _chunks\ca03_08.txt.mdf
if exist ca03_08.txt.decompressed.psb (
    move /Y ca03_08.txt.decompressed.psb _decrypted\ca03_08.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_08.txt
)
EmtConvert mdf -s 523aad2de7132ca03_09.txt.scn.m -l 131 _chunks\ca03_09.txt.mdf
if exist ca03_09.txt.decompressed.psb (
    move /Y ca03_09.txt.decompressed.psb _decrypted\ca03_09.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_09.txt
)
EmtConvert mdf -s 523aad2de7132ca03_10.txt.scn.m -l 131 _chunks\ca03_10.txt.mdf
if exist ca03_10.txt.decompressed.psb (
    move /Y ca03_10.txt.decompressed.psb _decrypted\ca03_10.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_10.txt
)
EmtConvert mdf -s 523aad2de7132ca03_11.txt.scn.m -l 131 _chunks\ca03_11.txt.mdf
if exist ca03_11.txt.decompressed.psb (
    move /Y ca03_11.txt.decompressed.psb _decrypted\ca03_11.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_11.txt
)
EmtConvert mdf -s 523aad2de7132ca03_12.txt.scn.m -l 131 _chunks\ca03_12.txt.mdf
if exist ca03_12.txt.decompressed.psb (
    move /Y ca03_12.txt.decompressed.psb _decrypted\ca03_12.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_12.txt
)
EmtConvert mdf -s 523aad2de7132ca03_13.txt.scn.m -l 131 _chunks\ca03_13.txt.mdf
if exist ca03_13.txt.decompressed.psb (
    move /Y ca03_13.txt.decompressed.psb _decrypted\ca03_13.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_13.txt
)
EmtConvert mdf -s 523aad2de7132ca03_14.txt.scn.m -l 131 _chunks\ca03_14.txt.mdf
if exist ca03_14.txt.decompressed.psb (
    move /Y ca03_14.txt.decompressed.psb _decrypted\ca03_14.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_14.txt
)
EmtConvert mdf -s 523aad2de7132ca03_15.txt.scn.m -l 131 _chunks\ca03_15.txt.mdf
if exist ca03_15.txt.decompressed.psb (
    move /Y ca03_15.txt.decompressed.psb _decrypted\ca03_15.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_15.txt
)
EmtConvert mdf -s 523aad2de7132ca03_16.txt.scn.m -l 131 _chunks\ca03_16.txt.mdf
if exist ca03_16.txt.decompressed.psb (
    move /Y ca03_16.txt.decompressed.psb _decrypted\ca03_16.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_16.txt
)
EmtConvert mdf -s 523aad2de7132ca03_17.txt.scn.m -l 131 _chunks\ca03_17.txt.mdf
if exist ca03_17.txt.decompressed.psb (
    move /Y ca03_17.txt.decompressed.psb _decrypted\ca03_17.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_17.txt
)
EmtConvert mdf -s 523aad2de7132ca03_18.txt.scn.m -l 131 _chunks\ca03_18.txt.mdf
if exist ca03_18.txt.decompressed.psb (
    move /Y ca03_18.txt.decompressed.psb _decrypted\ca03_18.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_18.txt
)
EmtConvert mdf -s 523aad2de7132ca03_19.txt.scn.m -l 131 _chunks\ca03_19.txt.mdf
if exist ca03_19.txt.decompressed.psb (
    move /Y ca03_19.txt.decompressed.psb _decrypted\ca03_19.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_19.txt
)
EmtConvert mdf -s 523aad2de7132ca03_20.txt.scn.m -l 131 _chunks\ca03_20.txt.mdf
if exist ca03_20.txt.decompressed.psb (
    move /Y ca03_20.txt.decompressed.psb _decrypted\ca03_20.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_20.txt
)
EmtConvert mdf -s 523aad2de7132ca03_21.txt.scn.m -l 131 _chunks\ca03_21.txt.mdf
if exist ca03_21.txt.decompressed.psb (
    move /Y ca03_21.txt.decompressed.psb _decrypted\ca03_21.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_21.txt
)
EmtConvert mdf -s 523aad2de7132ca03_22.txt.scn.m -l 131 _chunks\ca03_22.txt.mdf
if exist ca03_22.txt.decompressed.psb (
    move /Y ca03_22.txt.decompressed.psb _decrypted\ca03_22.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_22.txt
)
EmtConvert mdf -s 523aad2de7132ca03_23.txt.scn.m -l 131 _chunks\ca03_23.txt.mdf
if exist ca03_23.txt.decompressed.psb (
    move /Y ca03_23.txt.decompressed.psb _decrypted\ca03_23.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_23.txt
)
EmtConvert mdf -s 523aad2de7132ca03_24.txt.scn.m -l 131 _chunks\ca03_24.txt.mdf
if exist ca03_24.txt.decompressed.psb (
    move /Y ca03_24.txt.decompressed.psb _decrypted\ca03_24.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_24.txt
)
EmtConvert mdf -s 523aad2de7132ca03_25.txt.scn.m -l 131 _chunks\ca03_25.txt.mdf
if exist ca03_25.txt.decompressed.psb (
    move /Y ca03_25.txt.decompressed.psb _decrypted\ca03_25.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_25.txt
)
EmtConvert mdf -s 523aad2de7132ca03_26.txt.scn.m -l 131 _chunks\ca03_26.txt.mdf
if exist ca03_26.txt.decompressed.psb (
    move /Y ca03_26.txt.decompressed.psb _decrypted\ca03_26.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_26.txt
)
EmtConvert mdf -s 523aad2de7132ca03_27.txt.scn.m -l 131 _chunks\ca03_27.txt.mdf
if exist ca03_27.txt.decompressed.psb (
    move /Y ca03_27.txt.decompressed.psb _decrypted\ca03_27.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_27.txt
)
EmtConvert mdf -s 523aad2de7132ca03_28.txt.scn.m -l 131 _chunks\ca03_28.txt.mdf
if exist ca03_28.txt.decompressed.psb (
    move /Y ca03_28.txt.decompressed.psb _decrypted\ca03_28.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_28.txt
)
EmtConvert mdf -s 523aad2de7132ca03_29.txt.scn.m -l 131 _chunks\ca03_29.txt.mdf
if exist ca03_29.txt.decompressed.psb (
    move /Y ca03_29.txt.decompressed.psb _decrypted\ca03_29.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_29.txt
)
EmtConvert mdf -s 523aad2de7132ca03_30.txt.scn.m -l 131 _chunks\ca03_30.txt.mdf
if exist ca03_30.txt.decompressed.psb (
    move /Y ca03_30.txt.decompressed.psb _decrypted\ca03_30.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_30.txt
)
EmtConvert mdf -s 523aad2de7132ca03_31.txt.scn.m -l 131 _chunks\ca03_31.txt.mdf
if exist ca03_31.txt.decompressed.psb (
    move /Y ca03_31.txt.decompressed.psb _decrypted\ca03_31.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_31.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv1_01.txt.scn.m -l 131 _chunks\ca03_mv1_01.txt.mdf
if exist ca03_mv1_01.txt.decompressed.psb (
    move /Y ca03_mv1_01.txt.decompressed.psb _decrypted\ca03_mv1_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv1_01.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv1_02.txt.scn.m -l 131 _chunks\ca03_mv1_02.txt.mdf
if exist ca03_mv1_02.txt.decompressed.psb (
    move /Y ca03_mv1_02.txt.decompressed.psb _decrypted\ca03_mv1_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv1_02.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv1_03.txt.scn.m -l 131 _chunks\ca03_mv1_03.txt.mdf
if exist ca03_mv1_03.txt.decompressed.psb (
    move /Y ca03_mv1_03.txt.decompressed.psb _decrypted\ca03_mv1_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv1_03.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv2_01.txt.scn.m -l 131 _chunks\ca03_mv2_01.txt.mdf
if exist ca03_mv2_01.txt.decompressed.psb (
    move /Y ca03_mv2_01.txt.decompressed.psb _decrypted\ca03_mv2_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv2_01.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv2_02.txt.scn.m -l 131 _chunks\ca03_mv2_02.txt.mdf
if exist ca03_mv2_02.txt.decompressed.psb (
    move /Y ca03_mv2_02.txt.decompressed.psb _decrypted\ca03_mv2_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv2_02.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv2_03.txt.scn.m -l 131 _chunks\ca03_mv2_03.txt.mdf
if exist ca03_mv2_03.txt.decompressed.psb (
    move /Y ca03_mv2_03.txt.decompressed.psb _decrypted\ca03_mv2_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv2_03.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv3_01.txt.scn.m -l 131 _chunks\ca03_mv3_01.txt.mdf
if exist ca03_mv3_01.txt.decompressed.psb (
    move /Y ca03_mv3_01.txt.decompressed.psb _decrypted\ca03_mv3_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv3_01.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv3_02.txt.scn.m -l 131 _chunks\ca03_mv3_02.txt.mdf
if exist ca03_mv3_02.txt.decompressed.psb (
    move /Y ca03_mv3_02.txt.decompressed.psb _decrypted\ca03_mv3_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv3_02.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv3_03.txt.scn.m -l 131 _chunks\ca03_mv3_03.txt.mdf
if exist ca03_mv3_03.txt.decompressed.psb (
    move /Y ca03_mv3_03.txt.decompressed.psb _decrypted\ca03_mv3_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv3_03.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv4_01.txt.scn.m -l 131 _chunks\ca03_mv4_01.txt.mdf
if exist ca03_mv4_01.txt.decompressed.psb (
    move /Y ca03_mv4_01.txt.decompressed.psb _decrypted\ca03_mv4_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv4_01.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv4_02.txt.scn.m -l 131 _chunks\ca03_mv4_02.txt.mdf
if exist ca03_mv4_02.txt.decompressed.psb (
    move /Y ca03_mv4_02.txt.decompressed.psb _decrypted\ca03_mv4_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv4_02.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv4_03.txt.scn.m -l 131 _chunks\ca03_mv4_03.txt.mdf
if exist ca03_mv4_03.txt.decompressed.psb (
    move /Y ca03_mv4_03.txt.decompressed.psb _decrypted\ca03_mv4_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv4_03.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv5_01.txt.scn.m -l 131 _chunks\ca03_mv5_01.txt.mdf
if exist ca03_mv5_01.txt.decompressed.psb (
    move /Y ca03_mv5_01.txt.decompressed.psb _decrypted\ca03_mv5_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv5_01.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv5_02.txt.scn.m -l 131 _chunks\ca03_mv5_02.txt.mdf
if exist ca03_mv5_02.txt.decompressed.psb (
    move /Y ca03_mv5_02.txt.decompressed.psb _decrypted\ca03_mv5_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv5_02.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv5_03.txt.scn.m -l 131 _chunks\ca03_mv5_03.txt.mdf
if exist ca03_mv5_03.txt.decompressed.psb (
    move /Y ca03_mv5_03.txt.decompressed.psb _decrypted\ca03_mv5_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv5_03.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv6_01.txt.scn.m -l 131 _chunks\ca03_mv6_01.txt.mdf
if exist ca03_mv6_01.txt.decompressed.psb (
    move /Y ca03_mv6_01.txt.decompressed.psb _decrypted\ca03_mv6_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv6_01.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv6_02.txt.scn.m -l 131 _chunks\ca03_mv6_02.txt.mdf
if exist ca03_mv6_02.txt.decompressed.psb (
    move /Y ca03_mv6_02.txt.decompressed.psb _decrypted\ca03_mv6_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv6_02.txt
)
EmtConvert mdf -s 523aad2de7132ca03_mv6_03.txt.scn.m -l 131 _chunks\ca03_mv6_03.txt.mdf
if exist ca03_mv6_03.txt.decompressed.psb (
    move /Y ca03_mv6_03.txt.decompressed.psb _decrypted\ca03_mv6_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca03_mv6_03.txt
)
EmtConvert mdf -s 523aad2de7132ca04_01.txt.scn.m -l 131 _chunks\ca04_01.txt.mdf
if exist ca04_01.txt.decompressed.psb (
    move /Y ca04_01.txt.decompressed.psb _decrypted\ca04_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_01.txt
)
EmtConvert mdf -s 523aad2de7132ca04_02.txt.scn.m -l 131 _chunks\ca04_02.txt.mdf
if exist ca04_02.txt.decompressed.psb (
    move /Y ca04_02.txt.decompressed.psb _decrypted\ca04_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_02.txt
)
EmtConvert mdf -s 523aad2de7132ca04_03.txt.scn.m -l 131 _chunks\ca04_03.txt.mdf
if exist ca04_03.txt.decompressed.psb (
    move /Y ca04_03.txt.decompressed.psb _decrypted\ca04_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_03.txt
)
EmtConvert mdf -s 523aad2de7132ca04_04.txt.scn.m -l 131 _chunks\ca04_04.txt.mdf
if exist ca04_04.txt.decompressed.psb (
    move /Y ca04_04.txt.decompressed.psb _decrypted\ca04_04.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_04.txt
)
EmtConvert mdf -s 523aad2de7132ca04_05.txt.scn.m -l 131 _chunks\ca04_05.txt.mdf
if exist ca04_05.txt.decompressed.psb (
    move /Y ca04_05.txt.decompressed.psb _decrypted\ca04_05.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_05.txt
)
EmtConvert mdf -s 523aad2de7132ca04_06.txt.scn.m -l 131 _chunks\ca04_06.txt.mdf
if exist ca04_06.txt.decompressed.psb (
    move /Y ca04_06.txt.decompressed.psb _decrypted\ca04_06.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_06.txt
)
EmtConvert mdf -s 523aad2de7132ca04_07.txt.scn.m -l 131 _chunks\ca04_07.txt.mdf
if exist ca04_07.txt.decompressed.psb (
    move /Y ca04_07.txt.decompressed.psb _decrypted\ca04_07.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_07.txt
)
EmtConvert mdf -s 523aad2de7132ca04_08.txt.scn.m -l 131 _chunks\ca04_08.txt.mdf
if exist ca04_08.txt.decompressed.psb (
    move /Y ca04_08.txt.decompressed.psb _decrypted\ca04_08.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_08.txt
)
EmtConvert mdf -s 523aad2de7132ca04_09.txt.scn.m -l 131 _chunks\ca04_09.txt.mdf
if exist ca04_09.txt.decompressed.psb (
    move /Y ca04_09.txt.decompressed.psb _decrypted\ca04_09.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_09.txt
)
EmtConvert mdf -s 523aad2de7132ca04_10.txt.scn.m -l 131 _chunks\ca04_10.txt.mdf
if exist ca04_10.txt.decompressed.psb (
    move /Y ca04_10.txt.decompressed.psb _decrypted\ca04_10.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_10.txt
)
EmtConvert mdf -s 523aad2de7132ca04_11.txt.scn.m -l 131 _chunks\ca04_11.txt.mdf
if exist ca04_11.txt.decompressed.psb (
    move /Y ca04_11.txt.decompressed.psb _decrypted\ca04_11.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_11.txt
)
EmtConvert mdf -s 523aad2de7132ca04_12.txt.scn.m -l 131 _chunks\ca04_12.txt.mdf
if exist ca04_12.txt.decompressed.psb (
    move /Y ca04_12.txt.decompressed.psb _decrypted\ca04_12.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_12.txt
)
EmtConvert mdf -s 523aad2de7132ca04_13.txt.scn.m -l 131 _chunks\ca04_13.txt.mdf
if exist ca04_13.txt.decompressed.psb (
    move /Y ca04_13.txt.decompressed.psb _decrypted\ca04_13.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_13.txt
)
EmtConvert mdf -s 523aad2de7132ca04_14.txt.scn.m -l 131 _chunks\ca04_14.txt.mdf
if exist ca04_14.txt.decompressed.psb (
    move /Y ca04_14.txt.decompressed.psb _decrypted\ca04_14.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_14.txt
)
EmtConvert mdf -s 523aad2de7132ca04_15.txt.scn.m -l 131 _chunks\ca04_15.txt.mdf
if exist ca04_15.txt.decompressed.psb (
    move /Y ca04_15.txt.decompressed.psb _decrypted\ca04_15.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_15.txt
)
EmtConvert mdf -s 523aad2de7132ca04_16.txt.scn.m -l 131 _chunks\ca04_16.txt.mdf
if exist ca04_16.txt.decompressed.psb (
    move /Y ca04_16.txt.decompressed.psb _decrypted\ca04_16.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_16.txt
)
EmtConvert mdf -s 523aad2de7132ca04_17.txt.scn.m -l 131 _chunks\ca04_17.txt.mdf
if exist ca04_17.txt.decompressed.psb (
    move /Y ca04_17.txt.decompressed.psb _decrypted\ca04_17.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_17.txt
)
EmtConvert mdf -s 523aad2de7132ca04_18.txt.scn.m -l 131 _chunks\ca04_18.txt.mdf
if exist ca04_18.txt.decompressed.psb (
    move /Y ca04_18.txt.decompressed.psb _decrypted\ca04_18.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_18.txt
)
EmtConvert mdf -s 523aad2de7132ca04_19.txt.scn.m -l 131 _chunks\ca04_19.txt.mdf
if exist ca04_19.txt.decompressed.psb (
    move /Y ca04_19.txt.decompressed.psb _decrypted\ca04_19.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_19.txt
)
EmtConvert mdf -s 523aad2de7132ca04_20.txt.scn.m -l 131 _chunks\ca04_20.txt.mdf
if exist ca04_20.txt.decompressed.psb (
    move /Y ca04_20.txt.decompressed.psb _decrypted\ca04_20.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_20.txt
)
EmtConvert mdf -s 523aad2de7132ca04_21.txt.scn.m -l 131 _chunks\ca04_21.txt.mdf
if exist ca04_21.txt.decompressed.psb (
    move /Y ca04_21.txt.decompressed.psb _decrypted\ca04_21.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_21.txt
)
EmtConvert mdf -s 523aad2de7132ca04_22.txt.scn.m -l 131 _chunks\ca04_22.txt.mdf
if exist ca04_22.txt.decompressed.psb (
    move /Y ca04_22.txt.decompressed.psb _decrypted\ca04_22.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_22.txt
)
EmtConvert mdf -s 523aad2de7132ca04_23.txt.scn.m -l 131 _chunks\ca04_23.txt.mdf
if exist ca04_23.txt.decompressed.psb (
    move /Y ca04_23.txt.decompressed.psb _decrypted\ca04_23.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_23.txt
)
EmtConvert mdf -s 523aad2de7132ca04_24.txt.scn.m -l 131 _chunks\ca04_24.txt.mdf
if exist ca04_24.txt.decompressed.psb (
    move /Y ca04_24.txt.decompressed.psb _decrypted\ca04_24.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_24.txt
)
EmtConvert mdf -s 523aad2de7132ca04_25.txt.scn.m -l 131 _chunks\ca04_25.txt.mdf
if exist ca04_25.txt.decompressed.psb (
    move /Y ca04_25.txt.decompressed.psb _decrypted\ca04_25.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_25.txt
)
EmtConvert mdf -s 523aad2de7132ca04_26.txt.scn.m -l 131 _chunks\ca04_26.txt.mdf
if exist ca04_26.txt.decompressed.psb (
    move /Y ca04_26.txt.decompressed.psb _decrypted\ca04_26.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_26.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv1_01.txt.scn.m -l 131 _chunks\ca04_mv1_01.txt.mdf
if exist ca04_mv1_01.txt.decompressed.psb (
    move /Y ca04_mv1_01.txt.decompressed.psb _decrypted\ca04_mv1_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv1_01.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv1_02.txt.scn.m -l 131 _chunks\ca04_mv1_02.txt.mdf
if exist ca04_mv1_02.txt.decompressed.psb (
    move /Y ca04_mv1_02.txt.decompressed.psb _decrypted\ca04_mv1_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv1_02.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv1_03.txt.scn.m -l 131 _chunks\ca04_mv1_03.txt.mdf
if exist ca04_mv1_03.txt.decompressed.psb (
    move /Y ca04_mv1_03.txt.decompressed.psb _decrypted\ca04_mv1_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv1_03.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv2_01.txt.scn.m -l 131 _chunks\ca04_mv2_01.txt.mdf
if exist ca04_mv2_01.txt.decompressed.psb (
    move /Y ca04_mv2_01.txt.decompressed.psb _decrypted\ca04_mv2_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv2_01.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv2_02.txt.scn.m -l 131 _chunks\ca04_mv2_02.txt.mdf
if exist ca04_mv2_02.txt.decompressed.psb (
    move /Y ca04_mv2_02.txt.decompressed.psb _decrypted\ca04_mv2_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv2_02.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv2_03.txt.scn.m -l 131 _chunks\ca04_mv2_03.txt.mdf
if exist ca04_mv2_03.txt.decompressed.psb (
    move /Y ca04_mv2_03.txt.decompressed.psb _decrypted\ca04_mv2_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv2_03.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv3_01.txt.scn.m -l 131 _chunks\ca04_mv3_01.txt.mdf
if exist ca04_mv3_01.txt.decompressed.psb (
    move /Y ca04_mv3_01.txt.decompressed.psb _decrypted\ca04_mv3_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv3_01.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv3_02.txt.scn.m -l 131 _chunks\ca04_mv3_02.txt.mdf
if exist ca04_mv3_02.txt.decompressed.psb (
    move /Y ca04_mv3_02.txt.decompressed.psb _decrypted\ca04_mv3_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv3_02.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv3_03.txt.scn.m -l 131 _chunks\ca04_mv3_03.txt.mdf
if exist ca04_mv3_03.txt.decompressed.psb (
    move /Y ca04_mv3_03.txt.decompressed.psb _decrypted\ca04_mv3_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv3_03.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv4_01.txt.scn.m -l 131 _chunks\ca04_mv4_01.txt.mdf
if exist ca04_mv4_01.txt.decompressed.psb (
    move /Y ca04_mv4_01.txt.decompressed.psb _decrypted\ca04_mv4_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv4_01.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv4_02.txt.scn.m -l 131 _chunks\ca04_mv4_02.txt.mdf
if exist ca04_mv4_02.txt.decompressed.psb (
    move /Y ca04_mv4_02.txt.decompressed.psb _decrypted\ca04_mv4_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv4_02.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv4_03.txt.scn.m -l 131 _chunks\ca04_mv4_03.txt.mdf
if exist ca04_mv4_03.txt.decompressed.psb (
    move /Y ca04_mv4_03.txt.decompressed.psb _decrypted\ca04_mv4_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv4_03.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv5_01.txt.scn.m -l 131 _chunks\ca04_mv5_01.txt.mdf
if exist ca04_mv5_01.txt.decompressed.psb (
    move /Y ca04_mv5_01.txt.decompressed.psb _decrypted\ca04_mv5_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv5_01.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv5_02.txt.scn.m -l 131 _chunks\ca04_mv5_02.txt.mdf
if exist ca04_mv5_02.txt.decompressed.psb (
    move /Y ca04_mv5_02.txt.decompressed.psb _decrypted\ca04_mv5_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv5_02.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv5_03.txt.scn.m -l 131 _chunks\ca04_mv5_03.txt.mdf
if exist ca04_mv5_03.txt.decompressed.psb (
    move /Y ca04_mv5_03.txt.decompressed.psb _decrypted\ca04_mv5_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv5_03.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv6_01.txt.scn.m -l 131 _chunks\ca04_mv6_01.txt.mdf
if exist ca04_mv6_01.txt.decompressed.psb (
    move /Y ca04_mv6_01.txt.decompressed.psb _decrypted\ca04_mv6_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv6_01.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv6_02.txt.scn.m -l 131 _chunks\ca04_mv6_02.txt.mdf
if exist ca04_mv6_02.txt.decompressed.psb (
    move /Y ca04_mv6_02.txt.decompressed.psb _decrypted\ca04_mv6_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv6_02.txt
)
EmtConvert mdf -s 523aad2de7132ca04_mv6_03.txt.scn.m -l 131 _chunks\ca04_mv6_03.txt.mdf
if exist ca04_mv6_03.txt.decompressed.psb (
    move /Y ca04_mv6_03.txt.decompressed.psb _decrypted\ca04_mv6_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca04_mv6_03.txt
)
EmtConvert mdf -s 523aad2de7132ca05_01.txt.scn.m -l 131 _chunks\ca05_01.txt.mdf
if exist ca05_01.txt.decompressed.psb (
    move /Y ca05_01.txt.decompressed.psb _decrypted\ca05_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_01.txt
)
EmtConvert mdf -s 523aad2de7132ca05_02.txt.scn.m -l 131 _chunks\ca05_02.txt.mdf
if exist ca05_02.txt.decompressed.psb (
    move /Y ca05_02.txt.decompressed.psb _decrypted\ca05_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_02.txt
)
EmtConvert mdf -s 523aad2de7132ca05_03.txt.scn.m -l 131 _chunks\ca05_03.txt.mdf
if exist ca05_03.txt.decompressed.psb (
    move /Y ca05_03.txt.decompressed.psb _decrypted\ca05_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_03.txt
)
EmtConvert mdf -s 523aad2de7132ca05_04.txt.scn.m -l 131 _chunks\ca05_04.txt.mdf
if exist ca05_04.txt.decompressed.psb (
    move /Y ca05_04.txt.decompressed.psb _decrypted\ca05_04.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_04.txt
)
EmtConvert mdf -s 523aad2de7132ca05_05.txt.scn.m -l 131 _chunks\ca05_05.txt.mdf
if exist ca05_05.txt.decompressed.psb (
    move /Y ca05_05.txt.decompressed.psb _decrypted\ca05_05.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_05.txt
)
EmtConvert mdf -s 523aad2de7132ca05_06.txt.scn.m -l 131 _chunks\ca05_06.txt.mdf
if exist ca05_06.txt.decompressed.psb (
    move /Y ca05_06.txt.decompressed.psb _decrypted\ca05_06.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_06.txt
)
EmtConvert mdf -s 523aad2de7132ca05_07.txt.scn.m -l 131 _chunks\ca05_07.txt.mdf
if exist ca05_07.txt.decompressed.psb (
    move /Y ca05_07.txt.decompressed.psb _decrypted\ca05_07.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_07.txt
)
EmtConvert mdf -s 523aad2de7132ca05_08.txt.scn.m -l 131 _chunks\ca05_08.txt.mdf
if exist ca05_08.txt.decompressed.psb (
    move /Y ca05_08.txt.decompressed.psb _decrypted\ca05_08.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_08.txt
)
EmtConvert mdf -s 523aad2de7132ca05_09.txt.scn.m -l 131 _chunks\ca05_09.txt.mdf
if exist ca05_09.txt.decompressed.psb (
    move /Y ca05_09.txt.decompressed.psb _decrypted\ca05_09.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_09.txt
)
EmtConvert mdf -s 523aad2de7132ca05_10.txt.scn.m -l 131 _chunks\ca05_10.txt.mdf
if exist ca05_10.txt.decompressed.psb (
    move /Y ca05_10.txt.decompressed.psb _decrypted\ca05_10.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_10.txt
)
EmtConvert mdf -s 523aad2de7132ca05_11.txt.scn.m -l 131 _chunks\ca05_11.txt.mdf
if exist ca05_11.txt.decompressed.psb (
    move /Y ca05_11.txt.decompressed.psb _decrypted\ca05_11.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_11.txt
)
EmtConvert mdf -s 523aad2de7132ca05_12.txt.scn.m -l 131 _chunks\ca05_12.txt.mdf
if exist ca05_12.txt.decompressed.psb (
    move /Y ca05_12.txt.decompressed.psb _decrypted\ca05_12.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_12.txt
)
EmtConvert mdf -s 523aad2de7132ca05_13.txt.scn.m -l 131 _chunks\ca05_13.txt.mdf
if exist ca05_13.txt.decompressed.psb (
    move /Y ca05_13.txt.decompressed.psb _decrypted\ca05_13.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_13.txt
)
EmtConvert mdf -s 523aad2de7132ca05_14.txt.scn.m -l 131 _chunks\ca05_14.txt.mdf
if exist ca05_14.txt.decompressed.psb (
    move /Y ca05_14.txt.decompressed.psb _decrypted\ca05_14.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_14.txt
)
EmtConvert mdf -s 523aad2de7132ca05_15.txt.scn.m -l 131 _chunks\ca05_15.txt.mdf
if exist ca05_15.txt.decompressed.psb (
    move /Y ca05_15.txt.decompressed.psb _decrypted\ca05_15.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_15.txt
)
EmtConvert mdf -s 523aad2de7132ca05_16.txt.scn.m -l 131 _chunks\ca05_16.txt.mdf
if exist ca05_16.txt.decompressed.psb (
    move /Y ca05_16.txt.decompressed.psb _decrypted\ca05_16.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_16.txt
)
EmtConvert mdf -s 523aad2de7132ca05_17.txt.scn.m -l 131 _chunks\ca05_17.txt.mdf
if exist ca05_17.txt.decompressed.psb (
    move /Y ca05_17.txt.decompressed.psb _decrypted\ca05_17.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_17.txt
)
EmtConvert mdf -s 523aad2de7132ca05_18.txt.scn.m -l 131 _chunks\ca05_18.txt.mdf
if exist ca05_18.txt.decompressed.psb (
    move /Y ca05_18.txt.decompressed.psb _decrypted\ca05_18.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_18.txt
)
EmtConvert mdf -s 523aad2de7132ca05_19.txt.scn.m -l 131 _chunks\ca05_19.txt.mdf
if exist ca05_19.txt.decompressed.psb (
    move /Y ca05_19.txt.decompressed.psb _decrypted\ca05_19.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_19.txt
)
EmtConvert mdf -s 523aad2de7132ca05_20.txt.scn.m -l 131 _chunks\ca05_20.txt.mdf
if exist ca05_20.txt.decompressed.psb (
    move /Y ca05_20.txt.decompressed.psb _decrypted\ca05_20.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_20.txt
)
EmtConvert mdf -s 523aad2de7132ca05_21.txt.scn.m -l 131 _chunks\ca05_21.txt.mdf
if exist ca05_21.txt.decompressed.psb (
    move /Y ca05_21.txt.decompressed.psb _decrypted\ca05_21.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_21.txt
)
EmtConvert mdf -s 523aad2de7132ca05_22.txt.scn.m -l 131 _chunks\ca05_22.txt.mdf
if exist ca05_22.txt.decompressed.psb (
    move /Y ca05_22.txt.decompressed.psb _decrypted\ca05_22.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_22.txt
)
EmtConvert mdf -s 523aad2de7132ca05_23.txt.scn.m -l 131 _chunks\ca05_23.txt.mdf
if exist ca05_23.txt.decompressed.psb (
    move /Y ca05_23.txt.decompressed.psb _decrypted\ca05_23.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_23.txt
)
EmtConvert mdf -s 523aad2de7132ca05_24.txt.scn.m -l 131 _chunks\ca05_24.txt.mdf
if exist ca05_24.txt.decompressed.psb (
    move /Y ca05_24.txt.decompressed.psb _decrypted\ca05_24.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_24.txt
)
EmtConvert mdf -s 523aad2de7132ca05_25.txt.scn.m -l 131 _chunks\ca05_25.txt.mdf
if exist ca05_25.txt.decompressed.psb (
    move /Y ca05_25.txt.decompressed.psb _decrypted\ca05_25.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_25.txt
)
EmtConvert mdf -s 523aad2de7132ca05_26.txt.scn.m -l 131 _chunks\ca05_26.txt.mdf
if exist ca05_26.txt.decompressed.psb (
    move /Y ca05_26.txt.decompressed.psb _decrypted\ca05_26.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_26.txt
)
EmtConvert mdf -s 523aad2de7132ca05_27.txt.scn.m -l 131 _chunks\ca05_27.txt.mdf
if exist ca05_27.txt.decompressed.psb (
    move /Y ca05_27.txt.decompressed.psb _decrypted\ca05_27.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_27.txt
)
EmtConvert mdf -s 523aad2de7132ca05_28.txt.scn.m -l 131 _chunks\ca05_28.txt.mdf
if exist ca05_28.txt.decompressed.psb (
    move /Y ca05_28.txt.decompressed.psb _decrypted\ca05_28.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_28.txt
)
EmtConvert mdf -s 523aad2de7132ca05_29.txt.scn.m -l 131 _chunks\ca05_29.txt.mdf
if exist ca05_29.txt.decompressed.psb (
    move /Y ca05_29.txt.decompressed.psb _decrypted\ca05_29.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_29.txt
)
EmtConvert mdf -s 523aad2de7132ca05_30.txt.scn.m -l 131 _chunks\ca05_30.txt.mdf
if exist ca05_30.txt.decompressed.psb (
    move /Y ca05_30.txt.decompressed.psb _decrypted\ca05_30.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_30.txt
)
EmtConvert mdf -s 523aad2de7132ca05_31.txt.scn.m -l 131 _chunks\ca05_31.txt.mdf
if exist ca05_31.txt.decompressed.psb (
    move /Y ca05_31.txt.decompressed.psb _decrypted\ca05_31.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_31.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv1_01.txt.scn.m -l 131 _chunks\ca05_mv1_01.txt.mdf
if exist ca05_mv1_01.txt.decompressed.psb (
    move /Y ca05_mv1_01.txt.decompressed.psb _decrypted\ca05_mv1_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv1_01.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv1_02.txt.scn.m -l 131 _chunks\ca05_mv1_02.txt.mdf
if exist ca05_mv1_02.txt.decompressed.psb (
    move /Y ca05_mv1_02.txt.decompressed.psb _decrypted\ca05_mv1_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv1_02.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv1_03.txt.scn.m -l 131 _chunks\ca05_mv1_03.txt.mdf
if exist ca05_mv1_03.txt.decompressed.psb (
    move /Y ca05_mv1_03.txt.decompressed.psb _decrypted\ca05_mv1_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv1_03.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv2_01.txt.scn.m -l 131 _chunks\ca05_mv2_01.txt.mdf
if exist ca05_mv2_01.txt.decompressed.psb (
    move /Y ca05_mv2_01.txt.decompressed.psb _decrypted\ca05_mv2_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv2_01.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv2_02.txt.scn.m -l 131 _chunks\ca05_mv2_02.txt.mdf
if exist ca05_mv2_02.txt.decompressed.psb (
    move /Y ca05_mv2_02.txt.decompressed.psb _decrypted\ca05_mv2_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv2_02.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv2_03.txt.scn.m -l 131 _chunks\ca05_mv2_03.txt.mdf
if exist ca05_mv2_03.txt.decompressed.psb (
    move /Y ca05_mv2_03.txt.decompressed.psb _decrypted\ca05_mv2_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv2_03.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv3_01.txt.scn.m -l 131 _chunks\ca05_mv3_01.txt.mdf
if exist ca05_mv3_01.txt.decompressed.psb (
    move /Y ca05_mv3_01.txt.decompressed.psb _decrypted\ca05_mv3_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv3_01.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv3_02.txt.scn.m -l 131 _chunks\ca05_mv3_02.txt.mdf
if exist ca05_mv3_02.txt.decompressed.psb (
    move /Y ca05_mv3_02.txt.decompressed.psb _decrypted\ca05_mv3_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv3_02.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv3_03.txt.scn.m -l 131 _chunks\ca05_mv3_03.txt.mdf
if exist ca05_mv3_03.txt.decompressed.psb (
    move /Y ca05_mv3_03.txt.decompressed.psb _decrypted\ca05_mv3_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv3_03.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv4_01.txt.scn.m -l 131 _chunks\ca05_mv4_01.txt.mdf
if exist ca05_mv4_01.txt.decompressed.psb (
    move /Y ca05_mv4_01.txt.decompressed.psb _decrypted\ca05_mv4_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv4_01.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv4_02.txt.scn.m -l 131 _chunks\ca05_mv4_02.txt.mdf
if exist ca05_mv4_02.txt.decompressed.psb (
    move /Y ca05_mv4_02.txt.decompressed.psb _decrypted\ca05_mv4_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv4_02.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv4_03.txt.scn.m -l 131 _chunks\ca05_mv4_03.txt.mdf
if exist ca05_mv4_03.txt.decompressed.psb (
    move /Y ca05_mv4_03.txt.decompressed.psb _decrypted\ca05_mv4_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv4_03.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv5_01.txt.scn.m -l 131 _chunks\ca05_mv5_01.txt.mdf
if exist ca05_mv5_01.txt.decompressed.psb (
    move /Y ca05_mv5_01.txt.decompressed.psb _decrypted\ca05_mv5_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv5_01.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv5_02.txt.scn.m -l 131 _chunks\ca05_mv5_02.txt.mdf
if exist ca05_mv5_02.txt.decompressed.psb (
    move /Y ca05_mv5_02.txt.decompressed.psb _decrypted\ca05_mv5_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv5_02.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv5_03.txt.scn.m -l 131 _chunks\ca05_mv5_03.txt.mdf
if exist ca05_mv5_03.txt.decompressed.psb (
    move /Y ca05_mv5_03.txt.decompressed.psb _decrypted\ca05_mv5_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv5_03.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv6_01.txt.scn.m -l 131 _chunks\ca05_mv6_01.txt.mdf
if exist ca05_mv6_01.txt.decompressed.psb (
    move /Y ca05_mv6_01.txt.decompressed.psb _decrypted\ca05_mv6_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv6_01.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv6_02.txt.scn.m -l 131 _chunks\ca05_mv6_02.txt.mdf
if exist ca05_mv6_02.txt.decompressed.psb (
    move /Y ca05_mv6_02.txt.decompressed.psb _decrypted\ca05_mv6_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv6_02.txt
)
EmtConvert mdf -s 523aad2de7132ca05_mv6_03.txt.scn.m -l 131 _chunks\ca05_mv6_03.txt.mdf
if exist ca05_mv6_03.txt.decompressed.psb (
    move /Y ca05_mv6_03.txt.decompressed.psb _decrypted\ca05_mv6_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca05_mv6_03.txt
)
EmtConvert mdf -s 523aad2de7132ca06_01.txt.scn.m -l 131 _chunks\ca06_01.txt.mdf
if exist ca06_01.txt.decompressed.psb (
    move /Y ca06_01.txt.decompressed.psb _decrypted\ca06_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_01.txt
)
EmtConvert mdf -s 523aad2de7132ca06_02.txt.scn.m -l 131 _chunks\ca06_02.txt.mdf
if exist ca06_02.txt.decompressed.psb (
    move /Y ca06_02.txt.decompressed.psb _decrypted\ca06_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_02.txt
)
EmtConvert mdf -s 523aad2de7132ca06_03.txt.scn.m -l 131 _chunks\ca06_03.txt.mdf
if exist ca06_03.txt.decompressed.psb (
    move /Y ca06_03.txt.decompressed.psb _decrypted\ca06_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_03.txt
)
EmtConvert mdf -s 523aad2de7132ca06_04.txt.scn.m -l 131 _chunks\ca06_04.txt.mdf
if exist ca06_04.txt.decompressed.psb (
    move /Y ca06_04.txt.decompressed.psb _decrypted\ca06_04.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_04.txt
)
EmtConvert mdf -s 523aad2de7132ca06_05.txt.scn.m -l 131 _chunks\ca06_05.txt.mdf
if exist ca06_05.txt.decompressed.psb (
    move /Y ca06_05.txt.decompressed.psb _decrypted\ca06_05.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_05.txt
)
EmtConvert mdf -s 523aad2de7132ca06_06.txt.scn.m -l 131 _chunks\ca06_06.txt.mdf
if exist ca06_06.txt.decompressed.psb (
    move /Y ca06_06.txt.decompressed.psb _decrypted\ca06_06.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_06.txt
)
EmtConvert mdf -s 523aad2de7132ca06_07.txt.scn.m -l 131 _chunks\ca06_07.txt.mdf
if exist ca06_07.txt.decompressed.psb (
    move /Y ca06_07.txt.decompressed.psb _decrypted\ca06_07.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_07.txt
)
EmtConvert mdf -s 523aad2de7132ca06_08.txt.scn.m -l 131 _chunks\ca06_08.txt.mdf
if exist ca06_08.txt.decompressed.psb (
    move /Y ca06_08.txt.decompressed.psb _decrypted\ca06_08.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_08.txt
)
EmtConvert mdf -s 523aad2de7132ca06_09.txt.scn.m -l 131 _chunks\ca06_09.txt.mdf
if exist ca06_09.txt.decompressed.psb (
    move /Y ca06_09.txt.decompressed.psb _decrypted\ca06_09.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_09.txt
)
EmtConvert mdf -s 523aad2de7132ca06_10.txt.scn.m -l 131 _chunks\ca06_10.txt.mdf
if exist ca06_10.txt.decompressed.psb (
    move /Y ca06_10.txt.decompressed.psb _decrypted\ca06_10.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_10.txt
)
EmtConvert mdf -s 523aad2de7132ca06_11.txt.scn.m -l 131 _chunks\ca06_11.txt.mdf
if exist ca06_11.txt.decompressed.psb (
    move /Y ca06_11.txt.decompressed.psb _decrypted\ca06_11.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_11.txt
)
EmtConvert mdf -s 523aad2de7132ca06_12.txt.scn.m -l 131 _chunks\ca06_12.txt.mdf
if exist ca06_12.txt.decompressed.psb (
    move /Y ca06_12.txt.decompressed.psb _decrypted\ca06_12.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_12.txt
)
EmtConvert mdf -s 523aad2de7132ca06_13.txt.scn.m -l 131 _chunks\ca06_13.txt.mdf
if exist ca06_13.txt.decompressed.psb (
    move /Y ca06_13.txt.decompressed.psb _decrypted\ca06_13.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_13.txt
)
EmtConvert mdf -s 523aad2de7132ca06_14.txt.scn.m -l 131 _chunks\ca06_14.txt.mdf
if exist ca06_14.txt.decompressed.psb (
    move /Y ca06_14.txt.decompressed.psb _decrypted\ca06_14.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_14.txt
)
EmtConvert mdf -s 523aad2de7132ca06_15.txt.scn.m -l 131 _chunks\ca06_15.txt.mdf
if exist ca06_15.txt.decompressed.psb (
    move /Y ca06_15.txt.decompressed.psb _decrypted\ca06_15.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_15.txt
)
EmtConvert mdf -s 523aad2de7132ca06_16.txt.scn.m -l 131 _chunks\ca06_16.txt.mdf
if exist ca06_16.txt.decompressed.psb (
    move /Y ca06_16.txt.decompressed.psb _decrypted\ca06_16.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_16.txt
)
EmtConvert mdf -s 523aad2de7132ca06_17.txt.scn.m -l 131 _chunks\ca06_17.txt.mdf
if exist ca06_17.txt.decompressed.psb (
    move /Y ca06_17.txt.decompressed.psb _decrypted\ca06_17.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_17.txt
)
EmtConvert mdf -s 523aad2de7132ca06_18.txt.scn.m -l 131 _chunks\ca06_18.txt.mdf
if exist ca06_18.txt.decompressed.psb (
    move /Y ca06_18.txt.decompressed.psb _decrypted\ca06_18.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_18.txt
)
EmtConvert mdf -s 523aad2de7132ca06_19.txt.scn.m -l 131 _chunks\ca06_19.txt.mdf
if exist ca06_19.txt.decompressed.psb (
    move /Y ca06_19.txt.decompressed.psb _decrypted\ca06_19.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_19.txt
)
EmtConvert mdf -s 523aad2de7132ca06_20.txt.scn.m -l 131 _chunks\ca06_20.txt.mdf
if exist ca06_20.txt.decompressed.psb (
    move /Y ca06_20.txt.decompressed.psb _decrypted\ca06_20.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_20.txt
)
EmtConvert mdf -s 523aad2de7132ca06_21.txt.scn.m -l 131 _chunks\ca06_21.txt.mdf
if exist ca06_21.txt.decompressed.psb (
    move /Y ca06_21.txt.decompressed.psb _decrypted\ca06_21.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_21.txt
)
EmtConvert mdf -s 523aad2de7132ca06_22.txt.scn.m -l 131 _chunks\ca06_22.txt.mdf
if exist ca06_22.txt.decompressed.psb (
    move /Y ca06_22.txt.decompressed.psb _decrypted\ca06_22.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_22.txt
)
EmtConvert mdf -s 523aad2de7132ca06_23.txt.scn.m -l 131 _chunks\ca06_23.txt.mdf
if exist ca06_23.txt.decompressed.psb (
    move /Y ca06_23.txt.decompressed.psb _decrypted\ca06_23.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_23.txt
)
EmtConvert mdf -s 523aad2de7132ca06_24.txt.scn.m -l 131 _chunks\ca06_24.txt.mdf
if exist ca06_24.txt.decompressed.psb (
    move /Y ca06_24.txt.decompressed.psb _decrypted\ca06_24.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_24.txt
)
EmtConvert mdf -s 523aad2de7132ca06_25.txt.scn.m -l 131 _chunks\ca06_25.txt.mdf
if exist ca06_25.txt.decompressed.psb (
    move /Y ca06_25.txt.decompressed.psb _decrypted\ca06_25.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_25.txt
)
EmtConvert mdf -s 523aad2de7132ca06_26.txt.scn.m -l 131 _chunks\ca06_26.txt.mdf
if exist ca06_26.txt.decompressed.psb (
    move /Y ca06_26.txt.decompressed.psb _decrypted\ca06_26.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_26.txt
)
EmtConvert mdf -s 523aad2de7132ca06_27.txt.scn.m -l 131 _chunks\ca06_27.txt.mdf
if exist ca06_27.txt.decompressed.psb (
    move /Y ca06_27.txt.decompressed.psb _decrypted\ca06_27.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_27.txt
)
EmtConvert mdf -s 523aad2de7132ca06_28.txt.scn.m -l 131 _chunks\ca06_28.txt.mdf
if exist ca06_28.txt.decompressed.psb (
    move /Y ca06_28.txt.decompressed.psb _decrypted\ca06_28.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_28.txt
)
EmtConvert mdf -s 523aad2de7132ca06_29.txt.scn.m -l 131 _chunks\ca06_29.txt.mdf
if exist ca06_29.txt.decompressed.psb (
    move /Y ca06_29.txt.decompressed.psb _decrypted\ca06_29.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_29.txt
)
EmtConvert mdf -s 523aad2de7132ca06_30.txt.scn.m -l 131 _chunks\ca06_30.txt.mdf
if exist ca06_30.txt.decompressed.psb (
    move /Y ca06_30.txt.decompressed.psb _decrypted\ca06_30.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_30.txt
)
EmtConvert mdf -s 523aad2de7132ca06_31.txt.scn.m -l 131 _chunks\ca06_31.txt.mdf
if exist ca06_31.txt.decompressed.psb (
    move /Y ca06_31.txt.decompressed.psb _decrypted\ca06_31.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_31.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv1_01.txt.scn.m -l 131 _chunks\ca06_mv1_01.txt.mdf
if exist ca06_mv1_01.txt.decompressed.psb (
    move /Y ca06_mv1_01.txt.decompressed.psb _decrypted\ca06_mv1_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv1_01.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv1_02.txt.scn.m -l 131 _chunks\ca06_mv1_02.txt.mdf
if exist ca06_mv1_02.txt.decompressed.psb (
    move /Y ca06_mv1_02.txt.decompressed.psb _decrypted\ca06_mv1_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv1_02.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv1_03.txt.scn.m -l 131 _chunks\ca06_mv1_03.txt.mdf
if exist ca06_mv1_03.txt.decompressed.psb (
    move /Y ca06_mv1_03.txt.decompressed.psb _decrypted\ca06_mv1_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv1_03.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv2_01.txt.scn.m -l 131 _chunks\ca06_mv2_01.txt.mdf
if exist ca06_mv2_01.txt.decompressed.psb (
    move /Y ca06_mv2_01.txt.decompressed.psb _decrypted\ca06_mv2_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv2_01.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv2_02.txt.scn.m -l 131 _chunks\ca06_mv2_02.txt.mdf
if exist ca06_mv2_02.txt.decompressed.psb (
    move /Y ca06_mv2_02.txt.decompressed.psb _decrypted\ca06_mv2_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv2_02.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv2_03.txt.scn.m -l 131 _chunks\ca06_mv2_03.txt.mdf
if exist ca06_mv2_03.txt.decompressed.psb (
    move /Y ca06_mv2_03.txt.decompressed.psb _decrypted\ca06_mv2_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv2_03.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv3_01.txt.scn.m -l 131 _chunks\ca06_mv3_01.txt.mdf
if exist ca06_mv3_01.txt.decompressed.psb (
    move /Y ca06_mv3_01.txt.decompressed.psb _decrypted\ca06_mv3_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv3_01.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv3_02.txt.scn.m -l 131 _chunks\ca06_mv3_02.txt.mdf
if exist ca06_mv3_02.txt.decompressed.psb (
    move /Y ca06_mv3_02.txt.decompressed.psb _decrypted\ca06_mv3_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv3_02.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv3_03.txt.scn.m -l 131 _chunks\ca06_mv3_03.txt.mdf
if exist ca06_mv3_03.txt.decompressed.psb (
    move /Y ca06_mv3_03.txt.decompressed.psb _decrypted\ca06_mv3_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv3_03.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv4_01.txt.scn.m -l 131 _chunks\ca06_mv4_01.txt.mdf
if exist ca06_mv4_01.txt.decompressed.psb (
    move /Y ca06_mv4_01.txt.decompressed.psb _decrypted\ca06_mv4_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv4_01.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv4_02.txt.scn.m -l 131 _chunks\ca06_mv4_02.txt.mdf
if exist ca06_mv4_02.txt.decompressed.psb (
    move /Y ca06_mv4_02.txt.decompressed.psb _decrypted\ca06_mv4_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv4_02.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv4_03.txt.scn.m -l 131 _chunks\ca06_mv4_03.txt.mdf
if exist ca06_mv4_03.txt.decompressed.psb (
    move /Y ca06_mv4_03.txt.decompressed.psb _decrypted\ca06_mv4_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv4_03.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv5_01.txt.scn.m -l 131 _chunks\ca06_mv5_01.txt.mdf
if exist ca06_mv5_01.txt.decompressed.psb (
    move /Y ca06_mv5_01.txt.decompressed.psb _decrypted\ca06_mv5_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv5_01.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv5_02.txt.scn.m -l 131 _chunks\ca06_mv5_02.txt.mdf
if exist ca06_mv5_02.txt.decompressed.psb (
    move /Y ca06_mv5_02.txt.decompressed.psb _decrypted\ca06_mv5_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv5_02.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv5_03.txt.scn.m -l 131 _chunks\ca06_mv5_03.txt.mdf
if exist ca06_mv5_03.txt.decompressed.psb (
    move /Y ca06_mv5_03.txt.decompressed.psb _decrypted\ca06_mv5_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv5_03.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv6_01.txt.scn.m -l 131 _chunks\ca06_mv6_01.txt.mdf
if exist ca06_mv6_01.txt.decompressed.psb (
    move /Y ca06_mv6_01.txt.decompressed.psb _decrypted\ca06_mv6_01.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv6_01.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv6_02.txt.scn.m -l 131 _chunks\ca06_mv6_02.txt.mdf
if exist ca06_mv6_02.txt.decompressed.psb (
    move /Y ca06_mv6_02.txt.decompressed.psb _decrypted\ca06_mv6_02.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv6_02.txt
)
EmtConvert mdf -s 523aad2de7132ca06_mv6_03.txt.scn.m -l 131 _chunks\ca06_mv6_03.txt.mdf
if exist ca06_mv6_03.txt.decompressed.psb (
    move /Y ca06_mv6_03.txt.decompressed.psb _decrypted\ca06_mv6_03.txt.psb >nul
) else (
    echo FALHA decrypt: ca06_mv6_03.txt
)
EmtConvert mdf -s 523aad2de7132dummy.txt.scn.m -l 131 _chunks\dummy.txt.mdf
if exist dummy.txt.decompressed.psb (
    move /Y dummy.txt.decompressed.psb _decrypted\dummy.txt.psb >nul
) else (
    echo FALHA decrypt: dummy.txt
)
EmtConvert mdf -s 523aad2de7132ed01_01_01.txt.scn.m -l 131 _chunks\ed01_01_01.txt.mdf
if exist ed01_01_01.txt.decompressed.psb (
    move /Y ed01_01_01.txt.decompressed.psb _decrypted\ed01_01_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed01_01_01.txt
)
EmtConvert mdf -s 523aad2de7132ed01_01_02.txt.scn.m -l 131 _chunks\ed01_01_02.txt.mdf
if exist ed01_01_02.txt.decompressed.psb (
    move /Y ed01_01_02.txt.decompressed.psb _decrypted\ed01_01_02.txt.psb >nul
) else (
    echo FALHA decrypt: ed01_01_02.txt
)
EmtConvert mdf -s 523aad2de7132ed01_02_01.txt.scn.m -l 131 _chunks\ed01_02_01.txt.mdf
if exist ed01_02_01.txt.decompressed.psb (
    move /Y ed01_02_01.txt.decompressed.psb _decrypted\ed01_02_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed01_02_01.txt
)
EmtConvert mdf -s 523aad2de7132ed01_02_02.txt.scn.m -l 131 _chunks\ed01_02_02.txt.mdf
if exist ed01_02_02.txt.decompressed.psb (
    move /Y ed01_02_02.txt.decompressed.psb _decrypted\ed01_02_02.txt.psb >nul
) else (
    echo FALHA decrypt: ed01_02_02.txt
)
EmtConvert mdf -s 523aad2de7132ed01_02_03.txt.scn.m -l 131 _chunks\ed01_02_03.txt.mdf
if exist ed01_02_03.txt.decompressed.psb (
    move /Y ed01_02_03.txt.decompressed.psb _decrypted\ed01_02_03.txt.psb >nul
) else (
    echo FALHA decrypt: ed01_02_03.txt
)
EmtConvert mdf -s 523aad2de7132ed01_02_04.txt.scn.m -l 131 _chunks\ed01_02_04.txt.mdf
if exist ed01_02_04.txt.decompressed.psb (
    move /Y ed01_02_04.txt.decompressed.psb _decrypted\ed01_02_04.txt.psb >nul
) else (
    echo FALHA decrypt: ed01_02_04.txt
)
EmtConvert mdf -s 523aad2de7132ed01_02_05.txt.scn.m -l 131 _chunks\ed01_02_05.txt.mdf
if exist ed01_02_05.txt.decompressed.psb (
    move /Y ed01_02_05.txt.decompressed.psb _decrypted\ed01_02_05.txt.psb >nul
) else (
    echo FALHA decrypt: ed01_02_05.txt
)
EmtConvert mdf -s 523aad2de7132ed02_01_01.txt.scn.m -l 131 _chunks\ed02_01_01.txt.mdf
if exist ed02_01_01.txt.decompressed.psb (
    move /Y ed02_01_01.txt.decompressed.psb _decrypted\ed02_01_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed02_01_01.txt
)
EmtConvert mdf -s 523aad2de7132ed02_01_02.txt.scn.m -l 131 _chunks\ed02_01_02.txt.mdf
if exist ed02_01_02.txt.decompressed.psb (
    move /Y ed02_01_02.txt.decompressed.psb _decrypted\ed02_01_02.txt.psb >nul
) else (
    echo FALHA decrypt: ed02_01_02.txt
)
EmtConvert mdf -s 523aad2de7132ed02_02_01.txt.scn.m -l 131 _chunks\ed02_02_01.txt.mdf
if exist ed02_02_01.txt.decompressed.psb (
    move /Y ed02_02_01.txt.decompressed.psb _decrypted\ed02_02_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed02_02_01.txt
)
EmtConvert mdf -s 523aad2de7132ed02_02_03.txt.scn.m -l 131 _chunks\ed02_02_03.txt.mdf
if exist ed02_02_03.txt.decompressed.psb (
    move /Y ed02_02_03.txt.decompressed.psb _decrypted\ed02_02_03.txt.psb >nul
) else (
    echo FALHA decrypt: ed02_02_03.txt
)
EmtConvert mdf -s 523aad2de7132ed02_02_04.txt.scn.m -l 131 _chunks\ed02_02_04.txt.mdf
if exist ed02_02_04.txt.decompressed.psb (
    move /Y ed02_02_04.txt.decompressed.psb _decrypted\ed02_02_04.txt.psb >nul
) else (
    echo FALHA decrypt: ed02_02_04.txt
)
EmtConvert mdf -s 523aad2de7132ed03_01_01.txt.scn.m -l 131 _chunks\ed03_01_01.txt.mdf
if exist ed03_01_01.txt.decompressed.psb (
    move /Y ed03_01_01.txt.decompressed.psb _decrypted\ed03_01_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed03_01_01.txt
)
EmtConvert mdf -s 523aad2de7132ed03_01_02.txt.scn.m -l 131 _chunks\ed03_01_02.txt.mdf
if exist ed03_01_02.txt.decompressed.psb (
    move /Y ed03_01_02.txt.decompressed.psb _decrypted\ed03_01_02.txt.psb >nul
) else (
    echo FALHA decrypt: ed03_01_02.txt
)
EmtConvert mdf -s 523aad2de7132ed03_02_01.txt.scn.m -l 131 _chunks\ed03_02_01.txt.mdf
if exist ed03_02_01.txt.decompressed.psb (
    move /Y ed03_02_01.txt.decompressed.psb _decrypted\ed03_02_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed03_02_01.txt
)
EmtConvert mdf -s 523aad2de7132ed03_02_03.txt.scn.m -l 131 _chunks\ed03_02_03.txt.mdf
if exist ed03_02_03.txt.decompressed.psb (
    move /Y ed03_02_03.txt.decompressed.psb _decrypted\ed03_02_03.txt.psb >nul
) else (
    echo FALHA decrypt: ed03_02_03.txt
)
EmtConvert mdf -s 523aad2de7132ed03_02_04.txt.scn.m -l 131 _chunks\ed03_02_04.txt.mdf
if exist ed03_02_04.txt.decompressed.psb (
    move /Y ed03_02_04.txt.decompressed.psb _decrypted\ed03_02_04.txt.psb >nul
) else (
    echo FALHA decrypt: ed03_02_04.txt
)
EmtConvert mdf -s 523aad2de7132ed04_01_01.txt.scn.m -l 131 _chunks\ed04_01_01.txt.mdf
if exist ed04_01_01.txt.decompressed.psb (
    move /Y ed04_01_01.txt.decompressed.psb _decrypted\ed04_01_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed04_01_01.txt
)
EmtConvert mdf -s 523aad2de7132ed04_01_02.txt.scn.m -l 131 _chunks\ed04_01_02.txt.mdf
if exist ed04_01_02.txt.decompressed.psb (
    move /Y ed04_01_02.txt.decompressed.psb _decrypted\ed04_01_02.txt.psb >nul
) else (
    echo FALHA decrypt: ed04_01_02.txt
)
EmtConvert mdf -s 523aad2de7132ed04_02_01.txt.scn.m -l 131 _chunks\ed04_02_01.txt.mdf
if exist ed04_02_01.txt.decompressed.psb (
    move /Y ed04_02_01.txt.decompressed.psb _decrypted\ed04_02_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed04_02_01.txt
)
EmtConvert mdf -s 523aad2de7132ed04_02_03.txt.scn.m -l 131 _chunks\ed04_02_03.txt.mdf
if exist ed04_02_03.txt.decompressed.psb (
    move /Y ed04_02_03.txt.decompressed.psb _decrypted\ed04_02_03.txt.psb >nul
) else (
    echo FALHA decrypt: ed04_02_03.txt
)
EmtConvert mdf -s 523aad2de7132ed04_02_04.txt.scn.m -l 131 _chunks\ed04_02_04.txt.mdf
if exist ed04_02_04.txt.decompressed.psb (
    move /Y ed04_02_04.txt.decompressed.psb _decrypted\ed04_02_04.txt.psb >nul
) else (
    echo FALHA decrypt: ed04_02_04.txt
)
EmtConvert mdf -s 523aad2de7132ed05_01_01.txt.scn.m -l 131 _chunks\ed05_01_01.txt.mdf
if exist ed05_01_01.txt.decompressed.psb (
    move /Y ed05_01_01.txt.decompressed.psb _decrypted\ed05_01_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed05_01_01.txt
)
EmtConvert mdf -s 523aad2de7132ed05_01_02.txt.scn.m -l 131 _chunks\ed05_01_02.txt.mdf
if exist ed05_01_02.txt.decompressed.psb (
    move /Y ed05_01_02.txt.decompressed.psb _decrypted\ed05_01_02.txt.psb >nul
) else (
    echo FALHA decrypt: ed05_01_02.txt
)
EmtConvert mdf -s 523aad2de7132ed05_02_01.txt.scn.m -l 131 _chunks\ed05_02_01.txt.mdf
if exist ed05_02_01.txt.decompressed.psb (
    move /Y ed05_02_01.txt.decompressed.psb _decrypted\ed05_02_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed05_02_01.txt
)
EmtConvert mdf -s 523aad2de7132ed05_02_03.txt.scn.m -l 131 _chunks\ed05_02_03.txt.mdf
if exist ed05_02_03.txt.decompressed.psb (
    move /Y ed05_02_03.txt.decompressed.psb _decrypted\ed05_02_03.txt.psb >nul
) else (
    echo FALHA decrypt: ed05_02_03.txt
)
EmtConvert mdf -s 523aad2de7132ed05_02_04.txt.scn.m -l 131 _chunks\ed05_02_04.txt.mdf
if exist ed05_02_04.txt.decompressed.psb (
    move /Y ed05_02_04.txt.decompressed.psb _decrypted\ed05_02_04.txt.psb >nul
) else (
    echo FALHA decrypt: ed05_02_04.txt
)
EmtConvert mdf -s 523aad2de7132ed06_01_01.txt.scn.m -l 131 _chunks\ed06_01_01.txt.mdf
if exist ed06_01_01.txt.decompressed.psb (
    move /Y ed06_01_01.txt.decompressed.psb _decrypted\ed06_01_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_01_01.txt
)
EmtConvert mdf -s 523aad2de7132ed06_01_02.txt.scn.m -l 131 _chunks\ed06_01_02.txt.mdf
if exist ed06_01_02.txt.decompressed.psb (
    move /Y ed06_01_02.txt.decompressed.psb _decrypted\ed06_01_02.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_01_02.txt
)
EmtConvert mdf -s 523aad2de7132ed06_01_03.txt.scn.m -l 131 _chunks\ed06_01_03.txt.mdf
if exist ed06_01_03.txt.decompressed.psb (
    move /Y ed06_01_03.txt.decompressed.psb _decrypted\ed06_01_03.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_01_03.txt
)
EmtConvert mdf -s 523aad2de7132ed06_01_04.txt.scn.m -l 131 _chunks\ed06_01_04.txt.mdf
if exist ed06_01_04.txt.decompressed.psb (
    move /Y ed06_01_04.txt.decompressed.psb _decrypted\ed06_01_04.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_01_04.txt
)
EmtConvert mdf -s 523aad2de7132ed06_01_05.txt.scn.m -l 131 _chunks\ed06_01_05.txt.mdf
if exist ed06_01_05.txt.decompressed.psb (
    move /Y ed06_01_05.txt.decompressed.psb _decrypted\ed06_01_05.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_01_05.txt
)
EmtConvert mdf -s 523aad2de7132ed06_01_06.txt.scn.m -l 131 _chunks\ed06_01_06.txt.mdf
if exist ed06_01_06.txt.decompressed.psb (
    move /Y ed06_01_06.txt.decompressed.psb _decrypted\ed06_01_06.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_01_06.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_01.txt.scn.m -l 131 _chunks\ed06_02_01.txt.mdf
if exist ed06_02_01.txt.decompressed.psb (
    move /Y ed06_02_01.txt.decompressed.psb _decrypted\ed06_02_01.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_01.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_02.txt.scn.m -l 131 _chunks\ed06_02_02.txt.mdf
if exist ed06_02_02.txt.decompressed.psb (
    move /Y ed06_02_02.txt.decompressed.psb _decrypted\ed06_02_02.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_02.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_03.txt.scn.m -l 131 _chunks\ed06_02_03.txt.mdf
if exist ed06_02_03.txt.decompressed.psb (
    move /Y ed06_02_03.txt.decompressed.psb _decrypted\ed06_02_03.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_03.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_04.txt.scn.m -l 131 _chunks\ed06_02_04.txt.mdf
if exist ed06_02_04.txt.decompressed.psb (
    move /Y ed06_02_04.txt.decompressed.psb _decrypted\ed06_02_04.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_04.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_05.txt.scn.m -l 131 _chunks\ed06_02_05.txt.mdf
if exist ed06_02_05.txt.decompressed.psb (
    move /Y ed06_02_05.txt.decompressed.psb _decrypted\ed06_02_05.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_05.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_06.txt.scn.m -l 131 _chunks\ed06_02_06.txt.mdf
if exist ed06_02_06.txt.decompressed.psb (
    move /Y ed06_02_06.txt.decompressed.psb _decrypted\ed06_02_06.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_06.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_07.txt.scn.m -l 131 _chunks\ed06_02_07.txt.mdf
if exist ed06_02_07.txt.decompressed.psb (
    move /Y ed06_02_07.txt.decompressed.psb _decrypted\ed06_02_07.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_07.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_08.txt.scn.m -l 131 _chunks\ed06_02_08.txt.mdf
if exist ed06_02_08.txt.decompressed.psb (
    move /Y ed06_02_08.txt.decompressed.psb _decrypted\ed06_02_08.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_08.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_09.txt.scn.m -l 131 _chunks\ed06_02_09.txt.mdf
if exist ed06_02_09.txt.decompressed.psb (
    move /Y ed06_02_09.txt.decompressed.psb _decrypted\ed06_02_09.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_09.txt
)
EmtConvert mdf -s 523aad2de7132ed06_02_10.txt.scn.m -l 131 _chunks\ed06_02_10.txt.mdf
if exist ed06_02_10.txt.decompressed.psb (
    move /Y ed06_02_10.txt.decompressed.psb _decrypted\ed06_02_10.txt.psb >nul
) else (
    echo FALHA decrypt: ed06_02_10.txt
)
EmtConvert mdf -s 523aad2de7132enlist.txt.scn.m -l 131 _chunks\enlist.txt.mdf
if exist enlist.txt.decompressed.psb (
    move /Y enlist.txt.decompressed.psb _decrypted\enlist.txt.psb >nul
) else (
    echo FALHA decrypt: enlist.txt
)
EmtConvert mdf -s 523aad2de7132gr_01_01.txt.scn.m -l 131 _chunks\gr_01_01.txt.mdf
if exist gr_01_01.txt.decompressed.psb (
    move /Y gr_01_01.txt.decompressed.psb _decrypted\gr_01_01.txt.psb >nul
) else (
    echo FALHA decrypt: gr_01_01.txt
)
EmtConvert mdf -s 523aad2de7132gr_01_02.txt.scn.m -l 131 _chunks\gr_01_02.txt.mdf
if exist gr_01_02.txt.decompressed.psb (
    move /Y gr_01_02.txt.decompressed.psb _decrypted\gr_01_02.txt.psb >nul
) else (
    echo FALHA decrypt: gr_01_02.txt
)
EmtConvert mdf -s 523aad2de7132gr_02_01.txt.scn.m -l 131 _chunks\gr_02_01.txt.mdf
if exist gr_02_01.txt.decompressed.psb (
    move /Y gr_02_01.txt.decompressed.psb _decrypted\gr_02_01.txt.psb >nul
) else (
    echo FALHA decrypt: gr_02_01.txt
)
EmtConvert mdf -s 523aad2de7132gr_02_02.txt.scn.m -l 131 _chunks\gr_02_02.txt.mdf
if exist gr_02_02.txt.decompressed.psb (
    move /Y gr_02_02.txt.decompressed.psb _decrypted\gr_02_02.txt.psb >nul
) else (
    echo FALHA decrypt: gr_02_02.txt
)
EmtConvert mdf -s 523aad2de7132gr_02_03.txt.scn.m -l 131 _chunks\gr_02_03.txt.mdf
if exist gr_02_03.txt.decompressed.psb (
    move /Y gr_02_03.txt.decompressed.psb _decrypted\gr_02_03.txt.psb >nul
) else (
    echo FALHA decrypt: gr_02_03.txt
)
EmtConvert mdf -s 523aad2de7132gr_02_04.txt.scn.m -l 131 _chunks\gr_02_04.txt.mdf
if exist gr_02_04.txt.decompressed.psb (
    move /Y gr_02_04.txt.decompressed.psb _decrypted\gr_02_04.txt.psb >nul
) else (
    echo FALHA decrypt: gr_02_04.txt
)
EmtConvert mdf -s 523aad2de7132gr_02_05.txt.scn.m -l 131 _chunks\gr_02_05.txt.mdf
if exist gr_02_05.txt.decompressed.psb (
    move /Y gr_02_05.txt.decompressed.psb _decrypted\gr_02_05.txt.psb >nul
) else (
    echo FALHA decrypt: gr_02_05.txt
)
EmtConvert mdf -s 523aad2de7132gr_03_01.txt.scn.m -l 131 _chunks\gr_03_01.txt.mdf
if exist gr_03_01.txt.decompressed.psb (
    move /Y gr_03_01.txt.decompressed.psb _decrypted\gr_03_01.txt.psb >nul
) else (
    echo FALHA decrypt: gr_03_01.txt
)
EmtConvert mdf -s 523aad2de7132gr_04_01.txt.scn.m -l 131 _chunks\gr_04_01.txt.mdf
if exist gr_04_01.txt.decompressed.psb (
    move /Y gr_04_01.txt.decompressed.psb _decrypted\gr_04_01.txt.psb >nul
) else (
    echo FALHA decrypt: gr_04_01.txt
)
EmtConvert mdf -s 523aad2de7132gr_05_01.txt.scn.m -l 131 _chunks\gr_05_01.txt.mdf
if exist gr_05_01.txt.decompressed.psb (
    move /Y gr_05_01.txt.decompressed.psb _decrypted\gr_05_01.txt.psb >nul
) else (
    echo FALHA decrypt: gr_05_01.txt
)
EmtConvert mdf -s 523aad2de7132gr_06_01.txt.scn.m -l 131 _chunks\gr_06_01.txt.mdf
if exist gr_06_01.txt.decompressed.psb (
    move /Y gr_06_01.txt.decompressed.psb _decrypted\gr_06_01.txt.psb >nul
) else (
    echo FALHA decrypt: gr_06_01.txt
)
EmtConvert mdf -s 523aad2de7132gr_06_02.txt.scn.m -l 131 _chunks\gr_06_02.txt.mdf
if exist gr_06_02.txt.decompressed.psb (
    move /Y gr_06_02.txt.decompressed.psb _decrypted\gr_06_02.txt.psb >nul
) else (
    echo FALHA decrypt: gr_06_02.txt
)
EmtConvert mdf -s 523aad2de7132gr_06_03.txt.scn.m -l 131 _chunks\gr_06_03.txt.mdf
if exist gr_06_03.txt.decompressed.psb (
    move /Y gr_06_03.txt.decompressed.psb _decrypted\gr_06_03.txt.psb >nul
) else (
    echo FALHA decrypt: gr_06_03.txt
)
EmtConvert mdf -s 523aad2de7132movie.txt.scn.m -l 131 _chunks\movie.txt.mdf
if exist movie.txt.decompressed.psb (
    move /Y movie.txt.decompressed.psb _decrypted\movie.txt.psb >nul
) else (
    echo FALHA decrypt: movie.txt
)
EmtConvert mdf -s 523aad2de7132op_01_01.txt.scn.m -l 131 _chunks\op_01_01.txt.mdf
if exist op_01_01.txt.decompressed.psb (
    move /Y op_01_01.txt.decompressed.psb _decrypted\op_01_01.txt.psb >nul
) else (
    echo FALHA decrypt: op_01_01.txt
)
EmtConvert mdf -s 523aad2de7132op_02_01.txt.scn.m -l 131 _chunks\op_02_01.txt.mdf
if exist op_02_01.txt.decompressed.psb (
    move /Y op_02_01.txt.decompressed.psb _decrypted\op_02_01.txt.psb >nul
) else (
    echo FALHA decrypt: op_02_01.txt
)
EmtConvert mdf -s 523aad2de7132op_02_02.txt.scn.m -l 131 _chunks\op_02_02.txt.mdf
if exist op_02_02.txt.decompressed.psb (
    move /Y op_02_02.txt.decompressed.psb _decrypted\op_02_02.txt.psb >nul
) else (
    echo FALHA decrypt: op_02_02.txt
)
EmtConvert mdf -s 523aad2de7132op_02_03.txt.scn.m -l 131 _chunks\op_02_03.txt.mdf
if exist op_02_03.txt.decompressed.psb (
    move /Y op_02_03.txt.decompressed.psb _decrypted\op_02_03.txt.psb >nul
) else (
    echo FALHA decrypt: op_02_03.txt
)
EmtConvert mdf -s 523aad2de7132op_02_04.txt.scn.m -l 131 _chunks\op_02_04.txt.mdf
if exist op_02_04.txt.decompressed.psb (
    move /Y op_02_04.txt.decompressed.psb _decrypted\op_02_04.txt.psb >nul
) else (
    echo FALHA decrypt: op_02_04.txt
)
EmtConvert mdf -s 523aad2de7132op_02_05.txt.scn.m -l 131 _chunks\op_02_05.txt.mdf
if exist op_02_05.txt.decompressed.psb (
    move /Y op_02_05.txt.decompressed.psb _decrypted\op_02_05.txt.psb >nul
) else (
    echo FALHA decrypt: op_02_05.txt
)
EmtConvert mdf -s 523aad2de7132op_03_01.txt.scn.m -l 131 _chunks\op_03_01.txt.mdf
if exist op_03_01.txt.decompressed.psb (
    move /Y op_03_01.txt.decompressed.psb _decrypted\op_03_01.txt.psb >nul
) else (
    echo FALHA decrypt: op_03_01.txt
)
EmtConvert mdf -s 523aad2de7132op_03_01_alpha.txt.scn.m -l 131 _chunks\op_03_01_alpha.txt.mdf
if exist op_03_01_alpha.txt.decompressed.psb (
    move /Y op_03_01_alpha.txt.decompressed.psb _decrypted\op_03_01_alpha.txt.psb >nul
) else (
    echo FALHA decrypt: op_03_01_alpha.txt
)
EmtConvert mdf -s 523aad2de7132standlist.txt.scn.m -l 131 _chunks\standlist.txt.mdf
if exist standlist.txt.decompressed.psb (
    move /Y standlist.txt.decompressed.psb _decrypted\standlist.txt.psb >nul
) else (
    echo FALHA decrypt: standlist.txt
)
EmtConvert mdf -s 523aad2de7132tu_01.txt.scn.m -l 131 _chunks\tu_01.txt.mdf
if exist tu_01.txt.decompressed.psb (
    move /Y tu_01.txt.decompressed.psb _decrypted\tu_01.txt.psb >nul
) else (
    echo FALHA decrypt: tu_01.txt
)
EmtConvert mdf -s 523aad2de7132twlist.txt.scn.m -l 131 _chunks\twlist.txt.mdf
if exist twlist.txt.decompressed.psb (
    move /Y twlist.txt.decompressed.psb _decrypted\twlist.txt.psb >nul
) else (
    echo FALHA decrypt: twlist.txt
)

echo Descriptografia concluida!
pause