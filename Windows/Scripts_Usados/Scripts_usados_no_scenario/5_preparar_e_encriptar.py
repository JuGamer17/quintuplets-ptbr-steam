"""
5_preparar_e_encriptar.py - v5
PsBuild gera .pure.scn na raiz D:\freemote\
Fluxo: .pure.scn → adiciona header MDF + ZLIB → EmtConvert -r → .converted.mdf
"""
import json, zlib, struct, subprocess, shutil, time
from pathlib import Path

BASE        = Path(__file__).parent
ENCRYPTED   = BASE / "_encrypted"
INFO_JSON   = BASE / "scenario_info.psb.m.json"
EMT_CONVERT = BASE / "EmtConvert.exe"
PSB_BUILD   = BASE / "PsBuild.exe"
JSON_DIR    = BASE / "_json"

KEY         = "523aad2de7132"
KEY_LEN     = 131
EXPIRE_SFX  = ".scn.m"

ENCRYPTED.mkdir(exist_ok=True)

info = json.loads(INFO_JSON.read_text(encoding="utf-8"))
txt_files = {n: o for n, o in info["file_info"].items() if n.endswith(".txt")}
print(f"Arquivos a processar: {len(txt_files)}")

ok = fail = 0

for filename in txt_files:
    dest = ENCRYPTED / (filename + ".mdf")

    # 1. Compila o JSON traduzido com PsBuild -> gera filename.pure.scn na raiz
    scn_path = BASE / (filename + ".pure.scn")
    if scn_path.exists():
        scn_path.unlink()

    json_path = JSON_DIR / (filename + ".json")
    if not json_path.exists():
        print(f"  FALTANDO JSON: {filename}")
        fail += 1
        continue

    result = subprocess.run([str(PSB_BUILD), str(json_path)],
        capture_output=True, text=True, cwd=BASE)

    time.sleep(0.05)

    if not scn_path.exists():
        # Tenta .psb como fallback
        psb_alt = BASE / (filename + ".psb")
        if psb_alt.exists():
            scn_path = psb_alt
        else:
            print(f"  FALHA build: {filename}")
            fail += 1
            continue

    # 2. Lê o conteúdo compilado
    scn_data = scn_path.read_bytes()

    # 3. Comprime com ZLIB
    zlib_data = zlib.compress(scn_data, level=9)

    # 4. Monta fake MDF: header(8 bytes) + zlib_data
    header = b"mdf\x00" + struct.pack("<I", len(scn_data))
    fake_mdf_data = header + zlib_data

    # 5. Salva o fake MDF
    fake_path = BASE / (filename + ".fake.mdf")
    fake_path.write_bytes(fake_mdf_data)

    # 6. Remove output anterior
    expected = BASE / (filename + ".fake.converted.mdf")
    if expected.exists():
        expected.unlink()

    # 7. Aplica XOR MT19937 via EmtConvert -r
    seed = KEY + filename + EXPIRE_SFX
    result = subprocess.run([
        str(EMT_CONVERT), "mdf", "-r",
        "-s", seed,
        "-l", str(KEY_LEN),
        str(fake_path),
    ], capture_output=True, text=True, cwd=BASE)

    time.sleep(0.1)

    # 8. Procura o output .converted.mdf
    output = None
    if expected.exists():
        output = expected
    else:
        cutoff = time.time() - 5
        for p in BASE.glob("*.converted.mdf"):
            if p.stat().st_mtime >= cutoff:
                output = p
                break

    if output and output.exists():
        shutil.copy2(output, dest)
        output.unlink()
        fake_path.unlink()
        scn_path.unlink()
        ok += 1
        print(f"  OK  {filename} ({dest.stat().st_size:,} bytes)")
    else:
        print(f"  FALHA encrypt: {filename}")
        if fake_path.exists():
            fake_path.unlink()
        fail += 1

print()
print(f"OK: {ok} | Falhas: {fail}")
if ok == len(txt_files):
    print("Todos processados! Execute: python reconstruir_body.py")
