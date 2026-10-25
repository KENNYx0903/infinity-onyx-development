from pathlib import Path
import sys,struct,hashlib,subprocess,lzma,bz2,json,tempfile,base64
sys.path.insert(0,'work/rom-build-r8');from proto import *
r=Path('work/rom-build-r8');p=r/'payload.bin';props=dict(x.split('=',1) for x in (r/'payload_properties.txt').read_text().splitlines());report={};original=json.loads(Path('work/rom-audit/partitions.json').read_text())
xz_operations=0

def hashfile(path):
 h=hashlib.sha256()
 with path.open('rb') as f:
  while data:=f.read(8*1024*1024):h.update(data)
 return h.digest()
assert p.stat().st_size==int(props['FILE_SIZE']);assert base64.b64encode(hashfile(p)).decode()==props['FILE_HASH']
subprocess.run(['openssl','x509','-in',str(r/'tools/testkey.x509.pem'),'-pubkey','-noout','-out',str(r/'tools/payload.pub.pem')],check=True)
def check_sig(msg,h,label):
 inner=parse(get(parse(msg),1));sig=get(inner,2);assert struct.unpack('<I',get(inner,3))[0]==len(sig)==256
 f=r/(label+'-verify.sig');d=r/(label+'-verify.hash');f.write_bytes(sig);d.write_bytes(h)
 subprocess.run(['openssl','pkeyutl','-verify','-pubin','-inkey',str(r/'tools/payload.pub.pem'),'-sigfile',str(f),'-pkeyopt','digest:sha256','-in',str(d)],check=True,stdout=subprocess.DEVNULL)
with p.open('rb') as src:
 header=src.read(24);magic,version,ml,sl=struct.unpack('>4sQQI',header);assert magic==b'CrAU' and version==2;manifest=src.read(ml);m=parse(manifest);msig=src.read(sl);meta=header+manifest;ds=src.tell();block=get(m,3)
 assert len(meta)==int(props['METADATA_SIZE']);assert base64.b64encode(hashlib.sha256(meta).digest()).decode()==props['METADATA_HASH'];check_sig(msig,hashlib.sha256(meta).digest(),'metadata')
 full=hashlib.sha256(meta);remaining=get(m,4)
 while remaining:
  data=src.read(min(remaining,8*1024*1024));assert data;full.update(data);remaining-=len(data)
 psig=src.read(get(m,5));assert src.read(1)==b'';check_sig(psig,full.digest(),'payload');print('PASS metadata and payload RSA signatures, FILE_HASH/METADATA_HASH',flush=True)
 for raw in many(m,13):
  part=parse(raw);name=get(part,1).decode();pi=parse(get(part,7));size=get(pi,1);expected=get(pi,2);h=hashlib.sha256();end=0;count=0
  for rawop in many(part,8):
   op=parse(rawop);kind=get(op,1);extents=[parse(x) for x in many(op,6)];length=sum(get(x,2)*block for x in extents)
   if kind in (6,7):data=bytes(length)
   else:
    src.seek(ds+get(op,2));blob=src.read(get(op,3));assert hashlib.sha256(blob).digest()==get(op,8),(name,'blob hash')
    if kind==0:data=blob
    elif kind==1:data=bz2.decompress(blob)
    elif kind==8:
     xz_operations+=1
     assert blob[:6]==b'\xfd7zXZ\0' and blob[7] in (0,1),(name,'XZ check unsupported by recovery')
     checked=subprocess.run([str(r/'tools/xz-embedded/userspace/xzminidec')],input=blob,stdout=subprocess.PIPE,stderr=subprocess.PIPE,check=True)
     data=checked.stdout
    else:raise ValueError((name,kind))
   assert len(data)==length;pos=0
   for extent in extents:
    off=get(extent,1)*block;n=get(extent,2)*block;assert off==end and off+n<=size;h.update(data[pos:pos+n]);end+=n;pos+=n
   count+=1
  assert end==size and h.digest()==expected,(name,'partition reconstruction')
  local=r/'images'/(name+'.img')
  if local.exists():assert h.digest()==hashfile(local),(name,'rebuilt image differs')
  else:assert h.hexdigest()==original[name]['hash'],(name,'original changed')
  report[name]={'bytes':size,'sha256':h.hexdigest(),'operations':count,'verified':True};print('PASS reconstructed',name,size,flush=True)
assert set(report)==set(original)
(r/'payload-verify.json').write_text(json.dumps(report,indent=2));print('PASS all',len(report),'partitions',flush=True)



print('PASS XZ Embedded CRC32/NONE decoding:',xz_operations,'operations',flush=True)
