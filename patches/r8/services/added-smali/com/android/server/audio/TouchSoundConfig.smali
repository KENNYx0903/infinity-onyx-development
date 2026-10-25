.class public final Lcom/android/server/audio/TouchSoundConfig;
.super Ljava/lang/Object;
.source "TouchSoundConfig.java"


# static fields
.field static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 5
    sput-object p0, Lcom/android/server/audio/TouchSoundConfig;->context:Landroid/content/Context;

    return-void
.end method

.method public static path(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 6
    const-string v0, "TouchSoundConfig"

    sget-object v1, Lcom/android/server/audio/TouchSoundConfig;->context:Landroid/content/Context;

    if-eqz v1, :cond_5d

    const-string v1, "/Effect_Tick.ogg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_5d

    :cond_f
    :try_start_f
    sget-object v1, Lcom/android/server/audio/TouchSoundConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lunatik_touch_sound"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    const-string v2, "/product/media/audio/ui/Effect_Tick_Xiaomi.ogg"

    goto :goto_2a

    :cond_23
    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    const-string v2, "/product/media/audio/ui/Effect_Tick_AOSP.ogg"

    goto :goto_2a

    :cond_29
    move-object v2, p0

    :goto_2a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_36

    return-object p0

    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading touch sound mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " path="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_56} :catch_57

    return-object v2

    :catch_57
    move-exception v1

    const-string v2, "Using default touch sound"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5d
    :goto_5d
    return-object p0
.end method
