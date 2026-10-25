from pathlib import Path
import struct,zipfile,subprocess,json,hashlib
D=Path(__file__).resolve().parent;old='Информация на заблокированном экране';alternate='Показывать время и информацию';new='Экран всегда включён (AOD)'
def length(b,p,utf):
 fmt='<B' if utf else '<H';step=1 if utf else 2;n=struct.unpack_from(fmt,b,p)[0];p+=step;mask=128 if utf else 32768
 if n&mask:n=((n&~mask)<<(8 if utf else 16))+struct.unpack_from(fmt,b,p)[0];p+=step
 return n,p
def enc_len(n,utf):
 if utf:return bytes([n]) if n<128 else bytes([(n>>8)|128,n&255])
 return struct.pack('<H',n) if n<32768 else struct.pack('<HH',(n>>16)|32768,n&65535)
with zipfile.ZipFile(D/'Settings.base.apk') as z:raw=z.read('resources.arsc')
b=bytearray(raw);pos=struct.unpack_from('<H',b,2)[0];hits=[]
while pos<len(b):
 typ,hs,size=struct.unpack_from('<HHI',b,pos)
 if typ==1:
  pool=bytearray(b[pos:pos+size]);count,styles,flags,start,styleStart=struct.unpack_from('<IIIII',pool,8);utf=bool(flags&256);cut=styleStart or size;extra=bytearray()
  for i in range(count):
   off=struct.unpack_from('<I',pool,hs+4*i)[0];p=start+off
   n,p=length(pool,p,utf)
   if utf:n,p=length(pool,p,True)
   s=pool[p:p+n*(1 if utf else 2)].decode('utf-8' if utf else 'utf-16le')
   if old not in s and alternate not in s:continue
   value=s.replace(old,new).replace(alternate,new);encoded=value.encode('utf-8' if utf else 'utf-16le');u16=len(value.encode('utf-16le'))//2
   chunk=enc_len(u16,utf)+(enc_len(len(encoded),True) if utf else b'')+encoded+(b'\0' if utf else b'\0\0')
   struct.pack_into('<I',pool,hs+4*i,cut+len(extra)-start);extra.extend(chunk);hits.append({'index':i,'before':s,'after':value})
  if extra:
   while len(extra)%4:extra.append(0)
   pool=pool[:cut]+extra+pool[cut:];struct.pack_into('<I',pool,4,len(pool));struct.pack_into('<I',pool,16,flags&~1)
   if styleStart:struct.pack_into('<I',pool,24,styleStart+len(extra))
   b=b[:pos]+pool+b[pos+size:];struct.pack_into('<I',b,4,len(b))
  break
 pos+=size
assert len(hits)>=3,hits
with zipfile.ZipFile(D/'Settings.base.apk') as z,zipfile.ZipFile(D/'unsigned.apk','w') as out:
 for i in z.infolist():
  if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.MF','.DSA','.EC')):continue
  out.writestr(i,bytes(b) if i.filename=='resources.arsc' else z.read(i.filename))
bt=Path('${ANDROID_TOOLS_ROOT}/sdk/build-tools/36.0.0')
for args in [[str(bt/'zipalign'),'-f','4',str(D/'unsigned.apk'),str(D/'aligned.apk')],[str(bt/'apksigner'),'sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',str(D/'Settings.aod-label.apk'),str(D/'aligned.apk')],[str(bt/'apksigner'),'verify',str(D/'Settings.aod-label.apk')]]:subprocess.run(args,check=True)
with zipfile.ZipFile(D/'Settings.base.apk') as a,zipfile.ZipFile(D/'Settings.aod-label.apk') as z:
 changed=[n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=z.read(n)];assert changed==['resources.arsc']
(D/'verification.json').write_text(json.dumps({'hits':hits,'changed':changed,'sha256':hashlib.sha256((D/'Settings.aod-label.apk').read_bytes()).hexdigest()},ensure_ascii=False,indent=2));print(hits)
