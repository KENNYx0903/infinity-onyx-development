import struct as S

def patch(raw):
 chunks=[];p=8
 while p<len(raw):
  t,h,n=S.unpack_from('<HHI',raw,p);chunks.append((t,raw[p:p+n]));p+=n
 pool=bytearray(chunks[0][1]);h=S.unpack_from('<H',pool,2)[0];count,styles,flags,start,style=S.unpack_from('<IIIII',pool,8);utf=flags&256
 def rdlen(p):
  n=S.unpack_from('<B' if utf else '<H',pool,p)[0];p+=1 if utf else 2
  if n&(128 if utf else 32768):n=((n&(127 if utf else 32767))<<(8 if utf else 16))+S.unpack_from('<B' if utf else '<H',pool,p)[0];p+=1 if utf else 2
  return n,p
 strings=[]
 for i in range(count):
  q=start+S.unpack_from('<I',pool,h+4*i)[0];n,q=rdlen(q)
  if utf:n,q=rdlen(q)
  strings.append(bytes(pool[q:q+n*(1 if utf else 2)]).decode('utf-8' if utf else 'utf-16le'))
 def idx(s):
  if s not in strings:strings.append(s)
  return strings.index(s)
 ns=idx('http://schemas.android.com/apk/res/android'); title=idx('title');key=idx('key');frag=idx('fragment');pref=idx('Preference');name=idx('com.android.settings.display.BlurSettings');label=idx('Регулировка размытия');newkey=idx('lunatik_blur_settings')
 out=[];skip=0;inserted=False
 for t,c in chunks[1:]:
  if t==0x102:
   off=S.unpack_from('<H',c,24)[0]+16;asz,num=S.unpack_from('<HH',c,26);attrs=[S.unpack_from('<IIIHBBI',c,off+i*asz) for i in range(num)]
   kval=next((strings[a[2]] if a[2]!=0xffffffff else strings[a[6]] for a in attrs if strings[a[1]]=='key' and (a[2]!=0xffffffff or a[5]==3)),None)
   if kval=='blur_intensity':skip=1;continue
   if kval=='enable_blurs_on_windows' and not inserted:
    # retain the existing enable switch; append section after its matching end.
    insert_after=True
   else:insert_after=False
   if skip:skip+=1;continue
   out.append((t,c))
   if insert_after:inserted='pending'
  elif t==0x103:
   if skip:skip-=1;continue
   out.append((t,c))
   if inserted=='pending' and strings[S.unpack_from('<I',c,20)[0]]!='PreferenceScreen':
    def attr(n,v):return S.pack('<IIIHBBI',ns,n,v,8,0,3,v)
    attrs=S.pack('<IIIHBBI',ns,title,0xffffffff,8,0,1,0x7f1506b0)+attr(key,newkey)+attr(frag,name)
    ext=S.pack('<IIHHHHHH',0xffffffff,pref,20,20,3,0,0,0)
    node=S.pack('<HHIII',0x102,16,36+len(attrs),0,0xffffffff)+ext+attrs
    end=S.pack('<HHIIIII',0x103,16,24,0,0xffffffff,0xffffffff,pref)
    out.extend([(0x102,node),(0x103,end)]);inserted=True
  else:
   if not skip:out.append((t,c))
 assert inserted is True
 # Rebuild string pool; no styles in this XML.
 assert styles==0
 data=bytearray();offsets=[]
 def ln(n):
  if utf:return bytes([n]) if n<128 else bytes([(n>>8)|128,n&255])
  return S.pack('<H',n)
 for s in strings:
  offsets.append(len(data));b=s.encode('utf-8' if utf else 'utf-16le');data+=ln(len(s.encode('utf-16le'))//2)+(ln(len(b)) if utf else b'')+b+(b'\0' if utf else b'\0\0')
 while len(data)%4:data+=b'\0'
 start=28+4*len(strings);pool=S.pack('<HHIIIIII',1,28,start+len(data),len(strings),0,flags&~1,start,0)+S.pack('<'+'I'*len(offsets),*offsets)+data
 # Remove original window blur switch now hosted inside the new section.
 filtered=[];skip=0
 for t,c in out:
  if t==0x102:
   off=S.unpack_from('<H',c,24)[0]+16;asz,num=S.unpack_from('<HH',c,26)
   for i in range(num):
    a=S.unpack_from('<IIIHBBI',c,off+i*asz)
    if strings[a[1]]=='key' and a[2]!=0xffffffff and strings[a[2]]=='enable_blurs_on_windows':skip=1;break
   else:
    if skip:skip+=1
    else:filtered.append((t,c))
  elif t==0x103 and skip:skip-=1
  elif not skip:filtered.append((t,c))
 body=bytes(pool)+b''.join(c for t,c in filtered);return S.pack('<HHI',3,8,len(body)+8)+body
