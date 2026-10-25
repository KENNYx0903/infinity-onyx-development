.class Lcom/android/systemui/keyguard/OnyxLockHaptic$1;
.super Landroid/content/BroadcastReceiver;
.source "OnyxLockHaptic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/OnyxLockHaptic;->play(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/OnyxLockHaptic$1;->getResultCode()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    invoke-static {p1}, Lcom/android/systemui/keyguard/OnyxLockHaptic;->fallback(Landroid/content/Context;)V

    :cond_a
    return-void
.end method
