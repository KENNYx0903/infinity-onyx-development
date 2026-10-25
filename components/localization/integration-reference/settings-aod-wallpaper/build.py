from pathlib import Path
import re,subprocess,zipfile,hashlib,json
r=Path('work/settings-aod-wallpaper');p=r/'smali/com/android/settings/display/AmbientDisplayAlwaysOnPreferenceScreen$Companion.smali';s=p.read_text();(r/'Companion.original.smali').write_text(s);pat=r'(?s)(\.method private final isAmbientWallpaperOptionsAvailable\(Landroid/content/Context;\)Z).*?\.end method';s,n=re.subn(pat,lambda m:m[1]+'\n    .locals 0\n    const/4 p0, 0x0\n    return p0\n.end method',s);assert n==1;p.write_text(s)
sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');java='${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1/bin/java';cp=':'.join(str(p) for p in (sdk/'cmdline-tools/latest/lib').rglob('*.jar'));subprocess.run([java,'-jar','${APKTOOL_JAR}','b',str(r/'dex-build'),'-o',str(r/'dex-built.apk')],check=True)
with zipfile.ZipFile(r/'dex-built.apk') as z:(r/'classes2.patched.dex').write_bytes(z.read('classes.dex'))
with zipfile.ZipFile(r/'Settings.active.apk') as old,zipfile.ZipFile(r/'unsigned.apk','w') as out:
 for i in old.infolist():
  if i.filename.upper().startswith('META-INF/') and i.filename.upper().endswith(('.RSA','.SF','.MF')):continue
  out.writestr(i,(r/'classes2.patched.dex').read_bytes() if i.filename=='classes2.dex' else old.read(i.filename))
bt=sdk/'build-tools/36.0.0';subprocess.run([str(bt/'zipalign'),'-f','4',str(r/'unsigned.apk'),str(r/'aligned.apk')],check=True);subprocess.run([str(bt/'apksigner'),'sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',str(r/'Settings.no-aod-wallpaper.apk'),str(r/'aligned.apk')],check=True);subprocess.run([str(bt/'apksigner'),'verify',str(r/'Settings.no-aod-wallpaper.apk')],check=True)
with zipfile.ZipFile(r/'Settings.active.apk') as a,zipfile.ZipFile(r/'Settings.no-aod-wallpaper.apk') as b:
 changes=[n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=b.read(n)];assert changes==['classes2.dex'],changes
(r/'verification.json').write_text(json.dumps({'changed_entries':changes,'sha256':hashlib.sha256((r/'Settings.no-aod-wallpaper.apk').read_bytes()).hexdigest(),'baseline':'active Settings includes navbar and hidden30Hz fixes','removed':'AOD wallpaper preference category availability','platform_signed':True},indent=2)+'\n')
