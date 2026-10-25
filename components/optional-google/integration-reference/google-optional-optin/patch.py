from pathlib import Path
import re,json,hashlib,shutil
D=Path('work/google-optional-optin');B=D/'smali/com/android/server/pm';H='Lcom/android/server/pm/LunatikOptionalGooglePolicy;'
helper='''.class public final Lcom/android/server/pm/LunatikOptionalGooglePolicy;
.super Ljava/lang/Object;
.method public static isTarget(Ljava/lang/String;)Z
 .registers 3
 const-string v0, "persist.sys.google_optional_optin"
 const/4 v1, 0x1
 invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z
 move-result v0
 if-eqz v0, :no
 const-string v0, "com.google.android.safetycore"
 invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
 move-result v0
 if-nez v0, :yes
 const-string v0, "com.google.android.contactkeys"
 invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
 move-result v0
 if-nez v0, :yes
 const-string v0, "com.google.ar.core"
 invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
 move-result v0
 if-nez v0, :yes
 :no
 const/4 v0, 0x0
 return v0
 :yes
 const/4 v0, 0x1
 return v0
.end method
.method public static requiresConsent(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
 .registers 5
 invoke-static {p1}, Lcom/android/server/pm/LunatikOptionalGooglePolicy;->isTarget(Ljava/lang/String;)Z
 move-result v0
 if-eqz v0, :no
 invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;
 move-result-object v0
 invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
 move-result-object v0
 if-eqz v0, :yes
 invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
 move-result-object v0
 invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z
 move-result v0
 if-eqz v0, :yes
 :no
 const/4 v0, 0x0
 return v0
 :yes
 const/4 v0, 0x1
 return v0
.end method
.method public static sessionRequiresConsent(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)Z
 .registers 5
 iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I
 if-eqz v0, :no
 const/16 v1, 0x7d0
 if-eq v0, v1, :no
 iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;
 iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I
 invoke-static {v0, p1, v1}, Lcom/android/server/pm/LunatikOptionalGooglePolicy;->requiresConsent(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
 move-result v0
 return v0
 :no
 const/4 v0, 0x0
 return v0
.end method
.method public static enforceConsentCaller(Lcom/android/server/pm/PackageInstallerSession;)V
 .registers 7
 iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;
 if-nez v0, :name_ready
 iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;
 if-eqz v0, :done
 invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;
 move-result-object v0
 :name_ready
 invoke-static {p0, v0}, Lcom/android/server/pm/LunatikOptionalGooglePolicy;->sessionRequiresConsent(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)Z
 move-result v0
 if-eqz v0, :done
 invoke-static {}, Landroid/os/Binder;->getCallingUid()I
 move-result v0
 if-eqz v0, :done
 const/16 v1, 0x7d0
 if-eq v0, v1, :done
 invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
 move-result v5
 iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;
 iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;
 invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;
 move-result-object v1
 const-wide/16 v3, 0x0
 invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I
 move-result v1
 if-eq v0, v1, :done
 new-instance v0, Ljava/lang/SecurityException;
 const-string v1, "Optional Google component requires confirmation from the system package installer"
 invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V
 throw v0
 :done
 return-void
.end method
'''
(B/'LunatikOptionalGooglePolicy.smali').write_text(helper)
# The stock decision branch already handles accepted consent before reaching this hook.
p=B/'PackageInstallerSession$$ExternalSyntheticLambda8.smali';s=p.read_text();needle='    .line 79\n    iget-object v4, v2, Lcom/android/server/pm/PackageInstallerSession;->params:';assert s.count(needle)==1
s=s.replace(needle,'''    invoke-static {v2, v0}, Lcom/android/server/pm/LunatikOptionalGooglePolicy;->sessionRequiresConsent(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)Z
    move-result v10
    if-eqz v10, :lunatik_optional_continue
    const/4 v4, 0x1
    goto/16 :goto_1de
    :lunatik_optional_continue

'''+needle,1);p.write_text(s)
p=B/'PackageInstallerSession.smali';s=p.read_text();needle='.method public final setPermissionsResult(Z)V\n    .registers 5';assert s.count(needle)==1
s=s.replace(needle,needle+'''\n    if-eqz p1, :lunatik_consent_done
    invoke-static {p0}, Lcom/android/server/pm/LunatikOptionalGooglePolicy;->enforceConsentCaller(Lcom/android/server/pm/PackageInstallerSession;)V
    :lunatik_consent_done
''',1);p.write_text(s)
# Session-less reactivation cannot silently bypass first-install consent. ADB/root retain recovery access.
p=B/'InstallPackageHelper.smali';s=p.read_text();a=s.index('.method public final installExistingPackageAsUser(');z=s.index('.end method',a);m=s[a:z];needle='    :cond_63\n    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J';assert needle in m
m=m.replace(needle,'''    :cond_63
    if-eqz v8, :lunatik_existing_continue
    const/16 v5, 0x7d0
    if-eq v8, v5, :lunatik_existing_continue
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v5, v3, v2}, Lcom/android/server/pm/LunatikOptionalGooglePolicy;->requiresConsent(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    move-result v5
    if-eqz v5, :lunatik_existing_continue
    const/16 v5, -0x6f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-static {v5, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    move-result-object v5
    return-object v5
    :lunatik_existing_continue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J''',1);s=s[:a]+m+s[z:];p.write_text(s)
(D/'changes.json').write_text(json.dumps(['PackageInstallerSession$$ExternalSyntheticLambda8','PackageInstallerSession','InstallPackageHelper','LunatikOptionalGooglePolicy'],indent=2));print('Patched first-install consent, trusted confirmation caller and install-existing path')
