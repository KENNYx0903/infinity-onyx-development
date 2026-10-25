from pathlib import Path
import zipfile,subprocess,json,hashlib,re
D=Path(__file__).resolve().parent
code=Path('work/ru-translation-apply/patch.py').read_text();code=code[code.index('def chunks'):code.index("bt=Path(")];code=code.replace("c[28:30]==b'ru' and c[30:32] in (b'\\0\\0',b'RU')","c[28:30] in (b'\\0\\0',b'en')")
ns={};exec('import struct\n'+code,ns)
rows=[{'id':'0x7f150b48','key':'doze_always_on_title','proposed_ru':'Always-on display (AOD)'},{'id':'0x7f150b49','key':'doze_always_on_title2','proposed_ru':'Always-on display (AOD)'},{'id':'0x7f150b45','key':'doze_always_on_summary_long','proposed_ru':'Always-on display (AOD) shows the time, date, and notifications while your phone is locked.'}]
base=Path('work/ru-translation-apply/com.android.settings/translated.apk')
with zipfile.ZipFile(base) as z:raw=z.read('resources.arsc');new,touched=ns['patch'](raw,rows)
with zipfile.ZipFile(base) as z,zipfile.ZipFile(D/'unsigned.apk','w') as out:
 for i in z.infolist():
  if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.MF','.DSA','.EC')):continue
  out.writestr(i,new if i.filename=='resources.arsc' else z.read(i.filename))
bt=Path('${ANDROID_TOOLS_ROOT}/sdk/build-tools/36.0.0')
for cmd in [[str(bt/'zipalign'),'-f','4',str(D/'unsigned.apk'),str(D/'aligned.apk')],[str(bt/'apksigner'),'sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',str(D/'Settings.aod-en.apk'),str(D/'aligned.apk')],[str(bt/'apksigner'),'verify',str(D/'Settings.aod-en.apk')]]:subprocess.run(cmd,capture_output=True,check=True)
r=subprocess.run([str(bt/'aapt2'),'dump','resources',str(D/'Settings.aod-en.apk')],capture_output=True,text=True,check=True);(D/'resources.txt').write_text(r.stdout)
def parse(s):
 d={};key=None
 for l in s.splitlines():
  m=re.match(r'    resource (0x[0-9a-f]+) ',l)
  if m:key=m[1]
  m=re.match(r'      \(([^)]*)\) (.*)',l)
  if key and m:d[key,m[1]]=m[2]
 return d
old=parse(Path('work/ru-translation-apply/com.android.settings/resources.txt').read_text());after=parse(r.stdout);ids={r['id'] for r in rows}
assert all(k in after for k in old)
for k,v in old.items():
 if after[k]!=v:assert k[0] in ids and (k[1]=='' or k[1].startswith('en')),(k,v,after[k])
for row in rows:assert after[row['id'],'']=='"'+row['proposed_ru']+'"'
with zipfile.ZipFile(base) as a,zipfile.ZipFile(D/'Settings.aod-en.apk') as b:assert [n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=b.read(n)]==['resources.arsc']
(D/'verification.json').write_text(json.dumps({'rows':rows,'touched':touched,'sha256':hashlib.sha256((D/'Settings.aod-en.apk').read_bytes()).hexdigest(),'checks':'only three selected default/English resources changed; RU and all other existing configurations retained; dex unchanged'},indent=2));print('Three resources verified, Russian preserved')
