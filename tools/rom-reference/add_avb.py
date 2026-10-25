from pathlib import Path
import sys,subprocess,json,math
sys.path.insert(0,'work/rom-build-r8/tools');import avbtool
r=Path('work/rom-build-r8');a=Path('work/rom-audit');tool=r/'tools/avbtool.py';avb=avbtool.Avb();key=r/'tools/avb-testkey.pem'
oldparts=json.loads((a/'partitions.json').read_text());descs={}
for n in ['vbmeta','vbmeta_system']:
 _,h,ds,_=avb._parse_image(avbtool.ImageHandler(str(a/(n+'.img')),read_only=True))
 for d in ds:
  if isinstance(d,avbtool.AvbHashtreeDescriptor):descs[d.partition_name]=d
for n in ['system','system_ext','product','vendor','odm','vendor_dlkm']:
 p=r/'images'/(n+'.img');d=descs[n];size=max(oldparts[n]['size'],math.ceil((p.stat().st_size*1.02+131072)/4096)*4096)
 subprocess.run(['python3',str(tool),'add_hashtree_footer','--image',str(p),'--partition_size',str(size),'--partition_name',n,'--hash_algorithm',d.hash_algorithm,'--salt',d.salt.hex(),'--block_size',str(d.data_block_size),'--do_not_generate_fec'],check=True)
 print('AVB footer',n,p.stat().st_size,flush=True)
dtbo=r/'images/dtbo.img'
_,_,original_ds,_=avb._parse_image(avbtool.ImageHandler(str(a/'dtbo.img'),read_only=True))
d=next(x for x in original_ds if isinstance(x,avbtool.AvbHashDescriptor))
subprocess.run(['python3',str(tool),'erase_footer','--image',str(dtbo)],check=True)
subprocess.run(['python3',str(tool),'add_hash_footer','--image',str(dtbo),'--partition_size',str(oldparts['dtbo']['size']),'--partition_name','dtbo','--hash_algorithm',d.hash_algorithm,'--salt',d.salt.hex()],check=True)
for n,mods in [('vbmeta_system' ,['system','system_ext','product']),('vbmeta',['vendor','odm','vendor_dlkm','dtbo'])]:
 _,h,_,_=avb._parse_image(avbtool.ImageHandler(str(a/(n+'.img')),read_only=True))
 args=['python3',str(tool),'make_vbmeta_image','--output',str(r/'images'/(n+'.img')),'--algorithm','SHA256_RSA2048','--key',str(key),'--flags',str(h.flags),'--rollback_index',str(h.rollback_index),'--rollback_index_location',str(h.rollback_index_location),'--padding_size',str(oldparts[n]['size']),'--include_descriptors_from_image',str(a/(n+'.img'))]
 for x in mods:args+=['--include_descriptors_from_image',str(r/'images'/(x+'.img'))]
 subprocess.run(args,check=True)
 print('SIGNED',n,flush=True)
