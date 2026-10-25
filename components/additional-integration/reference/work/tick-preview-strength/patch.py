import sys,struct,hashlib,json
from pathlib import Path
sys.path[:0]=['work/re-python','work/tick-click/python']
from elftools.elf.elffile import ELFFile
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_LITTLE_ENDIAN
from unicorn import Uc,UC_ARCH_ARM64,UC_MODE_ARM
from unicorn.arm64_const import UC_ARM64_REG_X0,UC_ARM64_REG_X1,UC_ARM64_REG_X2,UC_ARM64_REG_X8,UC_ARM64_REG_X30,UC_ARM64_REG_SP
p=Path('work/tick-click/vendor.qti.hardware.vibrator.impl.so');original=p.read_bytes();data=bytearray(original)
routes={19:(2,0),20:(2,1),18:(2,2),17:(0,0),16:(0,1),15:(0,2)}
with p.open('rb') as f:
 e=ELFFile(f);rx=[(i,s) for i,s in enumerate(e.iter_segments()) if s['p_type']=='PT_LOAD' and s['p_flags']==5];assert len(rx)==1
 idx,seg=rx[0];entry=0x44b0;cave=seg['p_vaddr']+seg['p_filesz'];assert cave==0x4f70
 first=bytes(data[entry:entry+4]);assert first==struct.pack('<I',0xd10183ff)
 def b(a,z):return 0x14000000|(((z-a)//4)&0x3ffffff)
 def beq(a,z):return 0x54000000|((((z-a)//4)&0x7ffff)<<5)
 words=[];dispatch=[]
 for effect in routes:
  words.append(0x7100003f|(effect<<10));dispatch.append((len(words),effect));words.append(0)
 words += [0x7100083f,0x1a8103e1];common_jumps=[len(words)];words.append(0)
 handlers={}
 for effect,(target,strength) in routes.items():
  handlers[effect]=cave+4*len(words)
  words.extend([0x52800001|(target<<5),0x52800002|(strength<<5)])
  common_jumps.append(len(words));words.append(0)
 common=cave+4*len(words);words.extend([struct.unpack('<I',first)[0],b(common+4,entry+4)])
 for i,effect in dispatch:words[i]=beq(cave+4*i,handlers[effect])
 for i in common_jumps:words[i]=b(cave+4*i,common)
 stub=struct.pack('<'+'I'*len(words),*words);assert data[cave:cave+len(stub)]==bytes(len(stub))
 data[cave:cave+len(stub)]=stub;data[entry:entry+4]=struct.pack('<I',b(entry,cave))
 ph=e['e_phoff']+idx*e['e_phentsize'];struct.pack_into('<QQ',data,ph+32,seg['p_filesz']+len(stub),seg['p_memsz']+len(stub))
 for effect in list(range(256))+[-1,32768,0x7fffffff]:
  for strength in [0,1,2]:
   u=Uc(UC_ARCH_ARM64,UC_MODE_ARM);u.mem_map(0x4000,0x2000);u.mem_write(0x4000,bytes(data[0x4000:0x6000]))
   regs={UC_ARM64_REG_X0:0x12345678,UC_ARM64_REG_X1:effect&0xffffffff,UC_ARM64_REG_X2:strength,UC_ARM64_REG_X8:0x87654321,UC_ARM64_REG_X30:0x11223344,UC_ARM64_REG_SP:0x20000}
   for r,v in regs.items():u.reg_write(r,v)
   u.emu_start(entry,entry+4,count=40)
   expect=routes.get(effect,(0 if effect==2 else effect&0xffffffff,strength))
   assert (u.reg_read(UC_ARM64_REG_X1),u.reg_read(UC_ARM64_REG_X2))==expect
   for r,v in regs.items():
    if r in [UC_ARM64_REG_X1,UC_ARM64_REG_X2]:continue
    assert u.reg_read(r)==(v-0x60 if r==UC_ARM64_REG_SP else v)
 out=Path('work/tick-preview-strength/vibrator-preview-strength-v3.so');out.write_bytes(data)
 md=Cs(CS_ARCH_ARM64,CS_MODE_LITTLE_ENDIAN)
 report={'original_sha256':hashlib.sha256(original).hexdigest(),'patched_sha256':hashlib.sha256(data).hexdigest(),'emulated_cases':777,'routes':routes,'stub_size':len(stub),'disassembly':[(hex(i.address),i.mnemonic,i.op_str) for i in md.disasm(stub,cave)]}
 Path('work/tick-preview-strength/patch-report.json').write_text(json.dumps(report,indent=2));print(json.dumps({k:v for k,v in report.items() if k!='disassembly'},indent=2))
