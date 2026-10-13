# =============================================================================
# 01_extrair_chunks.ps1
# -----------------------------------------------------------------------------
# PASSO 1 - Corta o scenario_body.bin em um arquivo por cena.
#
# Le o indice (scenario_info.psb.m.json) e, para cada entrada "NOME.txt",
# grava _chunks\NOME.txt.mdf com os bytes [offset, offset+tamanho).
#
# Versao COMPACTA: o script original (arquivado em
# "Windows\Scripts_Usados\Scripts_usados_no_scenario") tinha uma linha
# por arquivo com os offsets escritos a mao (355 linhas). O resultado e o mesmo.
# So entram as entradas cujo nome termina em ".txt" (as demais do indice -
# filelist, scenelist, standposition... - nao sao cenas de dialogo).
#
# ENTRADAS (em D:\freemote\):
#   scenario_body.bin            (ORIGINAL do jogo)
#   scenario_info.psb.m.json     (indice descriptografado, obtido com PsbDecompile info-psb)
# SAIDA:
#   _chunks\NOME.txt.mdf         (um por cena, ainda criptografado)
# =============================================================================

$base      = "D:\freemote"
$infoPath  = "$base\scenario_info.psb.m.json"
$bodyPath  = "$base\scenario_body.bin"
$chunksDir = "$base\_chunks"

if (!(Test-Path $infoPath)) { Write-Host "ERRO: nao achei $infoPath"; exit 1 }
if (!(Test-Path $bodyPath)) { Write-Host "ERRO: nao achei $bodyPath"; exit 1 }
if (!(Test-Path $chunksDir)) { New-Item -ItemType Directory -Path $chunksDir | Out-Null }

$info = Get-Content $infoPath -Raw -Encoding UTF8 | ConvertFrom-Json
$body = [IO.File]::ReadAllBytes($bodyPath)

Write-Host "Extraindo chunks..."
$total = 0
foreach ($entrada in $info.file_info.PSObject.Properties) {
    $nome = $entrada.Name
    if (-not $nome.EndsWith(".txt")) { continue }

    $offset  = [int64]$entrada.Value[0]
    $tamanho = [int64]$entrada.Value[1]

    $chunk = New-Object byte[] $tamanho
    [Array]::Copy($body, $offset, $chunk, 0, $tamanho)
    [IO.File]::WriteAllBytes("$chunksDir\$nome.mdf", $chunk)
    $total++
}

Write-Host "Concluido! $total chunks extraidos em $chunksDir"
