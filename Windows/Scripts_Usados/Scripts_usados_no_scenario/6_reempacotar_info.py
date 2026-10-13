"""
6_reempacotar_info.py
Reempacota o scenario_info.psb.m com os novos offsets do body traduzido.
"""
import json, subprocess, shutil
from pathlib import Path

BASE        = Path(__file__).parent
INFO_JSON   = BASE / "scenario_info_ptbr.psb.m.json"
RESX_JSON   = BASE / "scenario_info.psb.m.resx.json"
PSB_BUILD   = BASE / "PsBuild.exe"
EMT_CONVERT = BASE / "EmtConvert.exe"

KEY     = "523aad2de7132"
KEY_LEN = 131

if not INFO_JSON.exists():
    print("ERRO: Execute reconstruir_body.py primeiro!")
    exit(1)

print("Reempacotando scenario_info.psb.m...")

# PsBuild para criar o PSB do info atualizado
result = subprocess.run([str(PSB_BUILD), str(INFO_JSON)],
    capture_output=True, text=True, cwd=BASE)
print(result.stdout.strip())

# O PSB gerado deve estar em BASE com nome scenario_info_ptbr.psb
psb_out = BASE / "scenario_info_ptbr.psb"
if not psb_out.exists():
    # PsBuild salva com mesmo nome mas .psb
    psb_out = BASE / "scenario_info_ptbr.psb.m.psb"
    if not psb_out.exists():
        import glob
        candidates = sorted(glob.glob(str(BASE / "scenario_info*.psb")),
                          key=lambda p: __import__("os").path.getmtime(p))
        if candidates:
            psb_out = Path(candidates[-1])
        else:
            print("ERRO: PSB do info não foi gerado!")
            exit(1)

print(f"PSB gerado: {psb_out} ({psb_out.stat().st_size:,} bytes)")

# Encripta com EmtConvert mdf -r
# Primeiro comprime com pack MDF
mdf_plain = BASE / "scenario_info_ptbr.mdf.plain"
result2 = subprocess.run([
    str(EMT_CONVERT), "pack", "-s", "MDF",
    str(psb_out), "-o", str(mdf_plain)
], capture_output=True, text=True, cwd=BASE)

if not mdf_plain.exists():
    # Tenta achar onde foi salvo
    import glob, time
    cutoff = time.time() - 10
    for f in Path(BASE).glob("*.mdf"):
        if f.stat().st_mtime >= cutoff:
            mdf_plain = f
            break

print(f"MDF plain: {mdf_plain}")

# Encripta com -r
seed = KEY + "scenario_info.psb.m"
result3 = subprocess.run([
    str(EMT_CONVERT), "mdf", "-r",
    "-s", seed,
    "-l", str(KEY_LEN),
    str(mdf_plain),
], capture_output=True, text=True, cwd=BASE)

# Procura o output
import glob, time
cutoff = time.time() - 10
output = None
for f in Path(BASE).glob("*.pure.scn"):
    if f.stat().st_mtime >= cutoff:
        output = f
        break

if output:
    dest = BASE / "scenario_info_ptbr.psb.m"
    shutil.copy2(output, dest)
    output.unlink()
    print(f"\nscenario_info encriptado: {dest} ({dest.stat().st_size:,} bytes)")
    print()
    print("ÚLTIMOS PASSOS:")
    print("  1. Backup: copy scenario_body.bin scenario_body.bin.bak")
    print("  2. Backup: copy windata\\scenario_info.psb.m windata\\scenario_info.psb.m.bak")
    print("  3. copy scenario_body_ptbr.bin scenario_body.bin")
    print("  4. copy scenario_info_ptbr.psb.m windata\\scenario_info.psb.m")
    print("  5. Teste o jogo!")
else:
    print("ERRO: scenario_info encriptado não foi gerado")
    print("Tenta manualmente:")
    print(f"  EmtConvert mdf -r -s {seed} -l {KEY_LEN} <arquivo.mdf>")
