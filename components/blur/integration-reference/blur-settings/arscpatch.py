import struct
import struct as S
from pathlib import Path
source=Path('work/settings-aod-label/build.py').read_text();start=source.index('def length');end=source.index('with zipfile.ZipFile');exec(source[start:end],globals())
def patcharsc(raw):
 b=bytearray(raw);pos=S.unpack_from('<H',b,2)[0];hits=[]
 while pos<len(b):
  typ,hs,size=S.unpack_from('<HHI',b,pos)
  if typ==1:
   pool=bytearray(b[pos:pos+size]);count,styles,flags,start,styleStart=S.unpack_from('<IIIII',pool,8);utf=bool(flags&256);cut=styleStart or size;extra=bytearray()
   for i in range(count):
    off=S.unpack_from('<I',pool,hs+4*i)[0];p=start+off;n,p=length(pool,p,utf)
    if utf:n,p=length(pool,p,True)
    s=pool[p:p+n*(1 if utf else 2)].decode('utf-8' if utf else 'utf-16le');value={'Blur intensity':'Blur settings','Интенсивность размытия':'Регулировка размытия'}.get(s)
    if value is None:continue
    encoded=value.encode('utf-8' if utf else 'utf-16le');u16=len(value.encode('utf-16le'))//2;chunk=enc_len(u16,utf)+(enc_len(len(encoded),True) if utf else b'')+encoded+(b'\0' if utf else b'\0\0');S.pack_into('<I',pool,hs+4*i,cut+len(extra)-start);extra.extend(chunk);hits.append(s)
   while len(extra)%4:extra.append(0)
   pool=pool[:cut]+extra+pool[cut:];S.pack_into('<I',pool,4,len(pool));S.pack_into('<I',pool,16,flags&~1)
   if styleStart:S.pack_into('<I',pool,24,styleStart+len(extra))
   b=b[:pos]+pool+b[pos+size:];S.pack_into('<I',b,4,len(b));break
  pos+=size
 assert 'Blur intensity' in hits,hits
 return bytes(b)
