.class Lcom/android/server/policy/PocketWakeGate$1;
.super Landroid/database/ContentObserver;
.source "PocketWakeGate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PocketWakeGate;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    .line 5
    iput-object p2, p0, Lcom/android/server/policy/PocketWakeGate$1;->val$c:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8

    .line 5
    const-string p1, "PocketWakeGate"

    iget-object v0, p0, Lcom/android/server/policy/PocketWakeGate$1;->val$c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lunatik_aod_pocket_block"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    sget-boolean v3, Lcom/android/server/policy/PocketWakeGate;->near:Z

    if-eqz v3, :cond_1d

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    sput-boolean v0, Lcom/android/server/policy/PocketWakeGate;->near:Z

    if-eqz v0, :cond_59

    :try_start_22
    const-string v0, "/sys/class/touch/touch_dev/fod_longpress_gesture_enabled"

    const-string v3, "1"

    const-string v4, "0"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    :goto_2c
    const/4 v4, 0x2

    if-ge v2, v4, :cond_4d

    aget-object v4, v3, v2

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_53

    :try_start_36
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_43

    :try_start_3d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_53

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v2

    :try_start_49
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw v0

    :cond_4d
    const-string v0, "FOD gesture disabled in pocket"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_59

    :catch_53
    move-exception v0

    const-string v2, "Disable FOD"

    invoke-static {p1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_59
    :goto_59
    if-eqz v1, :cond_60

    iget-object p1, p0, Lcom/android/server/policy/PocketWakeGate$1;->val$c:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/policy/PocketWakeGate;->boost(Landroid/content/Context;)V

    :cond_60
    return-void
.end method
