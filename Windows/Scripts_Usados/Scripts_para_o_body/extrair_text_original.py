b = open('config_body_original.bin','rb').read()
chunk = b[38785:38785+11815]
open('text_original.psb.m','wb').write(chunk)
print('Extraido:', len(chunk), 'bytes')
print('Header:', chunk[:4].hex())
