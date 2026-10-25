from pathlib import Path
import sys,zipfile,struct,hashlib,lzma,subprocess,base64,json,concurrent.futures,collections
sys.path.insert(0,'work/rom-build-r8');from proto import *
r=Path('work/rom-build-r8');rom=Path('outputs/Infinity-3.12--06.08.2026-GAPPS-UNOFFICIAL-LANG_lunatik_kenny_20261024_R7_EXPERIMENTAL_AOD.zip');src=rom.open('rb')
with zipfile.ZipFile(rom) as z:info=z.getinfo('payload.bin');assert info.compress_type==0
src.seek(info.header_offset);h=src.read(30);nl,el=struct.unpack_from('<HH',h,26);start=info.header_offset+30+nl+el;src.seek(start);head=src.read(24);magic,version,ml,sl=struct.unpack('>4sQQI',head);assert magic==b'CrAU' and version==2
manifest=parse(src.read(ml));data_start=start+24+ml+sl;newparts=[];report={};block=get(manifest,3);assert block==4096
blobpath=r/'payload-blobs.bin';chunk=4*1024*1024
pool=concurrent.futures.ThreadPoolExecutor(max_workers=4)
def compress(raw):
 if not any(raw):return 6,b'',len(raw)
 packed=lzma.compress(raw,preset=0,check=lzma.CHECK_CRC32)
 return (8,packed,len(raw)) if len(packed)<len(raw) else (0,raw,len(raw))
with blobpath.open('wb') as blobs:
 for rawpart in many(manifest,13):
  p=parse(rawpart);name=get(p,1).decode();image=r/'images'/(name+'.img');ops=[]
  if image.exists():
   size=image.stat().st_size;assert size%block==0;digest=hashlib.sha256();pending=collections.deque();nextblock=0
   def consume(fut):
    global nextblock
    kind,data,rawlen=fut.result();count=rawlen//block;op=[(1,0,kind),(6,2,encode([(1,0,nextblock),(2,0,count)])),(7,0,rawlen)]
    if data:
     op += [(2,0,blobs.tell()),(3,0,len(data)),(8,2,hashlib.sha256(data).digest())];blobs.write(data)
    ops.append(encode(sorted(op)));nextblock+=count
   with image.open('rb') as f:
    while raw:=f.read(chunk):
     digest.update(raw);pending.append(pool.submit(compress,raw))
     if len(pending)>=8:consume(pending.popleft())
    while pending:consume(pending.popleft())
   assert nextblock*block==size
   p=setf(p,7,2,encode([(1,0,size),(2,2,digest.digest())]));report[name]={'size':size,'sha256':digest.hexdigest(),'changed':True}
   # Full replacement operations do not use source or old COW hints.
   p=[(k,w,v) for k,w,v in p if k not in [6,8,10,11,12,13,14,15,16,18,19,20]]
  else:
   for rawop in many(p,8):
    op=parse(rawop);length=get(op,3,0)
    if length:
     src.seek(data_start+get(op,2));data=src.read(length);assert len(data)==length
     assert hashlib.sha256(data).digest()==get(op,8)
     op=setf(op,2,0,blobs.tell());blobs.write(data)
    ops.append(encode(op))
   pi=parse(get(p,7));report[name]={'size':get(pi,1),'sha256':get(pi,2).hex(),'changed':False};p=[(k,w,v) for k,w,v in p if k!=8]
  p += [(8,2,o) for o in ops];newparts.append(encode(sorted(p,key=lambda x:x[0])))
  print('PAYLOAD',name,len(ops),'ops','changed' if image.exists() else 'original',flush=True)
pool.shutdown();src.close()
# Preserve all APEX info, postinstall settings, dynamic groups, versions and security-patch fields.
manifest=[(k,w,v) for k,w,v in manifest if k not in [4,5,13]]+[(4,0,blobpath.stat().st_size),(5,0,267)]+[(13,2,p) for p in newparts]
manifest=sorted(manifest,key=lambda x:x[0]);dynamic=parse(get(manifest,15))
for g in many(dynamic,1):
 group=parse(g);names=[x.decode() for x in many(group,3)];total=sum(report[n]['size'] for n in names);assert total<=get(group,2),(total,get(group,2));print('Dynamic group size',total,'/',get(group,2),flush=True)
mb=encode(manifest);header=struct.pack('>4sQQI',b'CrAU',2,len(mb),267);meta=header+mb
(r/'payload-metadata.bin').write_bytes(meta)
key=r/'tools/payload-testkey.pem';subprocess.run(['openssl','pkcs8','-inform','DER','-in',str(r/'tools/testkey.pk8'),'-nocrypt','-out',str(key)],check=True)
def signature(digest,label):
 d=r/(label+'.digest');sig=r/(label+'.sig');d.write_bytes(digest)
 subprocess.run(['openssl','pkeyutl','-sign','-inkey',str(key),'-pkeyopt','digest:sha256','-in',str(d),'-out',str(sig)],check=True)
 msg=encode([(1,2,encode([(2,2,sig.read_bytes()),(3,5,struct.pack('<I',256))]))]);assert len(msg)==267;return msg
meta_sig=signature(hashlib.sha256(meta).digest(),'metadata');fullhash=hashlib.sha256(meta)
with blobpath.open('rb') as f:
 while b:=f.read(8*1024*1024):fullhash.update(b)
full_sig=signature(fullhash.digest(),'payload');payload=r/'payload.bin';filehash=hashlib.sha256()
with payload.open('wb') as out:
 for b in [meta,meta_sig]:out.write(b);filehash.update(b)
 with blobpath.open('rb') as f:
  while b:=f.read(8*1024*1024):out.write(b);filehash.update(b)
 out.write(full_sig);filehash.update(full_sig)
props='FILE_HASH='+base64.b64encode(filehash.digest()).decode()+'\nFILE_SIZE='+str(payload.stat().st_size)+'\nMETADATA_HASH='+base64.b64encode(hashlib.sha256(meta).digest()).decode()+'\nMETADATA_SIZE='+str(len(meta))+'\n'
(r/'payload_properties.txt').write_text(props);(r/'payload-report.json').write_text(json.dumps(report,indent=2));print('SIGNED PAYLOAD',payload.stat().st_size,flush=True)
