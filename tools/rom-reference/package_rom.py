from pathlib import Path
import sys,zipfile,struct,hashlib,subprocess,json,shutil
sys.path[:0]=['work/rom-build-r8','work/rom-build-r8/tools'];from proto import *;import avbtool
r=Path('work/rom-build-r8');a=Path('work/rom-audit');original=Path('outputs/Infinity-3.12--06.08.2026-GAPPS-UNOFFICIAL-LANG_lunatik_kenny_20261024_R7_EXPERIMENTAL_AOD.zip');payload=r/'payload.bin';avb=avbtool.Avb()
readme=(r/'README_RU.txt').read_text()
(r/'README_RU.txt').write_text(readme)
with zipfile.ZipFile(original) as z:
 original_meta=z.read('META-INF/com/android/metadata').decode();original_pb=parse(z.read('META-INF/com/android/metadata.pb'));care=parse(z.read('care_map.pb'));apex=z.read('apex_info.pb');cert=z.read('META-INF/com/android/otacert')
newcare=[]
for k,w,v in care:
 if k!=1:newcare.append((k,w,v));continue
 p=parse(v);name=get(p,1).decode();image=r/'images'/(name+'.img')
 if image.exists():
  _,_,ds,_=avb._parse_image(avbtool.ImageHandler(str(image),read_only=True));d=next(d for d in ds if isinstance(d,avbtool.AvbHashtreeDescriptor));assert d.image_size%4096==0;p=setf(p,2,2,('2,0,'+str(d.image_size//4096)).encode())
 newcare.append((k,w,encode(p)))
caredata=encode(newcare);(r/'care_map.pb').write_bytes(caredata)
values=dict(line.split('=',1) for line in original_meta.splitlines() if '=' in line);basepb=[(k,w,v) for k,w,v in original_pb if k!=4]
entries=[('payload.bin',payload),('payload_properties.txt',(r/'payload_properties.txt').read_bytes()),('apex_info.pb',apex),('care_map.pb',caredata),('META-INF/com/android/otacert',cert),('README_LUNATIK_RU.txt',readme.encode()),('SUSFS_SOURCES.tar.gz',(r/'SUSFS_SOURCES.tar.gz').read_bytes()),('AOD_SOURCES.tar.gz',(r/'AOD_SOURCES.tar.gz').read_bytes()),('META-INF/com/android/metadata',b''),('META-INF/com/android/metadata.pb',b'')]
with payload.open('rb') as f:_,_,ml,sl=struct.unpack('>4sQQI',f.read(24))
metasize=24+ml+sl
for iteration in range(20):
 offsets={};pos=0
 for n,data in entries:
  size=data.stat().st_size if isinstance(data,Path) else len(data);offset=pos+30+len(n.encode())+(20 if n=='payload.bin' else 0);offsets[n]=(offset,size);pos=offset+size
 def tokens(streaming):
  out=[]
  if not streaming:out.append('payload_metadata.bin:%d:%d'%(offsets['payload.bin'][0],metasize))
  for n in ['payload.bin','payload_properties.txt','apex_info.pb','care_map.pb','META-INF/com/android/metadata','META-INF/com/android/metadata.pb']:
   out.append(n.rsplit('/',1)[-1]+':%d:%d'%offsets[n])
  return ','.join(out)
 values['ota-property-files']=tokens(False);values['ota-streaming-property-files']=tokens(True)
 text=''.join(k+'='+v.strip()+'\n' for k,v in values.items()).encode();pb=encode(sorted(basepb+[(4,2,encode([(1,2,k.encode()),(2,2,values[k].encode())])) for k in ['ota-property-files','ota-streaming-property-files']],key=lambda x:x[0]))
 oldentries=entries[-2:];entries[-2:]=[(entries[-2][0],text),(entries[-1][0],pb)]
 if oldentries==entries[-2:]:break
else:raise ValueError('metadata offsets did not converge')
out=Path('outputs/Infinity-3.12--06.08.2026-GAPPS-UNOFFICIAL-LANG_lunatik_kenny_20261025_R8_EXPERIMENTAL_AOD.zip')
with zipfile.ZipFile(out,'w',compression=zipfile.ZIP_STORED,allowZip64=True) as z:
 for n,data in entries:
  i=zipfile.ZipInfo(n,(2026,10,20,12,0,0));i.compress_type=zipfile.ZIP_STORED;i.external_attr=0o100644<<16
  if isinstance(data,Path):
   i.file_size=data.stat().st_size
   with z.open(i,'w',force_zip64=True) as dest,data.open('rb') as src:shutil.copyfileobj(src,dest,8*1024*1024)
  else:z.writestr(i,data)
with zipfile.ZipFile(out) as z,out.open('rb') as f:
 for n,data in entries:
  i=z.getinfo(n);f.seek(i.header_offset);h=f.read(30);nl,el=struct.unpack_from('<HH',h,26);actual=i.header_offset+30+nl+el;assert (actual,i.file_size)==offsets[n],(n,actual,offsets[n])
 assert z.read('META-INF/com/android/metadata')==text
# Whole-file detached CMS signature: sign all bytes except EOCD's comment-length field.
with out.open('rb+') as f:
 f.seek(-22,2);eocd=f.read(22);assert eocd[:4]==b'PK\x05\x06' and eocd[-2:]==b'\0\0';f.seek(-2,2);f.truncate()
sigfile=r/'ota-signature.der'
subprocess.run(['openssl','cms','-sign','-binary','-noattr','-md','sha256','-signer',str(r/'tools/testkey.x509.pem'),'-inkey',str(r/'tools/payload-testkey.pem'),'-in',str(out),'-outform','DER','-out',str(sigfile)],check=True)
sig=sigfile.read_bytes();message=b'signed by lunatik_kenny\0';total=len(message)+len(sig)+6;footer=struct.pack('<H',len(sig)+6)+b'\xff\xff'+struct.pack('<H',total);comment=message+sig+footer;assert b'PK\x05\x06' not in comment
with out.open('ab') as f:f.write(struct.pack('<H',total));f.write(comment)
h=hashlib.sha256()
with out.open('rb') as f:
 while b:=f.read(8*1024*1024):h.update(b)
Path(str(out)+'.sha256').write_text(h.hexdigest()+'  '+out.name+'\n')
Path('outputs/Infinity_lunatik_kenny_R8_README_RU.txt').write_text(readme)
(r/'ota-report.json').write_text(json.dumps({'file':str(out),'bytes':out.stat().st_size,'sha256':h.hexdigest(),'offsets':offsets,'payload_metadata_bytes':metasize,'metadata_iterations':iteration+1,'ota_signature_bytes':len(sig)},indent=2))
print('SIGNED OTA',out,out.stat().st_size,'SHA256',h.hexdigest(),flush=True)
