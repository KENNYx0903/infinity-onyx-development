.class public final Lcom/android/systemui/doze/PocketFingerprintGate;
.super Ljava/lang/Object;
.source "PocketFingerprintGate.java"


# static fields
.field private static volatile blocked:Z

.field private static controller:Ljava/lang/Object;

.field private static desired:Z

.field private static generation:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capture(Ljava/lang/Object;)V
    .registers 1

    .line 5
    sput-object p0, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    return-void
.end method

.method static clearTouch()V
    .registers 7

    .line 6
    const-string v0, "PocketFingerprintGate"

    sget-object v1, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    sget-object v1, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "tryAodSendFingerUp"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "cancelAodSendFingerUpAction"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mAodInterruptRunnable"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move v2, v3

    :goto_3a
    const/4 v4, 0x1

    if-ge v2, v4, :cond_52

    aget-object v4, v1, v2

    sget-object v5, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_52
    sget-object v1, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mOnFingerDown"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    sget-object v1, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mActivePointerId"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/doze/PocketFingerprintGate;->controller:Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    const-string v1, "Cleared suppressed AOD touch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7a} :catch_7b

    goto :goto_81

    :catch_7b
    move-exception v1

    const-string v2, "Touch cleanup"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_81
    return-void
.end method

.method public static isBlocked()Z
    .registers 1

    .line 8
    sget-boolean v0, Lcom/android/systemui/doze/PocketFingerprintGate;->blocked:Z

    return v0
.end method

.method static synthetic lambda$setBlocked$0(IZ)V
    .registers 3

    .line 11
    sget v0, Lcom/android/systemui/doze/PocketFingerprintGate;->generation:I

    if-eq p0, v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_a

    invoke-static {}, Lcom/android/systemui/doze/PocketFingerprintGate;->clearTouch()V

    :cond_a
    sput-boolean p1, Lcom/android/systemui/doze/PocketFingerprintGate;->blocked:Z

    invoke-static {p1}, Lcom/android/systemui/doze/PocketFingerprintGate;->publish(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pocketBlocked="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " native session unchanged"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PocketFingerprintGate"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static publish(Z)V
    .registers 5

    .line 10
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lunatik_aod_pocket_block"

    if-eqz p0, :cond_21

    const/4 v2, 0x1

    :cond_21
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception p0

    const-string v0, "PocketFingerprintGate"

    const-string v1, "Publish failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    return-void
.end method

.method public static setBlocked(Z)V
    .registers 6

    .line 11
    sget-boolean v0, Lcom/android/systemui/doze/PocketFingerprintGate;->desired:Z

    if-ne v0, p0, :cond_5

    return-void

    :cond_5
    sput-boolean p0, Lcom/android/systemui/doze/PocketFingerprintGate;->desired:Z

    sget v0, Lcom/android/systemui/doze/PocketFingerprintGate;->generation:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/doze/PocketFingerprintGate;->generation:I

    if-eqz p0, :cond_14

    sput-boolean v1, Lcom/android/systemui/doze/PocketFingerprintGate;->blocked:Z

    invoke-static {v1}, Lcom/android/systemui/doze/PocketFingerprintGate;->publish(Z)V

    :cond_14
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/doze/PocketFingerprintGate$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/doze/PocketFingerprintGate$$ExternalSyntheticLambda0;-><init>(IZ)V

    if-eqz p0, :cond_27

    const-wide/16 v3, 0x0

    goto :goto_29

    :cond_27
    const-wide/16 v3, 0x320

    :goto_29
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static shouldBlock(Ljava/lang/Object;)Z
    .registers 1

    .line 9
    const/4 p0, 0x0

    return p0
.end method
