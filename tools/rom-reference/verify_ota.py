from pathlib import Path
import zipfile,struct,sys,subprocess,json,hashlib
sys.path.insert(0,'work/rom-build-r8');from proto import *
r=Path('work/rom-build-r8');report=json.loads((r/'ota-report.json').read_text());p=Path(report['file']);h=hashlib.sha256()
with p.open('rb') as f:
 while data:=f.read(8*1024*1024):h.update(data)
assert h.hexdigest()==report['sha256']
with zipfile.ZipFile(p) as z,p.open('rb') as f:
 assert z.testzip() is None;meta=dict(x.split('=',1) for x in z.read('META-INF/com/android/metadata').decode().splitlines());pb=parse(z.read('META-INF/com/android/metadata.pb'))
 maps={get(parse(x),1).decode():get(parse(x),2).decode() for x in many(pb,4)}
 for key in ['ota-property-files','ota-streaming-property-files']:
  assert maps[key]==meta[key]
  for token in meta[key].split(','):
   name,off,size=token.split(':');off=int(off);size=int(size)
   if name=='payload_metadata.bin':assert off==report['offsets']['payload.bin'][0] and size==report['payload_metadata_bytes'];continue
   path='META-INF/com/android/'+name if name in ['metadata','metadata.pb'] else name
   i=z.getinfo(path);f.seek(i.header_offset);hdr=f.read(30);nl,el=struct.unpack_from('<HH',hdr,26);assert off==i.header_offset+30+nl+el and size==i.file_size
 cert=z.read('META-INF/com/android/otacert');(r/'ota-trusted-cert.pem').write_bytes(cert)
 f.seek(-6,2);footer=f.read(6);sigstart=struct.unpack_from('<H',footer)[0];assert footer[2:4]==b'\xff\xff';commentlen=struct.unpack_from('<H',footer,4)[0];assert commentlen==len(z.comment)
 f.seek(-sigstart,2);sig=f.read(sigstart-6);(r/'ota-signature-verify.der').write_bytes(sig);signedlen=p.stat().st_size-commentlen-2
print('PASS ZIP CRCs, streaming offsets and metadata.pb',flush=True)
cmd=['openssl','cms','-verify','-binary','-inform','DER','-in',str(r/'ota-signature-verify.der'),'-content','/dev/stdin','-nointern','-certfile',str(r/'ota-trusted-cert.pem'),'-noverify','-out','/dev/null']
proc=subprocess.Popen(cmd,stdin=subprocess.PIPE)
with p.open('rb') as f:
 remain=signedlen
 while remain:
  data=f.read(min(remain,8*1024*1024));assert data;proc.stdin.write(data);remain-=len(data)
proc.stdin.close();assert proc.wait()==0
report['verified_zip_crcs']=True;report['verified_streaming_offsets']=True;report['verified_ota_signature_with_original_cert']=True
(r/'ota-report.json').write_text(json.dumps(report,indent=2));print('PASS OTA whole-file CMS signature with original ROM certificate',flush=True)
