import sys,struct,hashlib,json
from pathlib import Path
sys.path[:0]=['work/re-python','work/tick-click/python']
from elftools.elf.elffile import ELFFile
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_LITTLE_ENDIAN
from unicorn import Uc,UC_ARCH_ARM64,UC_MODE_ARM
from unicorn.arm64_const import UC_ARM64_REG_X0,UC_ARM64_REG_X1,UC_ARM64_REG_X2,UC_ARM64_REG_X8,UC_ARM64_REG_X30,UC_ARM64_REG_SP,UC_ARM64_REG_PC
p=Path('work/tick-click/vendor.qti.hardware.vibrator.impl.so');original=p.read_bytes();data=bytearray(original)
with p.open('rb') as f:
 e=ELFFile(f);symbols=e.get_section_by_name('.dynsym');syms=[s for s in symbols.iter_symbols() if 'Vibrator7performE' in s.name];assert len(syms)==1
 entry=syms[0]['st_value'];assert entry==0x44b0
 rx=[(i,s) for i,s in enumerate(e.iter_segments()) if s['p_type']=='PT_LOAD' and s['p_flags']==5];assert len(rx)==1
 idx,seg=rx[0];cave=seg['p_vaddr']+seg['p_filesz'];assert cave==0x4f70 and seg['p_memsz']==seg['p_filesz']
 caveoff=seg['p_offset']+seg['p_filesz'];entryoff=entry-seg['p_vaddr']+seg['p_offset'];assert data[caveoff:caveoff+16]==bytes(16)
 first=bytes(data[entryoff:entryoff+4]);md=Cs(CS_ARCH_ARM64,CS_MODE_LITTLE_ENDIAN)
 ins=list(md.disasm(first,entry));assert len(ins)==1 and ins[0].mnemonic=='sub' and ins[0].op_str=='sp, sp, #0x60'
 def branch(a,b):
  assert (b-a)%4==0 and abs(b-a)<0x8000000
  return struct.pack('<I',0x14000000|(((b-a)//4)&0x3ffffff))
 # cmp w1,#2; csel w1,wzr,w1,eq; original stack allocation; b entry+4
 stub=struct.pack('<II',0x7100083f,0x1a8103e1)+first+branch(cave+12,entry+4)
 decoded=[(i.mnemonic,i.op_str) for i in md.disasm(stub,cave)]
 assert decoded[:2]==[('cmp','w1, #2'),('csel','w1, wzr, w1, eq')],decoded
 data[caveoff:caveoff+16]=stub;data[entryoff:entryoff+4]=branch(entry,cave)
 ph=e['e_phoff']+idx*e['e_phentsize'];struct.pack_into('<QQ',data,ph+32,seg['p_filesz']+16,seg['p_memsz']+16)
 # Execute the real patched instructions for normal, unsupported and signed IDs.
 for effect in list(range(0,256))+[-1,32768,0x7fffffff]:
  u=Uc(UC_ARCH_ARM64,UC_MODE_ARM);u.mem_map(0x4000,0x2000);u.mem_write(0x4000,bytes(data[0x4000:0x6000]));u.reg_write(UC_ARM64_REG_PC,entry)
  regs={UC_ARM64_REG_X0:0x12345678,UC_ARM64_REG_X1:effect&0xffffffff,UC_ARM64_REG_X2:2,UC_ARM64_REG_X8:0x87654321,UC_ARM64_REG_X30:0x11112222,UC_ARM64_REG_SP:0x20000}
  for r,v in regs.items():u.reg_write(r,v)
  u.emu_start(entry,entry+4,count=8)
  assert u.reg_read(UC_ARM64_REG_X1)==(0 if effect==2 else effect&0xffffffff)
  for r,v in regs.items():
   if r==UC_ARM64_REG_X1:continue
   assert u.reg_read(r)==(v-0x60 if r==UC_ARM64_REG_SP else v),(effect,r)
 out=p.with_name('vendor.qti.hardware.vibrator.impl.click.so');out.write_bytes(data)
 report={'original_sha256':hashlib.sha256(original).hexdigest(),'patched_sha256':hashlib.sha256(data).hexdigest(),'entry':hex(entry),'stub':hex(cave),'stub_disassembly':decoded,'emulated_cases':259,'mapping':'perform(effect=2)->perform(effect=0); strength/callback/other arguments unchanged; compose and other methods untouched','changed_file_bytes':sum(a!=b for a,b in zip(original,data))}
 Path('work/tick-click/patch-report.json').write_text(json.dumps(report,indent=2));print(json.dumps(report,indent=2))
