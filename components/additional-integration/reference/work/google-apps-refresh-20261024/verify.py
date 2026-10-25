from pathlib import Path
import subprocess,re,json,zipfile,hashlib
D=Path(__file__).resolve().parent;BT=Path('${ANDROID_TOOLS_ROOT}/sdk/build-tools/36.0.0');rows=json.loads((D/'capture.json').read_text());results=[];cached={x['package']:x for x in json.loads((D/'verified.json').read_text())} if (D/'verified.json').exists() else {}
def run(*a):return subprocess.run(list(map(str,a)),capture_output=True,text=True,check=True).stdout
def cert(p):
 s=run(BT/'apksigner','verify','--min-sdk-version','36','--print-certs',p)
 return re.findall(r'Signer #\d+ certificate SHA-256 digest: (\w+)',s)
for it in rows:
 pkg=it['package']
 if pkg in cached and cached[pkg]['files']==it['files']:
  results.append(cached[pkg]);print(pkg,'already verified',flush=True);continue
 folder=D/'captured'/pkg;base=folder/'base.apk';old=D/'original'/pkg/it['original']['apk_name'];oldcert=cert(old);newcert=cert(base);rotation=None
 if oldcert!=newcert:
  rotation=run('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1/bin/java','-cp',str(D)+':'+str(BT/'lib/apksigner.jar'),'VerifyChain',old,base)
  assert 'lineage=' in rotation,(pkg,oldcert,newcert)
 entries=[];allnames=set();dependencies=[];native=[];extract=None
 for f in it['files']:
  p=folder/f['name'];assert hashlib.sha256(p.read_bytes()).hexdigest()==f['sha256'];assert cert(p)==newcert
  badging=run(BT/'aapt2','dump','badging',p);xml=run(BT/'aapt2','dump','xmltree',p,'--file','AndroidManifest.xml');(folder/(f['name']+'.manifest.txt')).write_text(xml)
  m=re.search(r"package: name='([^']+)' versionCode='([^']+)'",badging);assert m and m[1]==pkg and m[2]==it['current']['version_code'],(pkg,m[0] if m else badging[:100])
  minimum=re.search(r"(?:minSdkVersion|sdkVersion):'([^']+)'",badging);assert minimum and minimum[1].isdigit() and int(minimum[1])<=36
  sp=re.search(r'^\s+A: split="([^"]+)"',xml,re.M);split=sp[1] if sp else None
  if split:allnames.add(split)
  for match in re.finditer(r'(?ms)E: uses-split .*?A: [^\n]*:name\([^\n]*?="([^"]+)"',xml):dependencies.append(match[1])
  cf=re.search(r'^\s+A: configForSplit="([^"]+)"',xml,re.M)
  if cf:dependencies.append(cf[1])
  flag=re.search(r':extractNativeLibs\([^\n]*?=(true|false|0xffffffff|0x0)',xml)
  if f['name']=='base.apk':extract=not(flag and flag[1] in ['false','0x0'])
  with zipfile.ZipFile(p) as z:
   for n in z.namelist():
    if n.startswith('lib/') and n.endswith('.so'):
     x=z.getinfo(n);native.append({'apk':f['name'],'path':n,'bytes':x.file_size,'compressed':x.compress_type!=0,'sha256':hashlib.sha256(z.read(n)).hexdigest()})
  entries.append({'apk':f['name'],'split':split,'min_sdk':int(minimum[1])})
 assert set(dependencies)<=allnames,(pkg,set(dependencies)-allnames)
 if not extract:assert all(not x['compressed'] for x in native),(pkg,'compressed native lib with extractNativeLibs=false')
 result={**it,'certificate_sha256':newcert,'verified_signature_matches_original':oldcert==newcert,'verified_original_signer_lineage':rotation,'extract_native_libs':extract,'apk_metadata':entries,'split_dependencies':dependencies,'native_libraries':native}
 results.append(result);(D/'verified.json').write_text(json.dumps(results,ensure_ascii=False,indent=2));print(pkg,'verified',len(entries),'APKs','native',len(native),'extract',extract,flush=True)
print('VERIFIED',len(results))
