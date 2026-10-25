from pathlib import Path
import struct,zipfile,json,subprocess,hashlib,re
D=Path(__file__).resolve().parent;A=D.parent/'ru-translation-audit-20261024'
rows=json.loads((A/'priority-translations.json').read_text())
def chunks(b,start,end):
 while start<end:
  t,h,n=struct.unpack_from('<HHI',b,start);assert n>=h and start+n<=end;yield start,t,h,n;start+=n
 assert start==end
def readlen(b,p,utf):
 n=struct.unpack_from('<B' if utf else '<H',b,p)[0];p+=1 if utf else 2;mask=128 if utf else 32768
 if n&mask:n=((n&~mask)<<(8 if utf else 16))+struct.unpack_from('<B' if utf else '<H',b,p)[0];p+=1 if utf else 2
 return n,p
def elen(n,utf):
 if utf:return bytes([n]) if n<128 else bytes([(n>>8)|128,n&255])
 return struct.pack('<H',n) if n<32768 else struct.pack('<HH',(n>>16)|32768,n&65535)
def pooladd(b,strings):
 b=bytearray(b);t,h,n=struct.unpack_from('<HHI',b);count,styles,flags,start,ss=struct.unpack_from('<IIIII',b,8)
 utf=bool(flags&256);offsets=list(struct.unpack_from('<'+str(count)+'I',b,h));styleoffs=b[h+count*4:h+(count+styles)*4];styledata=b[ss:n] if ss else b'';olddata=b[start:ss or n];extra=bytearray();idx=[]
 for s in strings:
  idx.append(count+len(idx));offsets.append(len(olddata)+len(extra));v=s.encode('utf-8' if utf else 'utf-16le');extra+=elen(len(s.encode('utf-16le'))//2,utf)+(elen(len(v),True) if utf else b'')+v+(b'\0' if utf else b'\0\0')
 data=olddata+extra
 while len(data)%4:data+=b'\0'
 head=b[:h];newstart=h+4*(len(offsets)+styles);struct.pack_into('<I',head,4,newstart+len(data)+len(styledata));struct.pack_into('<I',head,8,len(offsets));struct.pack_into('<I',head,16,flags&~1);struct.pack_into('<I',head,20,newstart)
 if ss:struct.pack_into('<I',head,24,newstart+len(data))
 return bytes(head)+struct.pack('<'+str(len(offsets))+'I',*offsets)+styleoffs+data+styledata,idx
def entries(b):
 h=struct.unpack_from('<H',b,2)[0];count,start=struct.unpack_from('<II',b,12);flags=b[9];offsets={}
 if flags&1:
  for i in range(count):k,v=struct.unpack_from('<HH',b,h+4*i);offsets[k]=v*4
 else:
  for i in range(count):
   v=struct.unpack_from('<H' if flags&2 else '<I',b,h+(2 if flags&2 else 4)*i)[0]
   if v!=(65535 if flags&2 else 0xffffffff):offsets[i]=v*(4 if flags&2 else 1)
 sortedoff=sorted(set(offsets.values()));end={v:(sortedoff[i+1] if i+1<len(sortedoff) else len(b)-start) for i,v in enumerate(sortedoff)}
 return {k:b[start+v:start+end[v]] for k,v in offsets.items()}
def rebuild(b,e):
 h=struct.unpack_from('<H',b,2)[0];head=bytearray(b[:h]);head[9]=0;count=max(e)+1;start=h+count*4;data=bytearray();offs=[]
 for i in range(count):
  if i in e:offs.append(len(data));data+=e[i]
  else:offs.append(0xffffffff)
  while len(data)%4:data+=b'\0'
 struct.pack_into('<III',head,4,start+len(data),struct.unpack_from('<I',head,8)[0]&~0xff00,count);struct.pack_into('<I',head,16,start)
 return bytes(head)+struct.pack('<'+str(count)+'I',*offs)+data
def patch(raw,rs):
 top=list(chunks(raw,struct.unpack_from('<H',raw,2)[0],len(raw)));poolpos=next(i for i,x in enumerate(top) if x[1]==1);p,t,h,n=top[poolpos];pool,inds=pooladd(raw[p:p+n],[r['proposed_ru'] for r in rs]);newvalues={int(r['id'],16):(idx,r) for idx,r in zip(inds,rs)};out=[];touched=[]
 for i,(p,t,h,n) in enumerate(top):
  b=raw[p:p+n]
  if i==poolpos:b=pool
  elif t==0x200:
   pkg=struct.unpack_from('<I',b,8)[0];cs=list(chunks(b,h,len(b)));keys={};targets={}
   for q,tt,hh,nn in cs:
    if tt!=0x201:continue
    tid=b[q+8];es=entries(b[q:q+nn])
    for rid,(idx,r) in newvalues.items():
     if rid>>24!=pkg or (rid>>16&255)!=tid:continue
     eid=rid&65535
     if eid in es and rid not in keys:
      size,fl=struct.unpack_from('<HH',es[eid]);keys[rid]=size if fl&8 else struct.unpack_from('<I',es[eid],4)[0]
   parts=[];done=set()
   for q,tt,hh,nn in cs:
    c=b[q:q+nn]
    if tt==0x201 and c[28:30]==b'ru' and c[30:32] in (b'\0\0',b'RU'):
     # Only plain ru / ru-RU configuration; qualifiers fall back normally.
     cfg=bytearray(c[20:hh]);cfg[8:12]=b'\0'*4
     plain=all(x==0 for x in cfg[4:])
     if plain:
      es=entries(c);changed=False
      for rid,(idx,r) in newvalues.items():
       if rid>>24==pkg and (rid>>16&255)==c[8]:
        es[rid&65535]=struct.pack('<HHIHBBI',8,0,keys[rid],8,0,3,idx);changed=True;touched.append((r['key'],c[28:32].hex()));done.add(rid)
      if changed:c=rebuild(c,es)
    parts.append(c)
   wanted={rid for rid in newvalues if rid>>24==pkg};assert wanted<=done,(pkg,wanted-done)
   head=bytearray(b[:h]);b=bytes(head)+b''.join(parts);b=bytearray(b);struct.pack_into('<I',b,4,len(b));b=bytes(b)
  out.append(b)
 head=bytearray(raw[:struct.unpack_from('<H',raw,2)[0]]);res=head+b''.join(out);struct.pack_into('<I',res,4,len(res));return bytes(res),touched
bt=Path('${ANDROID_TOOLS_ROOT}/sdk/build-tools/36.0.0');results=[]
for pkg in dict.fromkeys(r['package'] for r in rows):
 rs=[r for r in rows if r['package']==pkg];folder=D/pkg;folder.mkdir(exist_ok=True);base=A/(pkg+'.apk')
 for r in rs:assert sorted(re.findall(r'%\d*\$?[sdf]',r['text']))==sorted(re.findall(r'%\d*\$?[sdf]',r['proposed_ru']))
 with zipfile.ZipFile(base) as z:raw=z.read('resources.arsc');new,touched=patch(raw,rs)
 with zipfile.ZipFile(base) as z,zipfile.ZipFile(folder/'unsigned.apk','w') as out:
  for i in z.infolist():
   if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.MF','.EC','.DSA')):continue
   out.writestr(i,new if i.filename=='resources.arsc' else z.read(i.filename))
 for cmd in [[str(bt/'zipalign'),'-f','4',str(folder/'unsigned.apk'),str(folder/'aligned.apk')],[str(bt/'apksigner'),'sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',str(folder/'translated.apk'),str(folder/'aligned.apk')],[str(bt/'apksigner'),'verify',str(folder/'translated.apk')]]:subprocess.run(cmd,check=True,capture_output=True)
 r=subprocess.run([str(bt/'aapt2'),'dump','resources',str(folder/'translated.apk')],capture_output=True,text=True);assert r.returncode==0,r.stderr
 (folder/'resources.txt').write_text(r.stdout)
 for row in rs:assert row['proposed_ru'] in r.stdout,row
 with zipfile.ZipFile(base) as a,zipfile.ZipFile(folder/'translated.apk') as b:assert [n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=b.read(n)]==['resources.arsc']
 results.append({'package':pkg,'strings':len(rs),'touched':touched,'sha256':hashlib.sha256((folder/'translated.apk').read_bytes()).hexdigest()});print(pkg,len(rs),'verified',flush=True)
(D/'verification.json').write_text(json.dumps(results,ensure_ascii=False,indent=2))
