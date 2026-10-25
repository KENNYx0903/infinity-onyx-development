from pathlib import Path
import subprocess,struct,zipfile,re,json,sys,hashlib
sys.path.insert(0,'work/ru-screenshot-round2');from maps import MAP
from more_maps import MORE
MAP={**MAP,**MORE}
D=Path(__file__).resolve().parent;code=Path('work/ru-translation-apply/patch.py').read_text();code=code[code.index('def chunks'):code.index('bt=Path(')];ns={'struct':struct};exec(code,ns);bt=Path('${ANDROID_TOOLS_ROOT}/sdk/build-tools/36.0.0');results=[]
for pkg in ['com.ireddragonicy.gamespace','com.android.axion.axthemestore']:
 p=D/'built'/pkg/'translated.apk';r=subprocess.run([str(bt/'aapt2'),'dump','resources',str(p)],capture_output=True,text=True,check=True);before=r.stdout;rows=[]
 for block in re.split(r'(?=    resource )',before):
  h=re.match(r'    resource (0x[0-9a-f]+) string/(\S+)',block)
  if not h:continue
  # Default strings may contain newlines; capture through the next config.
  m=re.search(r'^      \(\) "(.*?)"\n(?=      \(|\Z)',block,re.M|re.S)
  if not m:continue
  text=re.sub(r'\n      ', '\n',m[1])
  if text not in MAP:continue
  ru=MAP[text];assert sorted(re.findall(r'%(?:\d+\$)?[sdf]',text))==sorted(re.findall(r'%(?:\d+\$)?[sdf]',ru)),(text,ru)
  rows.append({'id':h[1],'key':h[2],'proposed_ru':ru,'text':text})
 if rows:
  with zipfile.ZipFile(p) as z:raw,hits=ns['patch'](z.read('resources.arsc'),rows)
  with zipfile.ZipFile(p) as z,zipfile.ZipFile(p.parent/'full-res-unsigned.apk','w') as out:
   for i in z.infolist():
    if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.RSA','.SF','.MF','.EC','.DSA')):continue
    out.writestr(i,raw if i.filename=='resources.arsc' else z.read(i.filename))
  for cmd in [[str(bt/'zipalign'),'-f','4',str(p.parent/'full-res-unsigned.apk'),str(p.parent/'full-res-aligned.apk')],[str(bt/'apksigner'),'sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',str(p),str(p.parent/'full-res-aligned.apk')]]:subprocess.run(cmd,capture_output=True,check=True)
 r=subprocess.run([str(bt/'aapt2'),'dump','resources',str(p)],capture_output=True,text=True,check=True);(p.parent/'resources-final.txt').write_text(r.stdout)
 def configs(s):
  out={}
  for b in re.split(r'(?=    resource )',s):
   h=re.match(r'    resource (0x[0-9a-f]+) ',b)
   if not h:continue
   for m in re.finditer(r'^      \(([^)]*)\) (.*?)(?=^      \(|\Z)',b,re.M|re.S):out[h[1],m[1]]=m[2].rstrip()
  return out
 old=configs(before);new=configs(r.stdout);assert old.keys()<=new.keys()
 assert all(k[1] in ['ru','ru-rRU'] for k,v in old.items() if new.get(k)!=v)
 results.append({'package':pkg,'resource_count':len(rows),'resources':rows,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()});print(pkg,'Russian resource entries',len(rows),flush=True)
(D/'resource-verification.json').write_text(json.dumps(results,ensure_ascii=False,indent=2))
