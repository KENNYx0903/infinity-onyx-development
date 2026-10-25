.class public final Lcom/android/wm/shell/windowdecor/LunatikFreeform;
.super Ljava/lang/Object;
.source "LunatikFreeform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LunatikFreeform"

.field private static final densityRequests:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final densityTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final drags:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final live:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final resizeFrames:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private static final restoring:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->restoring:Ljava/util/WeakHashMap;

    .line 17
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->live:Ljava/util/WeakHashMap;

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->densityRequests:Ljava/util/WeakHashMap;

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->drags:Ljava/util/WeakHashMap;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->densityTasks:Ljava/util/HashSet;

    .line 162
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->resizeFrames:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    nop

    .line 48
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "getLeash"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 49
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 50
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_8c

    .line 51
    :try_start_1c
    const-string v0, "mVisualScale"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v0

    .line 52
    const-string v3, "setMatrix"

    const-class v4, Landroid/view/SurfaceControl;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v1, v5, v7, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "mVisualPosX"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v0

    const-string v3, "mVisualPosY"

    invoke-static {p0, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 54
    const-string v0, "setBoundsChangeTransaction"

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "token"

    invoke-static {v1, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-class v3, Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1, v0, v1, v3, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->change(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_1c .. :try_end_6a} :catchall_6c

    move-object v0, v2

    goto :goto_6f

    .line 57
    :catchall_6c
    move-exception p0

    move-object v0, v2

    goto :goto_8d

    .line 56
    :cond_6f
    :goto_6f
    :try_start_6f
    const-string v1, "mTaskOrganizer"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "applyTransaction"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_8c

    .line 57
    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 58
    :cond_8b
    return-void

    .line 57
    :catchall_8c
    move-exception p0

    :goto_8d
    if-eqz v0, :cond_92

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_92
    throw p0
.end method

.method public static beginRestore(Ljava/lang/Object;I)V
    .registers 6

    .line 92
    const-string v0, "get"

    :try_start_2
    const-string v1, "mWindowDecorByTaskId"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    const-string v2, "mTransformByTaskId"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, v2, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 94
    if-eqz v1, :cond_5b

    if-eqz p0, :cond_5b

    const-string p1, "mBubble"

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 95
    const-string p1, "captionWindowDecoration"

    invoke-static {v1, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 96
    if-eqz p1, :cond_5b

    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->restoring:Ljava/util/WeakHashMap;

    const-string v1, "mRestoreScale"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5b} :catch_5c

    .line 98
    :cond_5b
    goto :goto_64

    :catch_5c
    move-exception p0

    const-string p1, "LunatikFreeform"

    const-string v0, "begin restore"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_64
    return-void
.end method

.method public static bounds(Ljava/lang/Object;)Landroid/graphics/Rect;
    .registers 6

    .line 245
    :try_start_0
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->live:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 246
    const-string v1, "mScale"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v1

    .line 247
    const-string v2, "mPosX"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const-string v3, "mPosY"

    invoke-static {p0, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 248
    if-nez v0, :cond_2b

    const-string v4, "mLogicalW"

    invoke-static {p0, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    goto :goto_2f

    :cond_2b
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 249
    :goto_2f
    if-nez v0, :cond_38

    const-string v0, "mLogicalH"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    goto :goto_3c

    :cond_38
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 250
    :goto_3c
    new-instance v0, Landroid/graphics/Rect;

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float p0, p0

    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v3

    invoke-direct {v0, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    return-object v0

    .line 251
    :catch_50
    move-exception p0

    const-string v0, "LunatikFreeform"

    const-string v1, "bounds"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static change(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    const-string v0, "android.window.WindowContainerToken"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0, p3}, [Ljava/lang/Class;

    move-result-object p3

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public static chrome(Ljava/lang/Object;II)I
    .registers 6

    .line 255
    packed-switch p1, :pswitch_data_48

    .line 262
    :pswitch_3
    return p2

    .line 256
    :pswitch_4
    const/16 p1, 0x1a

    goto :goto_14

    .line 258
    :pswitch_7
    const/16 p1, 0x40

    goto :goto_14

    .line 259
    :pswitch_a
    const/16 p1, 0x10

    goto :goto_14

    .line 260
    :pswitch_d
    const/16 p1, 0x30

    goto :goto_14

    .line 261
    :pswitch_10
    const/4 p1, 0x4

    goto :goto_14

    .line 257
    :pswitch_12
    const/16 p1, 0x14

    .line 265
    :goto_14
    :try_start_14
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->layout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->restoring:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 267
    const-string v2, "mDensityDpi"

    invoke-static {v0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_38

    :cond_32
    const-string v0, "mVisualScale"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result p0

    :goto_38
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_44} :catch_45

    return p0

    .line 268
    :catch_45
    move-exception p0

    return p2

    nop

    :pswitch_data_48
    .packed-switch 0x7f0703ae
        :pswitch_12
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static clearDensity(Ljava/lang/Object;I)V
    .registers 6

    .line 149
    :try_start_0
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->densityTasks:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 150
    :cond_d
    const-string v0, "mTaskOrganizer"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 151
    const-string v0, "getRunningTaskInfo"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 152
    if-nez p1, :cond_2a

    return-void

    .line 153
    :cond_2a
    invoke-static {}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->tx()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setDensityDpi"

    const-string v2, "token"

    invoke-static {p1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->change(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 154
    const-string p1, "applyTransaction"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    .line 155
    goto :goto_5a

    :catch_52
    move-exception p0

    const-string p1, "LunatikFreeform"

    const-string v0, "clearDensity"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    :goto_5a
    return-void
.end method

.method private static commitVisual(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    const-string v0, "mStartScale"

    invoke-static {p1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v0

    .line 168
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "mVisualPosX"

    invoke-static {p0, v2, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "mVisualPosY"

    invoke-static {p0, v2, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    const-string v1, "mVisualScale"

    invoke-static {p0, v1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 169
    const-string v1, "mTransformCommitListener"

    invoke-static {p1, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 170
    if-eqz p1, :cond_64

    const-string v1, "f$0"

    invoke-static {p1, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "mTransformByTaskId"

    invoke-static {p1, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "taskId"

    invoke-static {v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get"

    invoke-static {p1, v3, v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 171
    if-eqz p1, :cond_64

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "mX"

    invoke-static {p1, v2, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "mY"

    invoke-static {p1, v2, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    const-string v1, "mScale"

    invoke-static {p1, v1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 172
    :cond_64
    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/Class;

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "getLeash"

    invoke-static {p0, v3, v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 173
    if-eqz v1, :cond_c8

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 174
    const-class v2, Landroid/view/SurfaceControl;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v1, v3, v5, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "setMatrix"

    invoke-static {p3, v3, v2, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p3, v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 176
    const-class v0, Landroid/view/SurfaceControl;

    const-class v2, Landroid/graphics/Rect;

    filled-new-array {v0, v2}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, p1, p1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "setWindowCrop"

    invoke-static {p3, v1, v0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_c8
    invoke-static {p0, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->geometry(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 179
    return-void
.end method

.method public static density(Ljava/lang/Object;)V
    .registers 13

    .line 113
    const-string v0, "LunatikFreeform"

    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->restoring:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 115
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    const-string v2, "getWindowingMode"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_172

    const-string v2, "mIsBubbleMode"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_33

    goto/16 :goto_172

    .line 117
    :cond_33
    const-string v2, "mVisualScale"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v2

    .line 118
    const/high16 v4, 0x3e800000    # 0.25f

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_171

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_47

    goto/16 :goto_171

    .line 119
    :cond_47
    const-string v4, "mDragPositioningCallback"

    invoke-static {p0, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4d} :catch_173

    .line 120
    const-string v5, "taskId"

    if-eqz v4, :cond_af

    .line 121
    :try_start_51
    const-string v6, "mIsResizingOrAnimatingResize"

    invoke-static {v4, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_60

    return-void

    .line 122
    :cond_60
    const-string v6, "mTransformCommitListener"

    invoke-static {v4, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 123
    if-eqz v4, :cond_af

    .line 124
    const-string v6, "f$0"

    invoke-static {v4, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 125
    const-string v6, "mTransformByTaskId"

    invoke-static {v4, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "get"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-static {v1, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 126
    if-eqz v4, :cond_af

    const-string v6, "mBubble"

    invoke-static {v4, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_ae

    const-string v6, "mScale"

    invoke-static {v4, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x3ca3d70a    # 0.02f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_af

    :cond_ae
    return-void

    .line 129
    :cond_af
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->layout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b6

    return-void

    .line 130
    :cond_b6
    const-string v6, "configuration"

    invoke-static {v1, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    .line 131
    const-string v7, "windowConfiguration"

    invoke-static {v6, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "getBounds"

    new-array v9, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 133
    const-string v3, "mDensityDpi"

    invoke-static {v4, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->densityFactor(Ljava/lang/Object;)F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 134
    sget-object v4, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->densityTasks:Ljava/util/HashSet;

    invoke-static {v1, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x2

    if-gt v4, v6, :cond_f9

    return-void

    .line 136
    :cond_f9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 137
    sget-object v4, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->densityRequests:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 138
    if-eqz v4, :cond_114

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    cmp-long v4, v8, v10

    if-gez v4, :cond_114

    return-void

    .line 139
    :cond_114
    sget-object v4, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->densityRequests:Ljava/util/WeakHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v4, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->densityTasks:Ljava/util/HashSet;

    invoke-static {v1, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-static {}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->tx()Ljava/lang/Object;

    move-result-object v4

    .line 142
    const-string v6, "setDensityDpi"

    const-string v7, "token"

    invoke-static {v1, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v6, v7, v8, v9}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->change(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 143
    invoke-static {p0, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " density="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " scale="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_170} :catch_173

    .line 145
    goto :goto_179

    .line 118
    :cond_171
    :goto_171
    return-void

    .line 116
    :cond_172
    :goto_172
    return-void

    .line 145
    :catch_173
    move-exception p0

    const-string v1, "density"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_179
    return-void
.end method

.method static f(Ljava/lang/Object;Ljava/lang/String;)F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_15

    .line 23
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 24
    :catch_f
    move-exception v0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_4

    .line 26
    :cond_15
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static finish(Ljava/lang/Object;)V
    .registers 5

    .line 209
    :try_start_0
    const-string v0, "mWindowDecoration"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "captionWindowDecoration"

    invoke-static {v0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->resizeFrames:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;

    .line 211
    if-eqz v1, :cond_25

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->inFlight:Z

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->pending:Landroid/graphics/Rect;

    if-eqz v2, :cond_25

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->ended:Z

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->sendResize(Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;)V

    return-void

    .line 212
    :cond_25
    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->resizeFrames:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->endResize(Ljava/lang/Object;)V

    .line 214
    const-string p0, "mHandler"

    invoke-static {v0, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    new-instance v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 215
    goto :goto_48

    :catch_40
    move-exception p0

    const-string v0, "LunatikFreeform"

    const-string v1, "finish"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :goto_48
    return-void
.end method

.method static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static i(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static initial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 26

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "token"

    const-string v4, "setBounds"

    const-string v5, "mY"

    const-string v6, "mX"

    const-string v7, "mDensityDpi"

    const-string v8, "mScale"

    const-string v9, "LunatikFreeform"

    const-string v10, "taskId"

    :try_start_16
    const-string v11, "mBubble"

    invoke-static {v2, v11}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_25

    return-void

    .line 62
    :cond_25
    const-string v11, "mDisplayController"

    invoke-static {v0, v11}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "getDisplayLayout"

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v13

    const-string v14, "displayId"

    invoke-static {v1, v14}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 63
    if-nez v11, :cond_48

    return-void

    .line 64
    :cond_48
    const-string v12, "configuration"

    invoke-static {v1, v12}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Configuration;

    .line 65
    const-string v13, "windowConfiguration"

    invoke-static {v12, v13}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "getBounds"
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_58} :catch_1b6

    const/4 v15, 0x0

    move-object/from16 v16, v9

    :try_start_5b
    new-array v9, v15, [Ljava/lang/Class;

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v9, v15}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 66
    invoke-static {v2, v8}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const v15, 0x3dcccccd    # 0.1f

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 67
    invoke-static {v11, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v15

    int-to-float v15, v15

    const/high16 v17, 0x43200000    # 160.0f

    div-float v15, v15, v17

    .line 68
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v14

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v14

    .line 71
    const/high16 v14, 0x43700000    # 240.0f

    mul-float/2addr v14, v15

    const/high16 v17, 0x43820000    # 260.0f

    mul-float v17, v17, v15

    .line 72
    invoke-static {v2, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v19

    sub-float v18, v18, v14

    const/high16 v20, 0x40000000    # 2.0f

    div-float v18, v18, v20

    move/from16 v21, v9

    add-float v9, v19, v18

    invoke-static {v2, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v18

    sub-float v19, v21, v17

    div-float v19, v19, v20

    move/from16 v20, v14

    add-float v14, v18, v19

    .line 73
    move/from16 v18, v15

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v19, v12

    const-string v12, "getStableBounds"

    const-class v21, Landroid/graphics/Rect;

    move-object/from16 v22, v13

    filled-new-array/range {v21 .. v21}, [Ljava/lang/Class;

    move-result-object v13

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v12, v13, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/high16 v0, 0x41000000    # 8.0f

    mul-float v0, v0, v18

    const-string v12, "mWidth"

    invoke-static {v11, v12}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v12, v20

    sub-float/2addr v12, v0

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 75
    iget v9, v15, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget v12, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    sub-float v12, v12, v17

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 76
    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->initialScale(Ljava/lang/Object;)F

    move-result v12

    invoke-static {v2, v8, v12}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    invoke-static {v2, v6, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    invoke-static {v2, v5, v9}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 77
    const-string v5, "mRestoreScale"

    invoke-static {v2, v5, v12}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    const-string v5, "mRestoreX"

    invoke-static {v2, v5, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    const-string v5, "mRestoreY"

    invoke-static {v2, v5, v9}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 78
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 79
    new-instance v5, Landroid/graphics/Rect;

    div-float v14, v20, v12

    float-to-double v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    add-int/2addr v6, v0

    div-float v8, v17, v12

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    add-int/2addr v8, v2

    invoke-direct {v5, v0, v2, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    invoke-static {}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->tx()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-class v6, Landroid/graphics/Rect;

    invoke-static {v0, v4, v2, v6, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->change(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 81
    invoke-static {v11, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->densityFactor(Ljava/lang/Object;)F

    move-result v6

    mul-float/2addr v2, v6

    div-float/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 82
    const-string v6, "setDensityDpi"

    invoke-static {v1, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v6, v3, v7, v8}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->change(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 83
    sget-object v3, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->densityTasks:Ljava/util/HashSet;

    invoke-static {v1, v10}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {v1, v10}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v6, p0

    invoke-static {v6, v0, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->queueInitial(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 86
    const-class v0, Landroid/graphics/Rect;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v6, v22

    invoke-static {v6, v4, v0, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v10}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_1aa} :catch_1b2

    move-object/from16 v1, v16

    :try_start_1ac
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1af} :catch_1b0

    .line 88
    goto :goto_1bd

    :catch_1b0
    move-exception v0

    goto :goto_1b8

    :catch_1b2
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1b8

    :catch_1b6
    move-exception v0

    move-object v1, v9

    :goto_1b8
    const-string v2, "initial bounds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_1bd
    return-void
.end method

.method static synthetic lambda$finish$2(Ljava/lang/Object;)V
    .registers 1

    .line 214
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->density(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$sendResize$0(Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;Ljava/lang/Object;)V
    .registers 7

    .line 194
    const-string v0, "LunatikFreeform"

    :try_start_2
    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->resizeFrames:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_b

    return-void

    :cond_b
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->sendResize(Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;)V

    .line 195
    iget-boolean v1, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->ended:Z

    if-eqz v1, :cond_49

    iget-boolean v1, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->inFlight:Z

    if-nez v1, :cond_49

    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->pending:Landroid/graphics/Rect;

    if-nez v1, :cond_49

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resize synchronized frames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->drawn:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " submitted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->submitted:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->resizeFrames:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->endResize(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->density(Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_4a

    .line 199
    :cond_49
    goto :goto_50

    :catch_4a
    move-exception p0

    const-string p1, "next resize"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :goto_50
    return-void
.end method

.method static synthetic lambda$sendResize$1(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 189
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p4

    const-string p5, "runWithTransaction"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_36

    .line 190
    const/4 p4, 0x0

    :try_start_d
    aget-object p5, p6, p4

    check-cast p5, Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0, p1, p2, p5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->commitVisual(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-wide p5, p3, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->drawn:J

    const-wide/16 v0, 0x1

    add-long/2addr p5, v0

    iput-wide p5, p3, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->drawn:J
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1c

    .line 191
    goto :goto_24

    :catch_1c
    move-exception p2

    const-string p5, "LunatikFreeform"

    const-string p6, "resize frame"

    invoke-static {p5, p6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :goto_24
    iput-boolean p4, p3, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->inFlight:Z

    .line 193
    const-string p2, "mHandler"

    invoke-static {p0, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    new-instance p4, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda2;

    invoke-direct {p4, p1, p3, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;Ljava/lang/Object;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method static layout(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    const-string v0, "mDisplayController"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "displayId"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getDisplayLayout"

    invoke-static {v0, v2, v1, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static resize(Ljava/lang/Object;Landroid/graphics/PointF;)V
    .registers 14

    .line 219
    :try_start_0
    const-string v0, "mWindowDecoration"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "captionWindowDecoration"

    invoke-static {v0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->layout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    return-void

    .line 221
    :cond_13
    const-string v2, "mCtrlType"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 222
    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->resize(Ljava/lang/Object;)V

    .line 223
    const-string v0, "mStartScale"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v0

    .line 224
    const-string v3, "mLogicalW"

    invoke-static {p0, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const-string v4, "mLogicalH"

    invoke-static {p0, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    .line 225
    and-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_3b

    iget v7, p1, Landroid/graphics/PointF;->x:F

    neg-float v7, v7

    goto :goto_43

    :cond_3b
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_42

    iget v7, p1, Landroid/graphics/PointF;->x:F

    goto :goto_43

    :cond_42
    move v7, v6

    :goto_43
    add-float/2addr v7, v3

    .line 226
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_4c

    iget p1, p1, Landroid/graphics/PointF;->y:F

    neg-float p1, p1

    goto :goto_54

    :cond_4c
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_53

    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_54

    :cond_53
    move p1, v6

    :goto_54
    add-float/2addr p1, v4

    .line 227
    const-string v2, "mDensityDpi"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v2, v9

    .line 228
    const/high16 v9, 0x43700000    # 240.0f

    mul-float/2addr v9, v2

    const-string v10, "mWidth"

    invoke-static {v1, v10}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41800000    # 16.0f

    mul-float/2addr v11, v2

    sub-float/2addr v10, v11

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 229
    const/high16 v9, 0x43820000    # 260.0f

    mul-float/2addr v9, v2

    const-string v10, "mHeight"

    invoke-static {v1, v10}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v10, 0x42a00000    # 80.0f

    mul-float/2addr v2, v10

    sub-float/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v9, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 230
    const-string v1, "mStartPosX"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v1

    if-eqz v5, :cond_95

    sub-float/2addr v3, v7

    goto :goto_96

    :cond_95
    move v3, v6

    :goto_96
    add-float/2addr v1, v3

    .line 231
    const-string v2, "mStartPosY"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v2

    if-eqz v8, :cond_a1

    sub-float v6, v4, p1

    :cond_a1
    add-float/2addr v2, v6

    .line 232
    const-string v3, "mPosX"

    invoke-static {p0, v3, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    const-string v3, "mPosY"

    invoke-static {p0, v3, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    const-string v3, "mScale"

    invoke-static {p0, v3, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 233
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 235
    new-instance v3, Landroid/graphics/Rect;

    div-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {v3, v1, v2, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 236
    sget-object p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->live:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 237
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fc

    .line 238
    sget-object p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->resizeFrames:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;

    if-nez p1, :cond_ed

    new-instance p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeform$1;)V

    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->resizeFrames:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_ed
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->pending:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->live:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->sendResize(Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fc} :catch_fd

    .line 241
    :cond_fc
    goto :goto_105

    :catch_fd
    move-exception p0

    const-string p1, "LunatikFreeform"

    const-string v0, "resize"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :goto_105
    return-void
.end method

.method public static restored(Ljava/lang/Object;)V
    .registers 8

    .line 102
    const-string v0, "LunatikFreeform"

    :try_start_2
    const-string v1, "this$0"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "val$taskId"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    .line 103
    const-string v2, "mWindowDecorByTaskId"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    if-nez v1, :cond_2b

    return-void

    :cond_2b
    const-string v2, "captionWindowDecoration"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_a2

    sget-object v2, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->restoring:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3c

    goto :goto_a2

    .line 106
    :cond_3c
    const-string v2, "mIsBubbleMode"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4b

    return-void

    .line 107
    :cond_4b
    const-string v2, "relayout"

    const-class v3, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/graphics/Region;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "mHasGlobalFocus"

    invoke-static {v1, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "mExclusionRegion"

    invoke-static {v1, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->density(Ljava/lang/Object;)V

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restored caption task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " scale="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "mVisualScale"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a1} :catch_a3

    .line 110
    goto :goto_a9

    .line 105
    :cond_a2
    :goto_a2
    return-void

    .line 110
    :catch_a3
    move-exception p0

    const-string v1, "restore relayout"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_a9
    return-void
.end method

.method private static sendResize(Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->inFlight:Z

    if-nez v0, :cond_81

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->pending:Landroid/graphics/Rect;

    if-nez v0, :cond_9

    goto :goto_81

    .line 182
    :cond_9
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->pending:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->pending:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->inFlight:Z

    iget-wide v1, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->submitted:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;->submitted:J

    .line 183
    const-string v1, "mWindowDecoration"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "captionWindowDecoration"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    const-string v2, "mTransformCommitListener"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "f$0"

    invoke-static {v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mSyncQueue"

    invoke-static {v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 185
    invoke-static {}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->tx()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "token"

    invoke-static {v4, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Landroid/graphics/Rect;

    const-string v6, "setBounds"

    invoke-static {v3, v6, v4, v5, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->change(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "queue"

    invoke-static {v2, v5, v4, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v3, "com.android.wm.shell.common.SyncTransactionQueue$TransactionRunnable"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, p0, v0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;)V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 204
    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "runInSync"

    invoke-static {v2, v0, p1, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void

    .line 181
    :cond_81
    :goto_81
    return-void
.end method

.method private static set(Ljava/lang/Object;Ljava/lang/String;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    return-void
.end method

.method public static start(Ljava/lang/Object;)V
    .registers 4

    .line 206
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->live:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->resizeFrames:Ljava/util/WeakHashMap;

    new-instance v1, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeform$1;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static task(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    const-string v0, "mTaskInfo"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static taskChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 159
    :try_start_0
    const-string v0, "getWindowingMode"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->clearDensity(Ljava/lang/Object;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 160
    :cond_1d
    goto :goto_26

    :catch_1e
    move-exception p0

    const-string p1, "LunatikFreeform"

    const-string v0, "taskChanged"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :goto_26
    return-void
.end method

.method public static touch(Ljava/lang/Object;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 20

    .line 272
    move-object/from16 v0, p0

    const-string v1, "LunatikFreeform"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 273
    const v4, 0x7f0b039f

    const v5, 0x7f0b03a8

    if-eq v3, v5, :cond_14

    if-eq v3, v4, :cond_14

    return v2

    .line 274
    :cond_14
    const-string v6, "this$0"

    invoke-static {v0, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "mTaskId"

    invoke-static {v0, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v7

    .line 275
    const-string v8, "mWindowDecorByTaskId"

    invoke-static {v6, v8}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 276
    const-string v9, "get"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 277
    if-nez v8, :cond_3d

    return v2

    .line 278
    :cond_3d
    const-string v9, "captionWindowDecoration"

    invoke-static {v8, v9}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 279
    const-string v9, "mIsBubbleMode"

    invoke-static {v8, v9}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_52

    return v2

    .line 280
    :cond_52
    if-ne v3, v4, :cond_5d

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-static {v0, v6, v8, v4, v9}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->bottom(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 281
    :cond_5d
    move-object/from16 v4, p1

    move-object/from16 v9, p2

    const-string v10, "mDragPositioningCallback"

    invoke-static {v0, v10}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 282
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    .line 283
    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-nez v11, :cond_10e

    .line 284
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "-$$Nest$mfocusFreeformTask"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/16 v16, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 285
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v4, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->drags:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    new-array v11, v13, [F

    aput v5, v11, v2

    aput v6, v11, v15

    aput v16, v11, v14

    invoke-virtual {v4, v0, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {v8}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->reveal(Ljava/lang/Object;)V

    .line 288
    nop

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gesture task="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " bar="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ctrl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v0, "onDragPositioningStart"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v0, v3, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    goto/16 :goto_1d3

    :cond_10e
    const/16 v16, 0x0

    if-ne v11, v14, :cond_169

    .line 292
    sget-object v3, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->drags:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-nez v0, :cond_11d

    return v15

    .line 293
    :cond_11d
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aget v4, v0, v2

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    aget v6, v0, v15

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_13b

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v14

    .line 294
    :cond_13b
    aget v0, v0, v14

    cmpl-float v0, v0, v16

    if-eqz v0, :cond_16e

    const-string v0, "onDragPositioningMove"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v0, v3, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16e

    .line 295
    :cond_169
    if-eq v11, v15, :cond_16f

    if-ne v11, v13, :cond_16e

    goto :goto_16f

    :cond_16e
    :goto_16e
    goto :goto_1d3

    .line 296
    :cond_16f
    :goto_16f
    sget-object v6, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->drags:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_177} :catch_1d4

    .line 297
    const-string v6, "onDragPositioningEnd"

    if-ne v11, v13, :cond_19f

    if-eqz v0, :cond_19f

    .line 298
    :try_start_17d
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aget v0, v0, v15

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v6, v3, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d3

    .line 300
    :cond_19f
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v12}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v8, v9, v12}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v6, v7, v8}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    if-ne v11, v15, :cond_1d3

    if-eqz v0, :cond_1d3

    aget v0, v0, v14

    cmpl-float v0, v0, v16

    if-nez v0, :cond_1d3

    if-ne v3, v5, :cond_1d3

    invoke-virtual {v4}, Landroid/view/View;->performClick()Z
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_1d3} :catch_1d4

    .line 304
    :cond_1d3
    :goto_1d3
    return v15

    .line 305
    :catch_1d4
    move-exception v0

    const-string v3, "touch"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method static tx()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    const-string v0, "android.window.WindowContainerTransaction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
