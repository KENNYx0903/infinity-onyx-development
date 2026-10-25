import struct,mmap,stat,hashlib,json
from pathlib import Path
class Erofs:
 def __init__(self,path):
  self.f=open(path,'rb');self.d=mmap.mmap(self.f.fileno(),0,access=mmap.ACCESS_READ);s=self.d[1024:1152]
  assert struct.unpack_from('<I',s)[0]==0xe0f5e1e2
  self.bs=1<<s[12];self.root=struct.unpack_from('<H',s,14)[0];self.meta=struct.unpack_from('<I',s,40)[0]*self.bs;self.xbase=struct.unpack_from('<I',s,44)[0]*self.bs;self.time=struct.unpack_from('<Q',s,24)[0];assert not s[91], 'long xattr prefixes not supported'
 def inode(self,n):
  p=self.meta+n*32;f,xc,mode=struct.unpack_from('<HHH',self.d,p);ext=f&1;sz=64 if ext else 32;size=struct.unpack_from('<Q' if ext else '<I',self.d,p+8)[0]
  uid,gid=struct.unpack_from('<II' if ext else '<HH',self.d,p+24)
  xs=12+(xc-1)*4 if xc else 0;x={}
  def entry(off):
   nl,idx,vl=struct.unpack_from('<BBH',self.d,off);prefix={1:'user.',2:'system.posix_acl_access',3:'system.posix_acl_default',4:'trusted.',6:'security.'}[idx];name=prefix+self.d[off+4:off+4+nl].decode();v=self.d[off+4+nl:off+4+nl+vl];x[name]=v;return (4+nl+vl+3)&~3
  if xc:
   q=p+sz;sc=self.d[q+4]
   for k in range(sc):entry(self.xbase+struct.unpack_from('<I',self.d,q+12+4*k)[0]*4)
   cur=q+12+sc*4
   while cur<q+xs:cur+=entry(cur)
  return dict(nid=n,mode=mode,size=size,uid=uid,gid=gid,mtime=struct.unpack_from('<Q',self.d,p+32)[0] if ext else self.time,layout=(f>>1)&7,addr=struct.unpack_from('<I',self.d,p+16)[0],inline=p+sz+xs,xattrs=x)
 def flat(self,i):
  size=i['size'];a=i['addr']*self.bs
  if i['layout']==0:return self.d[a:a+size]
  assert i['layout']==2,i
  full=(size//self.bs)*self.bs;return self.d[a:a+full]+self.d[i['inline']:i['inline']+size-full]
 def walk(self,n=None,path=''):
  i=self.inode(self.root if n is None else n);yield path,i
  if not stat.S_ISDIR(i['mode']):return
  raw=self.flat(i)
  for start in range(0,len(raw),self.bs):
   block=raw[start:start+self.bs];first=struct.unpack_from('<H',block,8)[0];num=first//12
   for k in range(num):
    nid,no,typ=struct.unpack_from('<QHB',block,k*12);end=struct.unpack_from('<H',block,(k+1)*12+8)[0] if k+1<num else len(block)
    name=block[no:end].split(b'\0')[0].decode()
    if name in ('.','..'):continue
    yield from self.walk(nid,(path+'/'+name).lstrip('/'))
if __name__=='__main__':
 import sys
 e=Erofs(sys.argv[1]);items=list(e.walk());print('inodes/paths',len(items));print([(n,{k:v for k,v in i.items() if k!='xattrs'},i['xattrs']) for n,i in items[:4]])
