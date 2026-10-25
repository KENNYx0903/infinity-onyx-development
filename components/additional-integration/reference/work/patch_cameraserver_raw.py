from pathlib import Path
import struct,hashlib,sys
sys.path.insert(0,'work/re-python')
from elftools.elf.elffile import ELFFile
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
src=Path('work/cameraserver.original');b=bytearray(src.read_bytes())
assert hashlib.sha256(b).hexdigest()=='17a9eba55b196e04d15a295c5b5e49c89ae38cfad8f1a60727540b33d60cdec1'
site=0x2b95d8;cave=0x386800;default_done=0x2b9510;original_max=0x2b95fc
branch=lambda at,to:0x14000000|(((to-at)//4)&0x3ffffff)
bcond=lambda at,to,c:0x54000000|((((to-at)//4)&0x7ffff)<<5)|c
assert struct.unpack_from('<I',b,site)[0]==branch(site,original_max)
words=[0x7100001f|(32<<10)|(22<<5),bcond(cave+4,default_done,0),0x51000000|(36<<10)|(22<<5)|8,0x7100001f|(2<<10)|(8<<5),bcond(cave+16,default_done,9),branch(cave+20,original_max)]
stub=struct.pack('<6I',*words)
assert b[cave:cave+len(stub)]==bytes(len(stub))
# Grow only the existing RX load segment into its unused alignment padding.
phoff=struct.unpack_from('<Q',b,32)[0];phent,phnum=struct.unpack_from('<HH',b,54)
found=False
for i in range(phnum):
 off=phoff+i*phent;typ,flags,fo,va,pa,fs,ms,al=struct.unpack_from('<IIQQQQQQ',b,off)
 if typ==1 and flags==5 and va==0xb4000:
  assert fo==va and fs==ms==0x2d27c0 and cave+len(stub)<0x388000
  size=cave+len(stub)-va
  struct.pack_into('<QQ',b,off+32,size,size);found=True
assert found
struct.pack_into('<I',b,site,branch(site,cave));b[cave:cave+len(stub)]=stub
out=Path('work/cameraserver.raw-compat');out.write_bytes(b)
print('Patched auto-mode RAW default selection only; explicit modes and non-RAW unchanged')
for ins in Cs(CS_ARCH_ARM64,CS_MODE_ARM).disasm(stub,cave): print(hex(ins.address),ins.mnemonic,ins.op_str)
print('SHA256',hashlib.sha256(b).hexdigest())
# Truth table of the added branch once DEFAULT has already been inserted.
for fmt in [32,36,37,38,33,34,35]:
 raw=fmt in [32,36,37,38]
 target=default_done if fmt==32 or ((fmt-36)&0xffffffff)<=2 else original_max
 assert (target==default_done)==raw
print('RAW/BLOB/PRIVATE/YUV branch truth table verified')
