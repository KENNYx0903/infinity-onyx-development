from pathlib import Path
import subprocess, os
base=Path('work/gamespace-redesign')
sdk=Path('${ANDROID_TOOLS_ROOT}/sdk')
jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1')
stdlib=next((sdk/'cmdline-tools/latest/lib/external/org/jetbrains/kotlin/kotlin-stdlib').rglob('*.jar'))
subprocess.run([str(jdk/'bin/javac'), '-source','8','-target','8','-cp',f'{sdk}/platforms/android-36/android.jar:{stdlib}', '-d',str(base/'battery-classes'),str(base/'battery-src/LunatikBatteryView.java')],check=True)
env=os.environ.copy();env['JAVA_HOME']=str(jdk)
subprocess.run([str(sdk/'build-tools/36.0.0/d8'),'--lib',str(sdk/'platforms/android-36/android.jar'),'--classpath',str(stdlib),'--min-api','35','--output',str(base/'battery-dex'), *map(str,(base/'battery-classes').rglob('*.class'))],env=env,check=True)
cp=':'.join(map(str,(sdk/'cmdline-tools/latest/lib').rglob('*.jar')))
subprocess.run([str(jdk/'bin/java'),'-cp',cp,'com.android.tools.smali.baksmali.Main','d',str(base/'battery-dex/classes.dex'),'-o',str(base/'battery-smali')],check=True)
import shutil
for p in (base/'battery-smali').rglob('*.smali'):
    target=base/'decoded/smali_classes2'/p.relative_to(base/'battery-smali');shutil.copy2(p,target)
