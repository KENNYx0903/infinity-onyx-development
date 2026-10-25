.class public final Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;
.super Landroid/graphics/drawable/GradientDrawable;
.source "NotificationGlass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationGlass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Material"
.end annotation


# instance fields
.field corners:[F

.field failed:Z

.field lastRegionAlpha:I

.field lockOnly:Z

.field material:Landroid/graphics/drawable/Drawable;

.field opacity:I

.field final original:Landroid/graphics/drawable/GradientDrawable;

.field final preDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field pressed:Z

.field reported:Z

.field root:Ljava/lang/Object;

.field rootSurfaceId:I

.field tone:I

.field final view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V
    .registers 4

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;-><init>(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Z)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Z)V
    .registers 6

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->lastRegionAlpha:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->opacity:I

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->preDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    if-nez v0, :cond_33

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_33
    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_3d

    const p2, -0xe4dfdb

    goto :goto_45

    :cond_3d
    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    :goto_45
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->tone:I

    :try_start_47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "mNormalColor"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->tone:I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception p2

    :goto_59
    if-eqz p3, :cond_6c

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->preDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mDrawableAlpha"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->opacity:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v1

    :goto_1d
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->reported:Z

    const/4 v2, 0x1

    const-string v3, "NotificationGlass"

    if-nez v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Draw bounds="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " alpha="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->opacity:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " hardware="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->reported:Z

    :cond_5a
    sget-boolean v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enabled:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_162

    sget-boolean v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->blur:Z

    if-eqz v1, :cond_162

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_162

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->lockOnly:Z

    if-eqz v1, :cond_81

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "power"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_81

    goto/16 :goto_162

    :cond_81
    :try_start_81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->ensureMaterial()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8e

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_8e
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->syncRegion()V

    const-string v5, "setBlurRadius"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    sget v7, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->radius:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v5, 0x20

    if-ne v0, v5, :cond_c2

    :cond_c2
    sget v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->dark:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->pressed:Z

    const/4 v6, 0x6

    if-eqz v5, :cond_cb

    move v5, v6

    goto :goto_cc

    :cond_cb
    move v5, v4

    :goto_cc
    add-int/2addr v0, v5

    const/16 v5, 0x64

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const-string v5, "setColor"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    shl-int/lit8 v0, v0, 0x18

    iget v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->tone:I

    const v9, 0xffffff

    and-int/2addr v8, v9

    or-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    array-length v0, v0

    const/16 v5, 0x8

    if-lt v0, v5, :cond_147

    const-string v0, "setCornerRadius"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v7, v8, v9}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    aget v4, v5, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    const/4 v7, 0x2

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    aget v6, v7, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->syncRegion()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_14f} :catch_150

    goto :goto_161

    :catch_150
    move-exception v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->failed:Z

    if-nez v1, :cond_15c

    const-string v1, "Native material fallback"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->failed:Z

    :cond_15c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_161
    return-void

    :cond_162
    :goto_162
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_16b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method ensureMaterial()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getSurfaceControl"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getLayerId"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->root:Ljava/lang/Object;

    if-ne v4, v0, :cond_59

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->rootSurfaceId:I

    if-eq v1, v4, :cond_a8

    :cond_59
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_62
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->root:Ljava/lang/Object;

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->rootSurfaceId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->root:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createBackgroundBlurDrawable"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->root:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPaint"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-string v0, "NotificationGlass"

    const-string v1, "Native blur material with container compositing created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->opacity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicHeight()I

    move-result v0

    :goto_c
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicWidth()I

    move-result v0

    :goto_c
    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 49
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->getOutline(Landroid/graphics/Outline;)V

    :goto_d
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method synthetic lambda$new$0$com-android-systemui-statusbar-notification-row-NotificationGlass$Material()Z
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->syncRegion()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_12
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 7

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->pressed:Z

    array-length v1, p1

    :goto_4
    const/4 v2, 0x1

    if-ge v0, v1, :cond_13

    aget v3, p1, v0

    const v4, 0x10100a7

    if-ne v3, v4, :cond_10

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->pressed:Z

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setState([I)Z

    :cond_1c
    return v2
.end method

.method public setAlpha(I)V
    .registers 3

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->opacity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto :goto_f

    :cond_c
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :goto_f
    return-void
.end method

.method public setColor(I)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_d
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_d
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_d
    return-void
.end method

.method public setCornerRadii([F)V
    .registers 3

    .line 58
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    :goto_a
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_19

    :cond_16
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :goto_19
    return-void
.end method

.method public setTint(I)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    :goto_d
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_d

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_d
    return-void
.end method

.method syncRegion()V
    .registers 7

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_7e

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_10

    goto/16 :goto_7e

    :cond_10
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->opacity:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->lockOnly:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v4

    :cond_2e
    move-object v3, v0

    :goto_2f
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_39

    move v1, v4

    goto :goto_4b

    :cond_39
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v1, v5

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_49

    check-cast v3, Landroid/view/View;

    goto :goto_2f

    :cond_49
    const/4 v3, 0x0

    goto :goto_2f

    :cond_4b
    :goto_4b
    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->lastRegionAlpha:I

    if-eq v2, v3, :cond_59

    iput v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->lastRegionAlpha:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    sget-boolean v3, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enabled:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_6a

    sget-boolean v3, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->blur:Z

    if-eqz v3, :cond_6a

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6a

    const/4 v1, 0x1

    goto :goto_6b

    :cond_6a
    move v1, v5

    :goto_6b
    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->original:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7e
    :goto_7e
    return-void
.end method
