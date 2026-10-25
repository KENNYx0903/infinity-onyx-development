.class public final Lcom/android/launcher3/qsb/QsbGlass;
.super Ljava/lang/Object;
.source "QsbGlass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/qsb/QsbGlass$Panel;
    }
.end annotation


# static fields
.field static apply:Ljava/lang/reflect/Method;

.field static context:Landroid/content/Context;

.field static dark:I

.field static enabled:Z

.field static final focus:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field static final frame:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field static getSurface:Ljava/lang/reflect/Method;

.field static lastHash:I

.field static layerId:Ljava/lang/reflect/Method;

.field static final location:[I

.field static final matrix:Landroid/graphics/Matrix;

.field static onDraw:Ljava/lang/reflect/Method;

.field static final panels:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/qsb/QsbGlass$Panel;",
            ">;"
        }
    .end annotation
.end field

.field static parentId:I

.field static radius:I

.field static final rect:Landroid/graphics/RectF;

.field static root:Ljava/lang/Object;

.field static rootView:Landroid/view/View;

.field static setRegions:Ljava/lang/reflect/Method;

.field static surface:Ljava/lang/Object;

.field static transaction:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/qsb/QsbGlass;->panels:Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/qsb/QsbGlass;->enabled:Z

    const/16 v0, 0x3c

    sput v0, Lcom/android/launcher3/qsb/QsbGlass;->radius:I

    const/16 v0, 0x2b

    sput v0, Lcom/android/launcher3/qsb/QsbGlass;->dark:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/qsb/QsbGlass;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/qsb/QsbGlass;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/qsb/QsbGlass;->location:[I

    .line 6
    new-instance v0, Lcom/android/launcher3/qsb/QsbGlass$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/qsb/QsbGlass$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/qsb/QsbGlass;->frame:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 7
    new-instance v0, Lcom/android/launcher3/qsb/QsbGlass$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/qsb/QsbGlass$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/qsb/QsbGlass;->focus:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)Z
    .registers 14

    .line 9
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_75

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_75

    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/qsb/QsbGlass;->init(Landroid/view/View;)V

    sget-object v2, Lcom/android/launcher3/qsb/QsbGlass;->panels:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/qsb/QsbGlass$Panel;

    if-nez v2, :cond_30

    new-instance v2, Lcom/android/launcher3/qsb/QsbGlass$Panel;

    invoke-direct {v2}, Lcom/android/launcher3/qsb/QsbGlass$Panel;-><init>()V

    sget-object v3, Lcom/android/launcher3/qsb/QsbGlass;->panels:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_30
    iget-object v0, v2, Lcom/android/launcher3/qsb/QsbGlass$Panel;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean p0, Lcom/android/launcher3/qsb/QsbGlass;->enabled:Z

    if-nez p0, :cond_3e

    return v1

    :cond_3e
    iget-object p0, v2, Lcom/android/launcher3/qsb/QsbGlass$Panel;->paint:Landroid/graphics/Paint;

    sget v0, Lcom/android/launcher3/qsb/QsbGlass;->dark:I

    mul-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const v3, 0x242b28

    or-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, v2, Lcom/android/launcher3/qsb/QsbGlass$Panel;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v0, v3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, p0

    iget-object v11, v2, Lcom/android/launcher3/qsb/QsbGlass$Panel;->paint:Landroid/graphics/Paint;

    move v10, v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_73} :catch_76

    const/4 p0, 0x1

    return p0

    :cond_75
    :goto_75
    return v1

    :catch_76
    move-exception v0

    move-object p0, v0

    const-string p1, "QsbGlass"

    const-string v0, "fallback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static init(Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    const-class v0, Landroid/view/View;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getViewRootImpl"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    sget-object v4, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    if-eqz v4, :cond_6d

    sget-object v2, Lcom/android/launcher3/qsb/QsbGlass;->root:Ljava/lang/Object;

    if-ne v2, v0, :cond_28

    sget-object v2, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v2, v3, :cond_6c

    :cond_28
    sget-object v2, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4a

    sget-object v2, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/qsb/QsbGlass;->frame:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget-object v2, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/qsb/QsbGlass;->focus:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_4a
    sput-object v0, Lcom/android/launcher3/qsb/QsbGlass;->root:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    sput v1, Lcom/android/launcher3/qsb/QsbGlass;->parentId:I

    sput v1, Lcom/android/launcher3/qsb/QsbGlass;->lastHash:I

    sget-object p0, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->frame:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget-object p0, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->focus:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_6c
    return-void

    :cond_6d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/qsb/QsbGlass;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/qsb/QsbGlass;->read()V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    const-class v0, Landroid/view/View;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/qsb/QsbGlass;->root:Ljava/lang/Object;

    sget-object p0, Lcom/android/launcher3/qsb/QsbGlass;->root:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getSurfaceControl"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/qsb/QsbGlass;->getSurface:Ljava/lang/reflect/Method;

    const-string p0, "android.view.SurfaceControl"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "android.view.SurfaceControl$Transaction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getLayerId"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/qsb/QsbGlass;->layerId:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    const-class v2, [[F

    filled-new-array {p0, v2}, [Ljava/lang/Class;

    move-result-object p0

    const-string v2, "setBlurRegions"

    invoke-virtual {v0, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/qsb/QsbGlass;->setRegions:Ljava/lang/reflect/Method;

    sget-object p0, Lcom/android/launcher3/qsb/QsbGlass;->root:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "applyTransactionOnDraw"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/qsb/QsbGlass;->onDraw:Ljava/lang/reflect/Method;

    const-string p0, "apply"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/qsb/QsbGlass;->apply:Ljava/lang/reflect/Method;

    sget-object p0, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->frame:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget-object p0, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->focus:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    new-instance p0, Lcom/android/launcher3/qsb/QsbGlass$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/qsb/QsbGlass$1;-><init>(Landroid/os/Handler;)V

    const-string v0, "lunatik_blur_radius"

    const-string v2, "lunatik_blur_darkness"

    const-string v3, "lunatik_blur_mode"

    const-string v4, "lunatik_notification_glass"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_122
    const/4 v3, 0x4

    if-ge v2, v3, :cond_137

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/launcher3/qsb/QsbGlass;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_122

    :cond_137
    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "disable_window_blurs"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic lambda$static$0()Z
    .registers 1

    .line 6
    invoke-static {}, Lcom/android/launcher3/qsb/QsbGlass;->submit()V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$static$1(Z)V
    .registers 1

    .line 7
    if-eqz p0, :cond_e

    const/4 p0, 0x0

    sput p0, Lcom/android/launcher3/qsb/QsbGlass;->lastHash:I

    sget-object p0, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    if-eqz p0, :cond_e

    sget-object p0, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return-void
.end method

.method static read()V
    .registers 6

    .line 5
    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_window_blurs"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/qsb/QsbGlass;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lunatik_notification_glass"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    const/4 v1, 0x2

    :goto_28
    const-string v5, "lunatik_blur_mode"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_31

    goto :goto_32

    :cond_31
    move v4, v2

    :goto_32
    sput-boolean v4, Lcom/android/launcher3/qsb/QsbGlass;->enabled:Z

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lunatik_blur_radius"

    const/16 v3, 0x3c

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/launcher3/qsb/QsbGlass;->radius:I

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lunatik_blur_darkness"

    const/16 v3, 0x2b

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/launcher3/qsb/QsbGlass;->dark:I

    return-void
.end method

.method static submit()V
    .registers 16

    .line 10
    :try_start_0
    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->getSurface:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/android/launcher3/qsb/QsbGlass;->root:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/qsb/QsbGlass;->layerId:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1c

    return-void

    :cond_1c
    const-string v3, "android.view.SurfaceControl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/qsb/QsbGlass;->surface:Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_212

    const-string v6, "show"

    if-eqz v5, :cond_32

    :try_start_2e
    sget v5, Lcom/android/launcher3/qsb/QsbGlass;->parentId:I

    if-eq v1, v5, :cond_de

    :cond_32
    sget-object v5, Lcom/android/launcher3/qsb/QsbGlass;->surface:Ljava/lang/Object;

    const-string v7, "android.view.SurfaceControl$Builder"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "setName"

    const-class v10, Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v10, "GoogleSearchOuterBlur"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "setParent"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "setEffectLayer"

    new-array v10, v2, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "build"

    new-array v10, v2, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sput-object v7, Lcom/android/launcher3/qsb/QsbGlass;->surface:Ljava/lang/Object;

    const-string v7, "setLayer"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    sget-object v9, Lcom/android/launcher3/qsb/QsbGlass;->surface:Ljava/lang/Object;

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    sget-object v9, Lcom/android/launcher3/qsb/QsbGlass;->surface:Ljava/lang/Object;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_da

    const-string v7, "remove"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "release"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_da
    sput v1, Lcom/android/launcher3/qsb/QsbGlass;->parentId:I

    sput v2, Lcom/android/launcher3/qsb/QsbGlass;->lastHash:I

    .line 11
    :cond_de
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v5, Lcom/android/launcher3/qsb/QsbGlass;->enabled:Z

    if-eqz v5, :cond_1ab

    sget-object v5, Lcom/android/launcher3/qsb/QsbGlass;->panels:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f1
    :goto_f1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1ab

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_f1

    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v9

    if-eqz v9, :cond_f1

    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    move-result v9

    if-nez v9, :cond_112

    goto :goto_f1

    :cond_112
    const/high16 v9, 0x3f800000    # 1.0f

    move-object v10, v8

    :goto_115
    if-eqz v10, :cond_129

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v11

    mul-float/2addr v9, v11

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v11, v10, Landroid/view/View;

    if-eqz v11, :cond_127

    check-cast v10, Landroid/view/View;

    goto :goto_115

    :cond_127
    const/4 v10, 0x0

    goto :goto_115

    :cond_129
    const v10, 0x3b03126f    # 0.002f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_131

    goto :goto_f1

    :cond_131
    sget-object v10, Lcom/android/launcher3/qsb/QsbGlass;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    sget-object v10, Lcom/android/launcher3/qsb/QsbGlass;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v10}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    sget-object v8, Lcom/android/launcher3/qsb/QsbGlass;->rect:Landroid/graphics/RectF;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/qsb/QsbGlass$Panel;

    iget-object v7, v7, Lcom/android/launcher3/qsb/QsbGlass$Panel;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    sget-object v7, Lcom/android/launcher3/qsb/QsbGlass;->matrix:Landroid/graphics/Matrix;

    sget-object v8, Lcom/android/launcher3/qsb/QsbGlass;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget-object v7, Lcom/android/launcher3/qsb/QsbGlass;->rootView:Landroid/view/View;

    sget-object v8, Lcom/android/launcher3/qsb/QsbGlass;->location:[I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v7, Lcom/android/launcher3/qsb/QsbGlass;->rect:Landroid/graphics/RectF;

    sget-object v8, Lcom/android/launcher3/qsb/QsbGlass;->location:[I

    aget v8, v8, v2

    neg-int v8, v8

    int-to-float v8, v8

    sget-object v10, Lcom/android/launcher3/qsb/QsbGlass;->location:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v8, v10}, Landroid/graphics/RectF;->offset(FF)V

    sget-object v7, Lcom/android/launcher3/qsb/QsbGlass;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v8, Lcom/android/launcher3/qsb/QsbGlass;->radius:I

    int-to-float v8, v8

    sget-object v10, Lcom/android/launcher3/qsb/QsbGlass;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sget-object v12, Lcom/android/launcher3/qsb/QsbGlass;->rect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sget-object v13, Lcom/android/launcher3/qsb/QsbGlass;->rect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    sget-object v14, Lcom/android/launcher3/qsb/QsbGlass;->rect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    const/16 v15, 0xa

    new-array v15, v15, [F

    aput v8, v15, v2

    aput v9, v15, v11

    const/4 v8, 0x2

    aput v10, v15, v8

    const/4 v8, 0x3

    aput v12, v15, v8

    const/4 v8, 0x4

    aput v13, v15, v8

    const/4 v8, 0x5

    aput v14, v15, v8

    const/4 v8, 0x6

    aput v7, v15, v8

    const/4 v8, 0x7

    aput v7, v15, v8

    const/16 v8, 0x8

    aput v7, v15, v8

    const/16 v8, 0x9

    aput v7, v15, v8

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f1

    :cond_1ab
    new-array v5, v2, [[F

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v5

    sget v7, Lcom/android/launcher3/qsb/QsbGlass;->lastHash:I

    if-eq v5, v7, :cond_21a

    const-string v7, "reparent"

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    sget-object v9, Lcom/android/launcher3/qsb/QsbGlass;->surface:Ljava/lang/Object;

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    sget-object v4, Lcom/android/launcher3/qsb/QsbGlass;->surface:Ljava/lang/Object;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->setRegions:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    sget-object v4, Lcom/android/launcher3/qsb/QsbGlass;->surface:Ljava/lang/Object;

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->onDraw:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/android/launcher3/qsb/QsbGlass;->root:Ljava/lang/Object;

    sget-object v3, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20f

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->apply:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/android/launcher3/qsb/QsbGlass;->transaction:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20f
    sput v5, Lcom/android/launcher3/qsb/QsbGlass;->lastHash:I
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_211} :catch_212

    goto :goto_21a

    :catch_212
    move-exception v0

    const-string v1, "QsbGlass"

    const-string v2, "surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21a
    :goto_21a
    return-void
.end method
