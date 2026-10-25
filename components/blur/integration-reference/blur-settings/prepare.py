from common import *
import re
# Launcher: precise provider method guarded by caller UID, preserving existing calls.
b=java(list((P/'launcher-src').rglob('*.java')),'launcher-helper');(P/'launcher-helper.dex').write_bytes(b)
f=P/'launcher-classes/com/android/launcher3/LauncherProvider.smali';s=f.read_text();needle='.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;\n    .registers 7\n';assert needle in s
s=s.replace(needle,needle+'''    const-string v0, "LUNATIK_BLUR_PARAMS"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :lunatik_original_call
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static {v0}, Lcom/android/launcher3/LunatikBlurExport;->read(Landroid/content/Context;)Landroid/os/Bundle;
    move-result-object v0
    return-object v0
    :lunatik_original_call
''');f.write_text(s)
# SystemUI: use accepted AOD APK as base; replace previous experimental static values.
shutil.copytree(Path('work/control-center-launcher-blur-test/smali_classes2'),P/'sysui-classes2',dirs_exist_ok=True)
f=P/'sysui-classes2/com/android/systemui/statusbar/BlurUtils.smali';s=f.read_text();start=s.index('    sget-boolean v1, Lcom/android/systemui/statusbar/BlurUtils;->launcherShadeStyle:Z');end=s.index('    invoke-virtual {v0, p2}',start)
s=s[:start]+'''    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->radius(Ljava/lang/Object;Ljava/lang/Object;IZF)I
    move-result p2
    const/high16 p4, 0x3f800000
'''+s[end:];f.write_text(s)
f=P/'sysui-classes2/com/android/systemui/statusbar/phone/ScrimController.smali';s=f.read_text();start=s.index('    :cond_23\n',s.index('.method public final updateScrimColor'));end=s.index('    const/high16 v0, 0x3f800000',start)
s=s[:start]+'''    :cond_23
    invoke-static {p0}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->scrim(Ljava/lang/Object;)V
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;
    if-eq v0, v1, :lunatik_blur_scrim
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;
    if-eq v0, v1, :lunatik_blur_scrim
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;
    if-ne v0, v1, :lunatik_scrim_done
    :lunatik_blur_scrim
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isBlurCurrentlySupported()Z
    move-result v0
    if-eqz v0, :lunatik_scrim_done
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;
    if-ne p3, v0, :lunatik_other_scrim
    const/high16 p1, -0x1000000
    invoke-static {p2}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->darkness(F)F
    move-result p2
    goto :lunatik_scrim_done
    :lunatik_other_scrim
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;
    if-ne p3, v0, :lunatik_scrim_done
    const/4 p2, 0x0
    :lunatik_scrim_done
'''+s[end:];f.write_text(s)
b=java(list((P/'sysui-src').rglob('*.java')),'sysui-helper');(P/'sysui-helper.dex').write_bytes(b)
