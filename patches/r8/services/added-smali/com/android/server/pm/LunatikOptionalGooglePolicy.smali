.class public final Lcom/android/server/pm/LunatikOptionalGooglePolicy;
.super Ljava/lang/Object;


# direct methods
.method public static enforceConsentCaller(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalDetails:Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/android/server/pm/LunatikOptionalGooglePolicy;->sessionRequiresConsent(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_38

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_38

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-eq v0, v1, :cond_38

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Optional Google component requires confirmation from the system package installer"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    return-void
.end method

.method public static isTarget(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "persist.sys.google_optional_optin"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "com.google.android.safetycore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "com.google.android.contactkeys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "com.google.ar.core"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x0

    return v0

    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method public static requiresConsent(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    .registers 5

    invoke-static {p1}, Lcom/android/server/pm/LunatikOptionalGooglePolicy;->isTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x0

    return v0

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public static sessionRequiresConsent(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)Z
    .registers 5

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-eqz v0, :cond_11

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/LunatikOptionalGooglePolicy;->requiresConsent(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method
