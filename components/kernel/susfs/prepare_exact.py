from pathlib import Path
import shutil,subprocess,json
r=Path('work/susfs-build').resolve();ddk=r/'ddk/opt/ddk';dest=r/'exact-ddk';dest.mkdir(exist_ok=True)
for name,original in [('src',ddk/'src/android15-6.6'),('out',ddk/'kdir/android15-6.6')]:
 p=dest/name
 if not p.exists():subprocess.run(['cp','-al',str(original),str(p)],check=True)
def write(p,b):
 p.parent.mkdir(parents=True,exist_ok=True)
 if p.exists() or p.is_symlink():p.unlink()
 p.write_bytes(b)
count=0
for p in (r/'exact-headers').rglob('*'):
 if not p.is_file():continue
 rel=p.relative_to(r/'exact-headers');parts=rel.parts
 generated=(parts[:2]==('include','generated')) or ('generated' in parts and parts[0]=='arch')
 target=dest/('out' if generated else 'src')/rel
 write(target,p.read_bytes());count+=1
write(dest/'out/Makefile',('include '+str(dest/'src/Makefile')+'\n').encode())
source=dest/'out/source'
if source.exists() or source.is_symlink():source.unlink()
source.symlink_to(dest/'src')
write(dest/'out/include/config/kernel.release',b'6.6.82-4k-ge4d30c77ca39-dirty\n')
print('Copied exact headers',count)
