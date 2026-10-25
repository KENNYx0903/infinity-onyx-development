import struct

def vint(n):
 assert n>=0;b=bytearray()
 while n>127:b.append((n&127)|128);n>>=7
 b.append(n);return bytes(b)
def readv(b,p):
 n=s=0
 while True:
  v=b[p];p+=1;n|=(v&127)<<s
  if v<128:return n,p
  s+=7
  assert s<70

def parse(b):
 fields=[];p=0
 while p<len(b):
  key,p=readv(b,p);n,w=key>>3,key&7
  if w==0:v,p=readv(b,p)
  elif w==2:l,p=readv(b,p);v=b[p:p+l];p+=l
  elif w in (1,5):l=8 if w==1 else 4;v=b[p:p+l];p+=l
  else:raise ValueError(w)
  fields.append((n,w,v))
 assert p==len(b);return fields

def encode(fields):
 return b''.join(vint(n<<3|w)+(vint(v) if w==0 else vint(len(v))+v if w==2 else v) for n,w,v in fields)
def get(fs,n,default=None):return next((v for k,w,v in fs if k==n),default)
def many(fs,n):return [v for k,w,v in fs if k==n]
def setf(fs,n,w,v):
 result=[(k,t,x) for k,t,x in fs if k!=n];result.append((n,w,v));return sorted(result,key=lambda x:x[0])
