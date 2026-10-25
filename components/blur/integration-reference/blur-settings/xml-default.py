# Patch only the typed defaultValue of the exact existing QS preference.
import struct as S

def qs_default(raw):
 b=bytearray(raw);pos=8;strings=[]
 while pos<len(b):
  typ,hs,size=S.unpack_from('<HHI',b,pos)
  if typ==1:
   count,styles,flags,start,sty=S.unpack_from('<IIIII',b,pos+8);utf=flags&256
   def ln(q):
    n=S.unpack_from('<B' if utf else '<H',b,q)[0];q+=1 if utf else 2
    if n&(128 if utf else 32768):n=((n&(127 if utf else 32767))<<(8 if utf else 16))+S.unpack_from('<B' if utf else '<H',b,q)[0];q+=1 if utf else 2
    return n,q
   for i in range(count):
    q=pos+start+S.unpack_from('<I',b,pos+hs+4*i)[0];n,q=ln(q)
    if utf:n,q=ln(q)
    strings.append(bytes(b[q:q+n*(1 if utf else 2)]).decode('utf-8' if utf else 'utf-16le'))
  if typ==0x102:
   off=pos+16+S.unpack_from('<H',b,pos+24)[0];asz,num=S.unpack_from('<HH',b,pos+26);attrs=[(off+i*asz,S.unpack_from('<IIIHBBI',b,off+i*asz)) for i in range(num)]
   if any(strings[a[1]]=='key' and a[2]!=0xffffffff and strings[a[2]]=='single_qs_tone_enabled' for _,a in attrs):
    for q,a in attrs:
     if strings[a[1]]=='defaultValue':S.pack_into('<I',b,q+16,0xffffffff);return bytes(b)
  pos+=size
 raise ValueError('QS preference not found')
