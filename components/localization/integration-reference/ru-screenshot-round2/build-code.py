from pathlib import Path
import subprocess,re,json,zipfile,shutil,os,hashlib
from maps import MAP
D=Path(__file__).resolve().parent;jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');bt=sdk/'build-tools/36.0.0';android=sdk/'platforms/android-36/android.jar';cp=':'.join(map(str,(sdk/'cmdline-tools/latest/lib').rglob('*.jar')))
def run(*a):subprocess.run(list(map(str,a)),capture_output=True,check=True)
# Isolated locale helper changes display text only at selected call sites.
src=D/'helper/RuUiText.java';src.parent.mkdir(exist_ok=True)
java='package com.infinity.localization; public final class RuUiText { public static String text(String s){if(!"ru".equals(java.util.Locale.getDefault().getLanguage()))return s;'
for en,ru in MAP.items():java+='if('+json.dumps(en,ensure_ascii=False)+'.equals(s))return '+json.dumps(ru,ensure_ascii=False)+';'
java+='return s;}}';src.write_text(java)
(D/'helper/classes').mkdir(exist_ok=True);(D/'helper/dex').mkdir(exist_ok=True)
run(jdk/'bin/javac','--release','8','-cp',android,'-d',D/'helper/classes',src);run(bt/'d8','--min-api','35','--lib',android,'--output',D/'helper/dex',D/'helper/classes/com/infinity/localization/RuUiText.class');run(jdk/'bin/java','-cp',cp,'com.android.tools.smali.baksmali.Main','d',D/'helper/dex/classes.dex','-o',D/'helper/smali')
results=[]
for pkgdir in (D/'code').iterdir():
 pkg=pkgdir.name;changed={};hits=[];helper_added=False
 for tree in sorted(p for p in pkgdir.iterdir() if p.is_dir()):
  for p in tree.rglob('*.smali'):
   rel=str(p.relative_to(tree))
   if pkg=='com.android.settings' and not rel.startswith('com/infinity/settings/battery/'):continue
   if pkg=='com.android.axion.axthemestore' and not rel.startswith('com/android/axion/axthemestore/ui/'):continue
   if pkg=='com.ireddragonicy.gamespace' and not any(rel.startswith(x) for x in ['com/ireddragonicy/gamespace/hub/','com/ireddragonicy/gamespace/settings/']):continue
   s=p.read_text()
   s=re.sub(r'\n\n    invoke-static/range \{([vp]\d+) \.\. \1\}, Lcom/infinity/localization/RuUiText;->text\(Ljava/lang/String;\)Ljava/lang/String;\n\n    move-result-object \1','',s)
   def replace(m):
    try:v=json.loads('"'+m[2].replace("\\'", "'")+'"')
    except Exception:return m[0]
    if v not in MAP:return m[0]
    # Translate display labels; keep enum/value/storage strings outside UI scope untouched.
    if pkg=='com.ireddragonicy.gamespace' and v in ['Auto','Light','Dark','All apps','Most used','No action','No change'] and not ('ActivityKt' in rel or 'ComposableSingletons' in rel):return m[0]
    hits.append({'file':rel,'text':v});return m[0]+'\n\n    invoke-static/range {'+m[1]+' .. '+m[1]+'}, Lcom/infinity/localization/RuUiText;->text(Ljava/lang/String;)Ljava/lang/String;\n\n    move-result-object '+m[1]
   out=re.sub(r'    const-string(?:/jumbo)? ([vp]\d+), "((?:\\.|[^"\\])*)"',replace,s)
   if pkg=='com.android.axion.axthemestore' and p.name=='ThemeStoreScreenKt.smali':
    pattern=r'(\.method private static final SectionHeader\(Ljava/lang/String;[^\n]+\n    \.(?:locals|registers) \d+\n)'
    out,n=re.subn(pattern,lambda m:m[1]+'\n    invoke-static/range {p0 .. p0}, Lcom/infinity/localization/RuUiText;->text(Ljava/lang/String;)Ljava/lang/String;\n    move-result-object p0\n',out);assert n==1
    hits.append({'file':rel,'text':'remote category title at SectionHeader'})

   if out!=s:p.write_text(out);changed[tree.name+'.dex']=tree
  if tree.name+'.dex' in changed and not helper_added:
   dst=tree/'com/infinity/localization/RuUiText.smali';dst.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(D/'helper/smali/com/infinity/localization/RuUiText.smali',dst);helper_added=True
 if not changed:continue
 folder=D/'built'/pkg;folder.mkdir(parents=True,exist_ok=True);dexes={}
 for name,tree in changed.items():
  build=folder/name.replace('.dex','');build.mkdir(exist_ok=True);(build/'apktool.yml').write_text('version: 3.0.3\napkFileName: classes.jar\nsdkInfo:\n  minSdkVersion: 36\ndoNotCompress:\n- dex\n')
  if not (build/'smali').exists():(build/'smali').symlink_to(tree,target_is_directory=True)
  run(jdk/'bin/java','-Xmx2g','-jar','${APKTOOL_JAR}','b',build,'-o',build/'rebuilt.jar')
  with zipfile.ZipFile(build/'rebuilt.jar') as z:dexes[name]=z.read('classes.dex')
 with zipfile.ZipFile(D/'baselines'/(pkg+'.apk')) as z,zipfile.ZipFile(folder/'unsigned.apk','w') as out:
  for i in z.infolist():
   if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.MF','.DSA','.EC')):continue
   out.writestr(i,(D/'settings-resources.arsc').read_bytes() if pkg=='com.android.settings' and i.filename=='resources.arsc' else dexes.get(i.filename,z.read(i.filename)))
 run(bt/'zipalign','-f','4',folder/'unsigned.apk',folder/'aligned.apk');run(bt/'apksigner','sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',folder/'translated.apk',folder/'aligned.apk');run(bt/'apksigner','verify',folder/'translated.apk')
 results.append({'package':pkg,'dexes':list(changed),'hits':hits,'sha256':hashlib.sha256((folder/'translated.apk').read_bytes()).hexdigest()});print(pkg,len(hits),'sites',flush=True)
(D/'code-verification.json').write_text(json.dumps(results,ensure_ascii=False,indent=2))
