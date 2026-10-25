.class public final Lcom/android/systemui/statusbar/LunatikBlurConfig;
.super Ljava/lang/Object;
.source "LunatikBlurConfig.java"


# static fields
.field static context:Landroid/content/Context;

.field static dark:I

.field static final logicalAlpha:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static mode:I

.field static opaque:Z

.field static radius:I

.field static rawRadius:I

.field static root:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static scale:F

.field static scrim:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static started:Z

.field static utils:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->logicalAlpha:Ljava/util/WeakHashMap;

    .line 7
    const/16 v0, 0x3c

    sput v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->radius:I

    const/16 v0, 0x2b

    sput v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->dark:I

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->mode:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->utils:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->root:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->scrim:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animationStartAlpha(Ljava/lang/Object;F)F
    .registers 3

    .line 6
    sget-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->logicalAlpha:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_f
    return p1
.end method

.method public static customEnabled()Z
    .registers 2

    .line 14
    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->init()V

    sget v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->mode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static darkness(F)F
    .registers 3

    .line 15
    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->init()V

    sget v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    return p0

    :cond_9
    sget v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->dark:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr p0, v0

    const v0, 0x3f39b9ba

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static effectRadius(F)F
    .registers 3

    .line 11
    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->init()V

    sget v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_10

    :cond_9
    sget v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->radius:I

    int-to-float v0, v0

    const/high16 v1, 0x42a40000    # 82.0f

    div-float/2addr v0, v1

    mul-float/2addr p0, v0

    :goto_10
    return p0
.end method

.method static declared-synchronized init()V
    .registers 5

    const-class v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;

    monitor-enter v0

    .line 8
    :try_start_3
    sget-boolean v1, Lcom/android/systemui/statusbar/LunatikBlurConfig;->started:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_a7

    if-eqz v1, :cond_9

    :goto_7
    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sput-object v1, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    if-nez v1, :cond_28

    goto :goto_7

    :cond_28
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/statusbar/LunatikBlurConfig;->started:Z

    sget-object v2, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "disable_window_blurs"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_44

    sget-object v2, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "disable_window_blurs"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_44
    sget-object v2, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "single_qs_tone_enabled"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5d

    sget-object v2, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "single_qs_tone_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5d
    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->read()V

    new-instance v1, Lcom/android/systemui/statusbar/LunatikBlurConfig$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/LunatikBlurConfig$1;-><init>(Landroid/os/Handler;)V

    sget-object v2, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lunatik_blur_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lunatik_blur_radius"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lunatik_blur_darkness"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9b} :catch_9d
    .catchall {:try_start_9 .. :try_end_9b} :catchall_a7

    goto/16 :goto_7

    :catch_9d
    move-exception v1

    :try_start_9e
    const-string v2, "LunatikBlur"

    const-string v3, "init"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 8
    :catchall_a7
    move-exception v1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_9e .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method public static radius(Ljava/lang/Object;Ljava/lang/Object;IZF)I
    .registers 6

    .line 10
    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->init()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->utils:Ljava/lang/ref/WeakReference;

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->root:Ljava/lang/ref/WeakReference;

    sput p2, Lcom/android/systemui/statusbar/LunatikBlurConfig;->rawRadius:I

    sput-boolean p3, Lcom/android/systemui/statusbar/LunatikBlurConfig;->opaque:Z

    sput p4, Lcom/android/systemui/statusbar/LunatikBlurConfig;->scale:F

    sget p0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->mode:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1d

    goto :goto_29

    :cond_1d
    int-to-float p0, p2

    sget p1, Lcom/android/systemui/statusbar/LunatikBlurConfig;->radius:I

    int-to-float p1, p1

    const/high16 p2, 0x42a40000    # 82.0f

    div-float/2addr p1, p2

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p2

    :goto_29
    return p2
.end method

.method static read()V
    .registers 5

    .line 9
    sget-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lunatik_notification_glass"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    const/4 v1, 0x2

    :goto_19
    const-string v4, "lunatik_blur_mode"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->mode:I

    sget-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lunatik_blur_radius"

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x96

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->radius:I

    sget-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lunatik_blur_darkness"

    const/16 v3, 0x2b

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->dark:I

    return-void
.end method

.method static refresh()V
    .registers 8

    .line 16
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->scrim:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateScrims"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->utils:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/LunatikBlurConfig;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/LunatikBlurConfig;->context:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    if-eqz v0, :cond_76

    if-eqz v1, :cond_76

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "applyBlur"

    const-string v4, "android.view.ViewRootImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/LunatikBlurConfig;->rawRadius:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/statusbar/LunatikBlurConfig;->opaque:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/LunatikBlurConfig;->scale:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_76

    :catch_6e
    move-exception v0

    const-string v1, "LunatikBlur"

    const-string v2, "refresh"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_76
    :goto_76
    return-void
.end method

.method public static rememberAlpha(Ljava/lang/Object;F)V
    .registers 3

    .line 5
    sget-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->logicalAlpha:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static scrim(Ljava/lang/Object;)V
    .registers 2

    .line 12
    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->init()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/statusbar/LunatikBlurConfig;->scrim:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static surfaceTint(Ljava/lang/Object;)I
    .registers 2

    .line 13
    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->init()V

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-eqz p0, :cond_21

    const/high16 p0, -0x1000000

    goto :goto_22

    :cond_21
    const/4 p0, -0x1

    :goto_22
    return p0
.end method
