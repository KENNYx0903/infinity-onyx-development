from common import *
base=Path('work/control-center-launcher-blur-test/baseline.apk');z=zipfile.ZipFile(base);i=2
while 'classes%d.dex'%i in z.namelist():i+=1
pack(base,P/'SystemUI.blur.apk',{'classes2.dex':assemble(P/'sysui-classes2','sysui'),'classes%d.dex'%i:(P/'sysui-helper.dex').read_bytes()})
