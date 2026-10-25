from pathlib import Path
import re
r=Path('work/freeform-fix/launcher-res');p=r/'smali/com/android/launcher3/icons/LauncherIconProvider.smali';s=Path('work/launcher-icons-fix/LauncherIconProvider.original.smali.txt').read_text()
s=s.replace('# static fields','.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;\n\n# static fields',1)
needle='    iput-object p2, p0, Lcom/android/launcher3/icons/LauncherIconProvider;->mThemeManager:Lcom/android/launcher3/graphics/ThemeManager;'
s=s.replace(needle,needle+'''
    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object p1
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
''')
# Persisted cache entries must distinguish the two icon sources after process restart too.
# Increase locals in updateSystemState to keep builder and preference separate.
a=s.index('.method public updateSystemState()');b=s.index('.end method',a);part=s[a:b].replace('.locals 2','.locals 3')
needle='    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;'
part=part.replace(needle,'''    const-string v1, ",lawnicons="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->GRAYSCALE_ICON_MAP_LAWN:Lcom/android/launcher3/ConstantItem;
    iget-object v2, p0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/ConstantItem;->get(Landroid/content/Context;)Ljava/lang/Object;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
''' + needle)
s=s[:a]+part+s[b:]
s+='''
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    const-string v0, "pref_grayscale_icon_map_lawn"
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :done
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;
    new-instance v1, Lcom/android/launcher3/icons/LunatikThemedIconRefresh;
    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/LunatikThemedIconRefresh;-><init>(Lcom/android/launcher3/icons/LauncherIconProvider;)V
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :done
    return-void
.end method

.method public refreshThemedIconsNow()V
    .locals 2
    iget-object v0, p0, Lcom/android/launcher3/icons/LauncherIconProvider;->mThemedIconMap:Ljava/util/Map;
    sget-object v1, Lcom/android/launcher3/icons/LauncherIconProvider;->DISABLED_MAP:Ljava/util/Map;
    if-eq v0, v1, :done
    const/4 v0, 0x0
    iput-object v0, p0, Lcom/android/launcher3/icons/LauncherIconProvider;->mThemedIconMap:Ljava/util/Map;
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIconProvider;->updateSystemState()V
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;
    move-result-object v0
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;
    move-result-object v1
    invoke-virtual {v1}, Lcom/android/launcher3/icons/IconCache;->clearDb()V
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;
    move-result-object v0
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V
    const-string v0, "LunatikIcons"
    const-string v1, "Themed icon source refreshed without process restart"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :done
    return-void
.end method
''';p.write_text(s)
(r/'smali/com/android/launcher3/icons/LunatikThemedIconRefresh.smali').write_text('''.class public final Lcom/android/launcher3/icons/LunatikThemedIconRefresh;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final provider:Lcom/android/launcher3/icons/LauncherIconProvider;
.method public constructor <init>(Lcom/android/launcher3/icons/LauncherIconProvider;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/android/launcher3/icons/LunatikThemedIconRefresh;->provider:Lcom/android/launcher3/icons/LauncherIconProvider;
    return-void
.end method
.method public run()V
    .locals 1
    iget-object v0, p0, Lcom/android/launcher3/icons/LunatikThemedIconRefresh;->provider:Lcom/android/launcher3/icons/LauncherIconProvider;
    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIconProvider;->refreshThemedIconsNow()V
    return-void
.end method
''')
for folder in ['values','values-ru','values-ru-rRU']:
 p=r/'res'/folder/'strings.xml';s=p.read_text()
 vals={'pref_grayscale_icon_map_lawn_title':'Значки LawnIcons','pref_grayscale_icon_map_lawn_summary':'Использовать LawnIcons вместо стандартных тематических значков. Изменения применяются сразу.'} if folder!='values' else {'pref_grayscale_icon_map_lawn_summary':'Use LawnIcons instead of stock themed icons. Changes apply immediately.'}
 for name,value in vals.items():
  pattern=r'<string name="'+name+r'">.*?</string>'
  s,n=re.subn(pattern,lambda m:'<string name="'+name+'">'+value+'</string>',s,flags=re.S)
  if not n:s=s.replace('</resources>','    <string name="'+name+'">'+value+'</string>\n</resources>')
 p.write_text(s)

# Keep the same palette as native themed icons for generated masks as well.
# Previous luminance-based palette inversion made solid backgrounds very bright.
p=r/'smali/com/android/launcher3/icons/mono/ColorAdapter.smali'
p.write_text(Path('work/launcher-icons-fix/ColorAdapter.original.smali.txt').read_text())
p=r/'smali/com/android/launcher3/icons/mono/MonoThemedBitmap.smali'
s=Path('work/launcher-icons-fix/MonoThemedBitmap.original.smali.txt').read_text()
a=s.index('.method public final getUpdatedColors(');b=s.index('.end method',a)
s=s[:a]+'''.method public final getUpdatedColors(Landroid/content/Context;)[I
    .locals 1
    iget-object v0, p0, Lcom/android/launcher3/icons/mono/MonoThemedBitmap;->colorProvider:Lkotlin/jvm/functions/Function1;
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [I
    return-object v0
'''+s[b:];p.write_text(s)
p=r/'smali/com/android/launcher3/icons/LauncherIconProvider.smali'
s=p.read_text().replace('generated-contrast-v1','generated-palette-v2');p.write_text(s)

# Fill legacy bitmap plates automatically; leave transparent glyphs/native adaptive icons alone.
plate_root = Path('work/launcher-icons-fix')
plate_tree = Path('work/freeform-fix/launcher-res/smali/com/android/launcher3/icons')
base = (plate_root / 'BaseIconFactory.original.smali.txt').read_text()
start = base.index('.method public final wrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)')
base = base[:start] + base[start:].replace('    :cond_0\n    const/4 v0, 0x0', '    :cond_0\n    invoke-static {p1}, Lcom/android/launcher3/icons/LunatikLegacyPlate;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable;\n\n    move-result-object v0', 1)
(plate_tree / 'BaseIconFactory.smali').write_text(base)
(plate_tree / 'LunatikLegacyPlate.smali').write_text((plate_root / 'plate-decoded/smali/com/android/launcher3/icons/LunatikLegacyPlate.smali').read_text())
provider = plate_tree / 'LauncherIconProvider.smali'
provider.write_text(provider.read_text().replace(',generated-palette-v2"', ',generated-palette-v2-plate-v2"'))
