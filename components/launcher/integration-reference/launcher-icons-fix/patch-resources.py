from pathlib import Path
import struct,zipfile
r=Path('work/launcher-icons-fix');u32=lambda b,o:struct.unpack_from('<I',b,o)[0]
def chunks(b,start):
 while start<len(b):
  t,h,n=struct.unpack_from('<HHI',b,start);yield start,t,h,n;start+=n
 assert start==len(b)
def size(b):struct.pack_into('<I',b,4,len(b));return b
# Reuse only the string-pool implementation, without running the animation patch.
s=Path('work/freeform-fix/add-animation-resources.py').read_text();a=s.index('def pool(');b=s.index("b=zipfile.ZipFile",a);exec(s[a:b])
source=zipfile.ZipFile(r/'Launcher.v3.backup.apk').read('resources.arsc');out=bytearray(source[:12]);globalbase=None
values=['Use LawnIcons instead of stock themed icons. Changes apply immediately.','Значки LawnIcons','Использовать LawnIcons вместо стандартных тематических значков. Изменения применяются сразу.']
for off,t,h,n in chunks(source,12):
 chunk=bytearray(source[off:off+n])
 if t==1:chunk,globalbase=pool(chunk,values)
 elif t==0x200:
  keyindices={}
  for p,k,kh,kn in chunks(chunk,h):
   c=chunk[p:p+kn]
   if k!=0x201 or c[8]!=0x13:continue
   count,start=u32(c,12),u32(c,16);assert c[9]==1
   if c[28:32]!=b'\0'*4:continue
   for i in range(count):
    entry,offset=struct.unpack_from('<HH',c,kh+4*i)
    if entry in [0x477,0x478]:
     pos=start+offset*4;flags=struct.unpack_from('<H',c,pos+2)[0];keyindices[entry]=struct.unpack_from('<H',c,pos)[0] if flags&8 else u32(c,pos+4)
  assert len(keyindices)==2
  package=bytearray(chunk[:h]);patched=[]
  for p,k,kh,kn in chunks(chunk,h):
   c=bytearray(chunk[p:p+kn])
   if k==0x201 and c[8]==0x13:
    lang=c[28:30];country=c[30:32]
    if lang in [b'ru',b'\0\0']:
     count,start=u32(c,12),u32(c,16);assert c[9]==1
     offsets=[struct.unpack_from('<HH',c,kh+4*i) for i in range(count)]
     entries={}
     for i,(entry,offset) in enumerate(offsets):
      end=offsets[i+1][1]*4 if i+1<len(offsets) else len(c)-start
      entries[entry]=bytearray(c[start+offset*4:start+end])
     replacements={0x477:globalbase+2,0x478:globalbase+1} if lang==b'ru' else {0x477:globalbase}
     changed=False
     for entry,index in replacements.items():
      if entry not in entries and lang!=b'ru':continue
      if entry not in entries:entries[entry]=bytearray(struct.pack('<HHIHBBI',8,0,keyindices[entry],8,0,3,index))
      else:
       e=entries[entry];flags=struct.unpack_from('<H',e,2)[0]
       if flags&8:
        assert flags>>8==3
        entries[entry]=bytearray(struct.pack('<HHIHBBI',8,flags&0xff&~8,keyindices[entry],8,0,3,index))
       else:
        assert struct.unpack_from('<HH',e)==(8,0) and e[11]==3
        struct.pack_into('<I',e,12,index)
      changed=True
     if changed:
      indices=bytearray();data=bytearray()
      for entry,e in sorted(entries.items()):
       assert len(data)%4==0 and len(data)//4<65536
       indices+=struct.pack('<HH',entry,len(data)//4);data+=e
      c=c[:kh]+indices+data;struct.pack_into('<I',c,12,len(entries));struct.pack_into('<I',c,16,kh+len(indices));size(c);patched.append((bytes(lang),bytes(country)))
   package+=c
  assert len(patched)==3,patched
  chunk=size(package)
 out+=chunk
(r/'patched.arsc').write_bytes(size(out))
