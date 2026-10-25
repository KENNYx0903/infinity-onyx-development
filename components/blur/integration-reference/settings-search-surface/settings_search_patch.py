from pathlib import Path
import struct
def patch_search(raw,bg):
 code=Path('work/ru-translation-apply/patch.py').read_text();ns={'struct':struct};exec(code[code.index('def chunks'):code.index('bt=Path(')],ns);chunks=ns['chunks'];entries=ns['entries'];rebuild=ns['rebuild']
 parts=[];hits=0
 for pos,t,h,n in chunks(raw,struct.unpack_from('<H',raw,2)[0],len(raw)):
  b=raw[pos:pos+n]
  if t==0x200:
   sub=[]
   for q,k,kh,kn in chunks(b,h,len(b)):
    c=b[q:q+kn]
    if k==0x201 and c[8]==0x16:
     es=entries(c)
     if 0x260 in es:
      e=bytearray(es[0x260]);size,flags=struct.unpack_from('<HH',e);assert flags&1
      count=struct.unpack_from('<I',e,12)[0]
      for i in range(count):
       p=size+i*12;attr=struct.unpack_from('<I',e,p)[0]
       if attr==0x7f0405d7:struct.pack_into('<I',e,p+8,0);hits+=1
      es[0x260]=bytes(e);c=rebuild(c,es)
    sub.append(c)
   b=bytearray(b[:h])+b''.join(sub);struct.pack_into('<I',b,4,len(b))
  parts.append(bytes(b))
 raw=bytearray(raw[:12])+b''.join(parts);struct.pack_into('<I',raw,4,len(raw));assert hits>=1
 old=struct.pack('<I',0x7f060563);new=struct.pack('<I',0x7f06055e);assert bg.count(old)==1;bg=bg.replace(old,new)
 return bytes(raw),bg
