.class public final Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;
.super Ljava/lang/Object;
.source "LunatikFreeformEffects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;,
        Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;,
        Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LunatikFreeformFX"

.field private static active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

.field private static final openings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;",
            ">;"
        }
    .end annotation
.end field

.field private static final states:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final swipes:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openings:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->swipes:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .line 17
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;F)V
    .registers 2

    .line 17
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->dismissFrame(Ljava/lang/Object;F)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    .registers 1

    .line 17
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    return-void
.end method

.method private static activate(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    .registers 2

    .line 234
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-ne v0, p0, :cond_5

    return-void

    .line 235
    :cond_5
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    sput-object p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->hideNow(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    .line 236
    return-void
.end method

.method public static activateTask(Ljava/lang/Object;I)V
    .registers 4

    .line 239
    :try_start_0
    const-string v0, "mWindowDecorByTaskId"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 240
    if-nez p0, :cond_21

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->activate(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    return-void

    .line 241
    :cond_21
    const-string p1, "captionWindowDecoration"

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 242
    if-eqz p0, :cond_30

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->state(Ljava/lang/Object;)Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->activate(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 243
    :cond_30
    goto :goto_39

    :catch_31
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string v0, "activate task"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    :goto_39
    return-void
.end method

.method public static anchor(Ljava/lang/Object;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 11

    .line 350
    :try_start_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    const-string v1, "mWindowDecorByTaskId"

    invoke-static {v0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mTaskId"

    invoke-static {p0, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 352
    if-nez p0, :cond_29

    return-void

    :cond_29
    const-string v0, "captionWindowDecoration"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 353
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->layout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mDensityDpi"

    invoke-static {v0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    .line 354
    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 355
    const/16 v4, 0x33

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 356
    const-string v4, "mWidth"

    invoke-static {v0, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    const-string v5, "mVisualPosX"

    invoke-static {p0, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v5

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->logical(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const-string v7, "mVisualScale"

    invoke-static {p0, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v3, v3

    div-float/2addr v3, v7

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 357
    const-string v3, "mHeight"

    invoke-static {v0, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    const-string p1, "mVisualPosY"

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result p0

    const/high16 p1, 0x41f00000    # 30.0f

    mul-float/2addr v1, p1

    add-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 358
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p0, p0, 0x100

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a9} :catch_aa

    .line 359
    goto :goto_b2

    :catch_aa
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string p2, "menu anchor"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    :goto_b2
    return-void
.end method

.method public static bottom(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 292
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->unit(Ljava/lang/Object;)F

    move-result v1

    const-string v2, "mVisualScale"

    invoke-static {p2, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, v1

    .line 293
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    packed-switch v3, :pswitch_data_d6

    .line 317
    return v0

    .line 300
    :pswitch_17
    sget-object p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->swipes:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    .line 301
    if-eqz p0, :cond_5b

    .line 302
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    aget p3, p0, v5

    sub-float/2addr p1, p3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    aget p4, p0, v0

    sub-float/2addr p3, p4

    .line 303
    neg-float p3, p3

    const/high16 p4, 0x40800000    # 4.0f

    mul-float/2addr p4, v2

    sub-float p4, p3, p4

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v1, v2

    div-float/2addr p4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-static {v4, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    aput p4, p0, v6

    .line 304
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p4, 0x41e00000    # 28.0f

    mul-float/2addr v2, p4

    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_56

    aput v4, p0, v6

    .line 305
    :cond_56
    aget p0, p0, v6

    invoke-static {p2, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->dismissFrame(Ljava/lang/Object;F)V

    .line 307
    :cond_5b
    return v0

    .line 310
    :pswitch_5c
    sget-object p3, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->swipes:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    .line 311
    if-eqz p0, :cond_94

    .line 312
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    aget v1, p0, v5

    sub-float/2addr p3, v1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    aget v3, p0, v0

    sub-float/2addr v1, v3

    .line 313
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p4

    if-ne p4, v0, :cond_8f

    const/high16 p4, -0x3e000000    # -32.0f

    mul-float/2addr v2, p4

    cmpg-float p4, v1, v2

    if-gez p4, :cond_8f

    neg-float p4, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr p3, v1

    cmpl-float p3, p4, p3

    if-lez p3, :cond_8f

    move v5, v0

    .line 314
    :cond_8f
    aget p0, p0, v6

    invoke-static {p1, p2, p0, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->finishDismiss(Ljava/lang/Object;Ljava/lang/Object;FZ)V

    .line 316
    :cond_94
    return v0

    .line 295
    :pswitch_95
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x42300000    # 44.0f

    mul-float/2addr v1, p3

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_c7

    .line 296
    sget-object p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->swipes:Ljava/util/WeakHashMap;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result p4

    const/4 v1, 0x3

    new-array v1, v1, [F

    aput p3, v1, v5

    aput p4, v1, v0

    aput v4, v1, v6

    invoke-virtual {p1, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->reveal(Ljava/lang/Object;)V

    goto :goto_cc

    .line 297
    :cond_c7
    sget-object p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->swipes:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_cc} :catch_cd

    .line 298
    :goto_cc
    return v0

    .line 319
    :catch_cd
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string p2, "bottom"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_95
        :pswitch_5c
        :pswitch_17
        :pswitch_5c
    .end packed-switch
.end method

.method public static bubble(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;)V
    .registers 11

    .line 368
    :try_start_0
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_de

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_de

    .line 369
    :cond_e
    const-string v1, "mVisualScale"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v1

    .line 370
    const-string v2, "mIsBubbleMode"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_df

    const-string v3, "setWindowCrop"

    const-string v4, "setCornerRadius"

    if-nez v2, :cond_96

    .line 371
    :try_start_26
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->logical(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v2

    .line 372
    const-class v5, Landroid/view/SurfaceControl;

    const-class v6, Landroid/graphics/Rect;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v8, 0x0

    invoke-direct {v6, v8, v8, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v5, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->layout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mDensityDpi"

    invoke-static {v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v2, v1

    .line 374
    const-class v1, Landroid/view/SurfaceControl;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v4, v1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v0, "mDecorationContainerSurface"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    .line 376
    if-eqz p0, :cond_95

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_95

    const-class v0, Landroid/view/SurfaceControl;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v4, v0, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_95
    return-void

    .line 379
    :cond_96
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->bubbleCrop(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v2

    .line 380
    const-class v5, Landroid/view/SurfaceControl;

    const-class v6, Landroid/graphics/Rect;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v3, v5, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v3, "mVisualPosX"

    invoke-static {p0, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v3

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    const-string v5, "mVisualPosY"

    invoke-static {p0, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result p0

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr p0, v5

    invoke-virtual {p1, v0, v3, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 382
    const-class p0, Landroid/view/SurfaceControl;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v1}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v4, p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_dd} :catch_df

    .line 383
    goto :goto_e7

    .line 368
    :cond_de
    :goto_de
    return-void

    .line 383
    :catch_df
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string v0, "circle bubble"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    :goto_e7
    return-void
.end method

.method private static bubbleCrop(Ljava/lang/Object;)Landroid/graphics/Rect;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->logical(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 363
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    .line 364
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v1, v0

    add-int/2addr v0, p0

    invoke-direct {v2, v1, p0, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public static bubbleRegion(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/Region;
    .registers 5

    .line 456
    const/4 p1, 0x0

    :try_start_1
    const-string v0, "mIsBubbleMode"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    return-object p1

    .line 457
    :cond_10
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->bubbleCrop(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 458
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    return-object v1

    .line 459
    :catch_31
    move-exception p0

    const-string v0, "LunatikFreeformFX"

    const-string v1, "circle input"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private static builder(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    const-string v0, "android.view.SurfaceControl$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "setName"

    invoke-static {v0, v2, v1, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static decorate(Ljava/lang/Object;Landroid/view/View;)V
    .registers 6

    .line 127
    if-nez p1, :cond_3

    return-void

    .line 129
    :cond_3
    :try_start_3
    const-string v0, "mIsBubbleMode"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 130
    :cond_12
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->state(Ljava/lang/Object;)Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openings:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "taskId"

    invoke-static {v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;

    .line 132
    if-eqz v1, :cond_31

    invoke-static {v1, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->watchCaption(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;Landroid/view/View;)V

    .line 133
    :cond_31
    new-instance v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Ljava/lang/Object;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_3a

    .line 145
    goto :goto_42

    :catch_3a
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string v0, "decorate setup"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_42
    return-void
.end method

.method public static destroyTask(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->destroy(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    :try_start_3
    const-string v0, "mWindowDecorByTaskId"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "taskId"

    invoke-static {p1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 464
    if-nez p0, :cond_26

    return-void

    .line 465
    :cond_26
    const-string p1, "captionWindowDecoration"

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-nez p0, :cond_37

    return-void

    .line 466
    :cond_37
    sget-object p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-ne p1, p0, :cond_3e

    const/4 p1, 0x0

    sput-object p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    .line 467
    :cond_3e
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    .line 468
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 469
    :cond_4a
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->hide:Ljava/lang/Runnable;

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->hide:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    :cond_55
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 471
    :cond_5e
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_91

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6f} :catch_a0

    :try_start_6f
    const-string v0, "remove"

    const-class v1, Landroid/view/SurfaceControl;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_83
    .catchall {:try_start_6f .. :try_end_83} :catchall_87

    :try_start_83
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_a0

    goto :goto_91

    :catchall_87
    move-exception p0

    :try_start_88
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception p1

    :try_start_8d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_90
    throw p0

    :cond_91
    :goto_91
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 472
    :cond_96
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerCanvasSurface:Landroid/view/Surface;

    if-eqz p1, :cond_9f

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerCanvasSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9f} :catch_a0

    .line 473
    :cond_9f
    goto :goto_a8

    :catch_a0
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string v0, "destroy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    :goto_a8
    return-void
.end method

.method private static dismissFrame(Ljava/lang/Object;F)V
    .registers 14

    .line 278
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-eqz v0, :cond_f

    iput p1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dismissProgress:F

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    .line 280
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 281
    :cond_1a
    const-string v1, "mVisualScale"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    .line 282
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->logical(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v4

    const-string v5, "mVisualPosX"

    invoke-static {p0, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 283
    const-string v6, "mVisualPosY"

    invoke-static {p0, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    mul-float/2addr v4, v7

    div-float/2addr v4, v8

    add-float/2addr v6, v4

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->unit(Ljava/lang/Object;)F

    move-result p0

    const/high16 v4, 0x425c0000    # 55.0f

    mul-float/2addr p0, v4

    mul-float/2addr p0, v1

    mul-float/2addr p0, p1

    sub-float/2addr v6, p0

    .line 284
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5c} :catch_9f

    .line 285
    :try_start_5c
    const-string v4, "setMatrix"

    const-class v7, Landroid/view/SurfaceControl;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/Class;

    move-result-object v7

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v2, v9, v8, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v4, v7, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p0, v0, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    sub-float/2addr v3, p1

    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_91
    .catchall {:try_start_5c .. :try_end_91} :catchall_95

    .line 287
    :try_start_91
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_9f

    .line 288
    goto :goto_a7

    .line 284
    :catchall_95
    move-exception p1

    :try_start_96
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception p0

    :try_start_9b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9e
    throw p1
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9f} :catch_9f

    .line 288
    :catch_9f
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string v0, "dismiss frame"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    :goto_a7
    return-void
.end method

.method public static endResize(Ljava/lang/Object;)V
    .registers 3

    .line 274
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->resizing:Z

    if-nez v1, :cond_f

    goto :goto_1a

    .line 275
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->resizing:Z

    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-ne v0, v1, :cond_19

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->reveal(Ljava/lang/Object;)V

    .line 276
    :cond_19
    return-void

    .line 274
    :cond_1a
    :goto_1a
    return-void
.end method

.method private static finishDismiss(Ljava/lang/Object;Ljava/lang/Object;FZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->state(Ljava/lang/Object;)Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->closing:Z

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iput-boolean p3, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->closing:Z

    .line 323
    const/4 v1, 0x0

    if-eqz p3, :cond_13

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->marker(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;FJ)V

    .line 324
    :cond_13
    if-eqz p3, :cond_17

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_17
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput v1, v2, p2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p3, :cond_29

    const-wide/16 v1, 0xaa

    goto :goto_2b

    :cond_29
    const-wide/16 v1, 0xc8

    :goto_2b
    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    new-instance v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 326
    if-eqz p3, :cond_48

    new-instance p3, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;

    invoke-direct {p3, p1, p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    :cond_48
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 333
    return-void
.end method

.method public static finishTransition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 12

    .line 436
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openingAlpha(Landroid/view/SurfaceControl$Transaction;)V

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 441
    :try_start_1c
    sget-object v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    .line 442
    if-eqz v2, :cond_12

    iget-boolean v3, v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-nez v3, :cond_12

    iget-boolean v3, v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->closing:Z

    if-nez v3, :cond_12

    iget-boolean v3, v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->resizing:Z

    if-nez v3, :cond_12

    iget v2, v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dismissProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3a

    goto :goto_12

    .line 443
    :cond_3a
    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 444
    const-string v4, "getWindowingMode"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v6, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_12

    const-string v4, "isVisible"

    invoke-static {v2, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_61

    goto :goto_12

    .line 445
    :cond_61
    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object v2

    const-string v4, "mVisualScale"

    invoke-static {v1, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v4

    .line 446
    if-eqz v2, :cond_a9

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 447
    const-string v5, "setMatrix"

    const-class v6, Landroid/view/SurfaceControl;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v2, v7, v8, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v5, v6, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v3, "mVisualPosX"

    invoke-static {v1, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v3

    const-string v4, "mVisualPosY"

    invoke-static {v1, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 450
    :cond_a9
    invoke-static {v1, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->bubble(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_ac} :catch_ad

    .line 451
    goto :goto_b5

    :catch_ad
    move-exception v1

    const-string v2, "LunatikFreeformFX"

    const-string v3, "finish crop"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    :goto_b5
    goto/16 :goto_12

    .line 453
    :cond_b7
    return-void
.end method

.method public static focusChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 247
    :try_start_0
    const-string v0, "isFocused"

    invoke-static {p1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_39

    const-string v1, "taskId"

    if-eqz v0, :cond_18

    :try_start_10
    invoke-static {p1, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->activateTask(Ljava/lang/Object;I)V

    goto :goto_38

    .line 248
    :cond_18
    sget-object p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-eqz p0, :cond_38

    .line 249
    sget-object p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->decor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .line 250
    if-eqz p0, :cond_38

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_38

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->activate(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_39

    .line 252
    :cond_38
    :goto_38
    goto :goto_41

    :catch_39
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string v0, "focus handles"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :goto_41
    return-void
.end method

.method public static geometry(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    .line 270
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-nez p0, :cond_b

    return-void

    .line 271
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->pendingW:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->pendingH:I

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    .line 272
    return-void
.end method

.method private static hideNow(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    .registers 3

    .line 228
    if-nez p0, :cond_3

    return-void

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->hide:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 231
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerOpacity:F

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    .line 232
    return-void
.end method

.method public static keyguardUnwrapped(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 15

    .line 411
    const-string v0, "getTaskInfo"

    const-string v1, "LunatikFreeformFX"

    const-string v2, "taskId"

    const/4 v3, 0x0

    :try_start_7
    const-string v4, "isKeyguardGoingAway"

    new-array v5, v3, [Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v5, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1a

    return v3

    .line 412
    :cond_1a
    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v4, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_122

    const-string v5, "getWindowingMode"

    new-array v6, v3, [Ljava/lang/Class;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_39

    goto/16 :goto_122

    .line 413
    :cond_39
    const-string v5, "getParent"

    new-array v6, v3, [Ljava/lang/Class;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p1, v5, v6, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 414
    if-nez v5, :cond_46

    return v3

    .line 415
    :cond_46
    const-string v6, "getChange"

    const-string v7, "android.window.WindowContainerToken"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v6, v7, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 416
    if-nez p0, :cond_5d

    return v3

    .line 419
    :cond_5d
    new-array v5, v3, [Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v5, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_68

    return v3

    .line 420
    :cond_68
    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_77
    :goto_77
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 421
    sget-object v5, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-eqz v5, :cond_77

    iget-boolean v6, v5, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-nez v6, :cond_77

    iget-boolean v6, v5, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->closing:Z

    if-nez v6, :cond_77

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v7

    if-eq v6, v7, :cond_a2

    goto :goto_77

    .line 422
    :cond_a2
    const-string p0, "getLeash"

    new-array v6, v3, [Ljava/lang/Class;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p1, p0, v6, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    .line 423
    if-eqz p0, :cond_120

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-nez p1, :cond_b7

    goto :goto_120

    .line 424
    :cond_b7
    const-string p1, "mVisualScale"

    invoke-static {v0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result p1

    .line 425
    const-string v6, "setMatrix"

    const-class v7, Landroid/view/SurfaceControl;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/Class;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {p0, v8, v10, v9, v11}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {p2, v6, v7, v8}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v6, "mVisualPosX"

    invoke-static {v0, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v6

    const-string v7, "mVisualPosY"

    invoke-static {v0, v7}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v7

    invoke-virtual {p2, p0, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 427
    invoke-static {v0, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->bubble(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;)V

    .line 428
    invoke-static {v0, v5, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->unlockFade(Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/view/SurfaceControl$Transaction;)V

    .line 429
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "keyguard parent animation task="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v4, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " scale="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11e} :catch_123

    .line 430
    const/4 p0, 0x1

    return p0

    .line 423
    :cond_120
    :goto_120
    return v3

    .line 432
    :cond_121
    goto :goto_129

    .line 412
    :cond_122
    :goto_122
    return v3

    .line 432
    :catch_123
    move-exception p0

    const-string p1, "keyguard parent"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    :goto_129
    return v3
.end method

.method static synthetic lambda$decorate$6(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Ljava/lang/Object;Landroid/view/View;)V
    .registers 6

    .line 134
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-eqz v0, :cond_5

    return-void

    .line 136
    :cond_5
    :try_start_5
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->unit(Ljava/lang/Object;)F

    move-result v0

    .line 137
    const v1, 0x7f0b03a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 138
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;

    if-nez v2, :cond_29

    .line 139
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    new-instance v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_29
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->root:Landroid/view/View;

    if-eq v0, p2, :cond_4c

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->root:Landroid/view/View;

    sget-object p2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-eq p2, p0, :cond_49

    sget-object p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-nez p0, :cond_4c

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "isFocused"

    invoke-static {p0, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4c

    :cond_49
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->reveal(Ljava/lang/Object;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4c} :catch_4d

    .line 143
    :cond_4c
    goto :goto_55

    :catch_4d
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string p2, "decorate"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :goto_55
    return-void
.end method

.method static synthetic lambda$finishDismiss$9(Ljava/lang/Object;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 325
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->dismissFrame(Ljava/lang/Object;F)V

    return-void
.end method

.method static synthetic lambda$marker$7(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 152
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerOpacity:F

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    return-void
.end method

.method static synthetic lambda$opening$1(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V
    .registers 3

    .line 53
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->done:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opening fallback task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->appReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->captionReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LunatikFreeformFX"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->captionReady:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->appReady:Z

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->ready(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    :cond_42
    return-void
.end method

.method static synthetic lambda$queueInitial$0(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "runWithTransaction"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_39

    .line 33
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->appReady:Z

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->state:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-eqz p1, :cond_36

    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->state:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->decor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_20

    move-object p1, p2

    goto :goto_24

    :cond_20
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object p1

    .line 36
    :goto_24
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    aget-object p3, p3, v0

    check-cast p3, Landroid/view/SurfaceControl$Transaction;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->alpha:F

    invoke-virtual {p3, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 38
    :cond_36
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->ready(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    .line 40
    :cond_39
    return-object p2
.end method

.method static synthetic lambda$ready$5(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/animation/ValueAnimator;Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;Ljava/lang/Object;Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 81
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 82
    :cond_8
    :try_start_8
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_3b

    .line 83
    :try_start_d
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->alpha:F

    invoke-static {p3}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object p1

    .line 84
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    if-eqz p3, :cond_2a

    iget p2, p2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->alpha:F

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2a
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_31

    .line 85
    :try_start_2d
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_3b

    goto :goto_43

    .line 82
    :catchall_31
    move-exception p1

    :try_start_32
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p0

    :try_start_37
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3a
    throw p1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3b} :catch_3b

    .line 85
    :catch_3b
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string p2, "opening fade"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_43
    return-void
.end method

.method static synthetic lambda$reveal$8(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    .registers 4

    .line 258
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->resizing:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const-wide/16 v1, 0x168

    invoke-static {p0, v0, v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->marker(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;FJ)V

    :cond_a
    return-void
.end method

.method static synthetic lambda$unlockFade$10(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Ljava/lang/Runnable;)V
    .registers 2

    .line 390
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$unlockFade$11(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/animation/ValueAnimator;Ljava/lang/Object;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 395
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-nez v0, :cond_4f

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->closing:Z

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dismissProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    goto :goto_4f

    .line 396
    :cond_10
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAlpha:F

    .line 397
    :try_start_1c
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_43

    .line 398
    :try_start_21
    invoke-static {p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p2, :cond_32

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    if-eqz p3, :cond_32

    iget p3, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAlpha:F

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_32
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_39

    .line 399
    :try_start_35
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_43

    goto :goto_4b

    .line 397
    :catchall_39
    move-exception p2

    :try_start_3a
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    :try_start_3f
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_43

    .line 399
    :catch_43
    move-exception p1

    const-string p2, "LunatikFreeformFX"

    const-string p3, "unlock fade"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    :goto_4b
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    .line 401
    return-void

    .line 395
    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method static synthetic lambda$unlockFade$12(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;)V
    .registers 7

    .line 391
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->closing:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eq v0, p1, :cond_d

    goto :goto_40

    .line 392
    :cond_d
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_42

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAnimator:Landroid/animation/ValueAnimator;

    .line 393
    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 394
    new-instance v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/animation/ValueAnimator;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 402
    new-instance p2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$3;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$3;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 407
    return-void

    .line 391
    :cond_40
    :goto_40
    return-void

    nop

    :array_42
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$watchCaption$2(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V
    .registers 2

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->captionReady:Z

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->ready(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    .line 67
    return-void
.end method

.method static synthetic lambda$watchCaption$3(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V
    .registers 2

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->captionReady:Z

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->ready(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    return-void
.end method

.method static synthetic lambda$watchCaption$4(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;Landroid/view/View;)V
    .registers 4

    .line 63
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->done:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->watchedRoot:Landroid/view/View;

    if-eq v0, p1, :cond_9

    goto :goto_28

    .line 64
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->registerFrameCommitCallback(Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_27

    .line 70
    :cond_1f
    new-instance v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 72
    :goto_27
    return-void

    .line 63
    :cond_28
    :goto_28
    return-void
.end method

.method private static leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "getLeash"

    invoke-static {p0, v2, v1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private static logical(Ljava/lang/Object;)Landroid/graphics/Rect;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "configuration"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Configuration;

    .line 163
    const-string v0, "windowConfiguration"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "getBounds"

    invoke-static {p0, v2, v1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method private static marker(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;FJ)V
    .registers 7

    .line 148
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-eqz v0, :cond_5

    return-void

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 150
    :cond_e
    iget v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerOpacity:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerAnim:Landroid/animation/ValueAnimator;

    .line 151
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    new-instance p2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    return-void
.end method

.method public static menu(Landroid/view/View;)V
    .registers 2

    .line 345
    const v0, 0x7f0b03a4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 346
    if-eqz p0, :cond_e

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :cond_e
    return-void
.end method

.method public static opening(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 46
    :try_start_0
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openings:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "taskId"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;

    if-eqz v0, :cond_67

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->done:Z

    if-eqz v1, :cond_1d

    goto :goto_67

    .line 47
    :cond_1d
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->state(Ljava/lang/Object;)Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->state:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    .line 48
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_66

    .line 49
    :cond_30
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-eq p2, p1, :cond_3b

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 50
    :cond_3b
    const-string p1, "mResult"

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "mRootView"

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 51
    if-nez p0, :cond_52

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->captionReady:Z

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->ready(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    return-void

    .line 52
    :cond_52
    invoke-static {v0, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->watchCaption(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;Landroid/view/View;)V

    .line 53
    new-instance p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    iput-object p0, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->timeout:Ljava/lang/Runnable;

    .line 54
    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->handler:Landroid/os/Handler;

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->timeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_68

    .line 55
    goto :goto_70

    .line 48
    :cond_66
    :goto_66
    return-void

    .line 46
    :cond_67
    :goto_67
    return-void

    .line 55
    :catch_68
    move-exception p0

    const-string p1, "LunatikFreeformFX"

    const-string p2, "opening setup"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_70
    return-void
.end method

.method public static openingAlpha(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "LunatikFreeformFX"

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    .line 92
    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-nez v4, :cond_f

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v4, :cond_f

    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->closing:Z

    if-nez v4, :cond_f

    iget v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dismissProgress:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_32

    goto :goto_f

    .line 93
    :cond_32
    :try_start_32
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->decor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-static {v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object v2

    :goto_3f
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4c

    iget v1, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAlpha:F

    invoke-virtual {p0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4c} :catch_4d

    .line 94
    :cond_4c
    goto :goto_53

    :catch_4d
    move-exception v1

    const-string v2, "unlock alpha"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :goto_53
    goto :goto_f

    .line 97
    :cond_54
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_63
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;

    .line 98
    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->done:Z

    if-nez v4, :cond_63

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->state:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-eqz v4, :cond_63

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->state:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iget-boolean v4, v4, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-eqz v4, :cond_7e

    goto :goto_63

    .line 99
    :cond_7e
    :try_start_7e
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->state:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->decor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8a

    move-object v4, v2

    goto :goto_8e

    :cond_8a
    invoke-static {v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object v4

    :goto_8e
    if-eqz v4, :cond_9b

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_9b

    iget v1, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->alpha:F

    invoke-virtual {p0, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_9b} :catch_9c

    .line 100
    :cond_9b
    goto :goto_a2

    :catch_9c
    move-exception v1

    const-string v4, "opening alpha"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :goto_a2
    goto :goto_63

    .line 102
    :cond_a3
    return-void
.end method

.method public static queueInitial(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;

    invoke-direct {v0, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;-><init>(I)V

    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p2, "mSyncQueue"

    invoke-static {p0, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "queue"

    invoke-static {p0, v1, p2, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string p1, "com.android.wm.shell.common.SyncTransactionQueue$TransactionRunnable"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 42
    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "runInSync"

    invoke-static {p0, v0, p1, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method private static ready(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V
    .registers 9

    .line 75
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->done:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->state:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-eqz v0, :cond_83

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->appReady:Z

    if-eqz v0, :cond_83

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->captionReady:Z

    if-nez v0, :cond_15

    goto :goto_83

    .line 76
    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->state:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->decor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7f

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-eqz v2, :cond_24

    goto :goto_7f

    .line 77
    :cond_24
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->timeout:Ljava/lang/Runnable;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    :cond_2f
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_84

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->animator:Landroid/animation/ValueAnimator;

    .line 79
    const-wide/16 v3, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    new-instance v3, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, v2, p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/animation/ValueAnimator;Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    new-instance v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$1;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opening ready task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LunatikFreeformFX"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 89
    return-void

    .line 76
    :cond_7f
    :goto_7f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->done:Z

    return-void

    .line 75
    :cond_83
    :goto_83
    return-void

    :array_84
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    .registers 23

    .line 170
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-eqz v0, :cond_7

    return-void

    .line 171
    :cond_7
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->decor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    .line 173
    :cond_10
    :try_start_10
    sget-object v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->active:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_363

    const-string v3, "hide"

    if-ne v1, v2, :cond_330

    :try_start_16
    iget v2, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerOpacity:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-lez v2, :cond_330

    iget v2, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAlpha:F

    cmpg-float v2, v2, v4

    if-lez v2, :cond_330

    const-string v2, "mIsBubbleMode"

    invoke-static {v0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_330

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "isVisible"

    invoke-static {v2, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_45

    goto/16 :goto_330

    .line 177
    :cond_45
    sget-object v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openings:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "taskId"

    invoke-static {v5, v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;

    .line 178
    if-eqz v2, :cond_9a

    iget-boolean v5, v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->done:Z

    if-nez v5, :cond_9a

    iget v2, v2, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->alpha:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_9a

    .line 179
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_99

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_99

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_78} :catch_363

    :try_start_78
    const-class v0, Landroid/view/SurfaceControl;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_8a
    .catchall {:try_start_78 .. :try_end_8a} :catchall_8e

    :try_start_8a
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_363

    goto :goto_99

    :catchall_8e
    move-exception v0

    move-object v1, v0

    :try_start_90
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v0

    :try_start_95
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_98
    throw v1

    .line 180
    :cond_99
    :goto_99
    return-void

    .line 182
    :cond_9a
    const-string v2, "mVisualScale"

    invoke-static {v0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v2

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->layout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "mDensityDpi"

    invoke-static {v3, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v3, v5

    .line 183
    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->logical(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v5

    .line 184
    iget v6, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->pendingW:I

    const/4 v7, 0x0

    if-lez v6, :cond_c0

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->pendingW:I

    iget v8, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->pendingH:I

    invoke-direct {v5, v7, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 185
    :cond_c0
    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 186
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 187
    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_dd} :catch_363

    const-string v9, "setBufferSize"

    if-nez v5, :cond_179

    .line 188
    :try_start_e1
    const-string v5, "mDragPositioningCallback"

    invoke-static {v0, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 189
    const-string v10, "mTransformCommitListener"

    invoke-static {v5, v10}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v10, "f$0"

    invoke-static {v5, v10}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 190
    const-string v10, "Lunatik freeform outer resize handles"

    invoke-static {v10}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->builder(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 191
    const-string v11, "setFormat"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    const/4 v13, -0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v11, "setOpaque"

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v11, "mRootTaskDisplayAreaOrganizer"

    invoke-static {v5, v11}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v11, "attachToDisplayArea"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    filled-new-array {v12, v13}, [Ljava/lang/Class;

    move-result-object v12

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "displayId"

    invoke-static {v13, v14}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13, v10}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v5, v11, v12, v13}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v11}, [Ljava/lang/Class;

    move-result-object v5

    mul-int/lit8 v11, v6, 0x2

    add-int v12, v8, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    add-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v12, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v9, v5, v11}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v5, "build"

    new-array v11, v7, [Ljava/lang/Class;

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v10, v5, v11, v12}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    iput-object v5, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    invoke-static {v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->surface(Landroid/view/SurfaceControl;)Landroid/view/Surface;

    move-result-object v5

    iput-object v5, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerCanvasSurface:Landroid/view/Surface;

    .line 197
    :cond_179
    iget v5, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerW:I

    const/4 v10, 0x1

    if-ne v8, v5, :cond_187

    iget v5, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerH:I

    if-eq v2, v5, :cond_183

    goto :goto_187

    :cond_183
    move/from16 v20, v4

    goto/16 :goto_26e

    .line 198
    :cond_187
    :goto_187
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_18c} :catch_363

    :try_start_18c
    const-class v11, Landroid/view/SurfaceControl;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v11, v12, v13}, [Ljava/lang/Class;

    move-result-object v11

    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    mul-int/lit8 v13, v6, 0x2

    add-int v14, v8, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    add-int/2addr v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v12, v14, v13}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v5, v9, v11, v12}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1af
    .catchall {:try_start_18c .. :try_end_1af} :catchall_325

    :try_start_1af
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 199
    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerCanvasSurface:Landroid/view/Surface;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v11
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1b9} :catch_363

    .line 201
    :try_start_1b9
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v7, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 202
    const-string v5, "mDecorWindowContext"

    invoke-static {v0, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 203
    const/high16 v5, 0x42200000    # 40.0f

    mul-float/2addr v5, v3

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float/2addr v9, v3

    .line 204
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x3

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v13, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v13, 0x40333333    # 2.8f

    mul-float/2addr v13, v3

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    add-float/2addr v9, v5

    int-to-float v13, v6

    .line 206
    add-float v14, v13, v5

    int-to-float v15, v8

    add-float/2addr v15, v13

    sub-float/2addr v15, v5

    move/from16 v20, v4

    const/4 v4, 0x2

    move/from16 v21, v7

    new-array v7, v4, [F

    aput v14, v7, v21

    aput v15, v7, v10

    int-to-float v15, v2

    add-float/2addr v13, v15

    sub-float/2addr v13, v5

    new-array v4, v4, [F

    aput v14, v4, v21

    aput v13, v4, v10

    .line 207
    aget v5, v7, v21

    sub-float/2addr v5, v9

    aget v13, v4, v21

    sub-float/2addr v13, v9

    aget v14, v7, v21

    add-float/2addr v14, v9

    aget v15, v4, v21

    add-float/2addr v15, v9

    const/high16 v17, 0x42480000    # 50.0f

    const/16 v18, 0x0

    const/high16 v16, 0x43480000    # 200.0f

    move-object/from16 v19, v12

    move v12, v5

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 208
    aget v5, v7, v10

    sub-float v12, v5, v9

    aget v5, v4, v21

    sub-float v13, v5, v9

    aget v5, v7, v10

    add-float v14, v5, v9

    aget v5, v4, v21

    add-float v15, v5, v9

    const/high16 v17, 0x42480000    # 50.0f

    const/16 v18, 0x0

    const/high16 v16, 0x43910000    # 290.0f

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 209
    aget v5, v7, v21

    sub-float v12, v5, v9

    aget v5, v4, v10

    sub-float v13, v5, v9

    aget v5, v7, v21

    add-float v14, v5, v9

    aget v5, v4, v10

    add-float v15, v5, v9

    const/high16 v17, 0x42480000    # 50.0f

    const/16 v18, 0x0

    const/high16 v16, 0x42dc0000    # 110.0f

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 210
    aget v5, v7, v10

    sub-float v12, v5, v9

    aget v5, v4, v10

    sub-float v13, v5, v9

    aget v5, v7, v10

    add-float v14, v5, v9

    aget v4, v4, v10

    add-float v15, v4, v9

    const/high16 v17, 0x42480000    # 50.0f

    const/16 v18, 0x0

    const/high16 v16, 0x41a00000    # 20.0f

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V
    :try_end_265
    .catchall {:try_start_1b9 .. :try_end_265} :catchall_31e

    .line 211
    :try_start_265
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerCanvasSurface:Landroid/view/Surface;

    invoke-virtual {v4, v11}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 212
    iput v8, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerW:I

    iput v2, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerH:I

    .line 214
    :goto_26e
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_273} :catch_363

    .line 215
    :try_start_273
    iget v5, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dismissProgress:F

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v7, v5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v9, v7

    .line 216
    const-string v11, "mVisualPosX"

    invoke-static {v0, v11}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v11

    int-to-float v8, v8

    sub-float v12, v9, v7

    mul-float/2addr v8, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v8, v13

    add-float/2addr v11, v8

    .line 217
    const-string v8, "mVisualPosY"

    invoke-static {v0, v8}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v0

    int-to-float v2, v2

    mul-float/2addr v2, v12

    div-float/2addr v2, v13

    add-float/2addr v0, v2

    const/high16 v2, 0x425c0000    # 55.0f

    mul-float/2addr v3, v2

    mul-float/2addr v3, v5

    sub-float/2addr v0, v3

    .line 218
    const-string v2, "setMatrix"

    const-class v3, Landroid/view/SurfaceControl;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v5, v8, v12, v13}, [Ljava/lang/Class;

    move-result-object v3

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    filled-new-array {v5, v8, v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v3, v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    int-to-float v3, v6

    mul-float/2addr v3, v7

    sub-float/2addr v11, v3

    sub-float/2addr v0, v3

    invoke-virtual {v4, v2, v11, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 220
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    const v2, 0x7ffffd78

    invoke-virtual {v4, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 221
    const-string v0, "setTrustedOverlay"

    const-class v2, Landroid/view/SurfaceControl;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v0, v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    iget v2, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerOpacity:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget v3, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dismissProgress:F

    sub-float/2addr v9, v3

    mul-float/2addr v2, v9

    iget v3, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAlpha:F

    mul-float/2addr v2, v3

    invoke-virtual {v4, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 223
    const-string v0, "show"

    const-class v2, Landroid/view/SurfaceControl;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v0, v2, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_30f
    .catchall {:try_start_273 .. :try_end_30f} :catchall_313

    .line 224
    :try_start_30f
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_312
    .catch Ljava/lang/Exception; {:try_start_30f .. :try_end_312} :catch_363

    .line 225
    goto :goto_36b

    .line 214
    :catchall_313
    move-exception v0

    move-object v1, v0

    :try_start_315
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_318
    .catchall {:try_start_315 .. :try_end_318} :catchall_319

    goto :goto_31d

    :catchall_319
    move-exception v0

    :try_start_31a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_31d
    throw v1

    .line 211
    :catchall_31e
    move-exception v0

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->markerCanvasSurface:Landroid/view/Surface;

    invoke-virtual {v1, v11}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0
    :try_end_325
    .catch Ljava/lang/Exception; {:try_start_31a .. :try_end_325} :catch_363

    .line 198
    :catchall_325
    move-exception v0

    move-object v1, v0

    :try_start_327
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_32a
    .catchall {:try_start_327 .. :try_end_32a} :catchall_32b

    goto :goto_32f

    :catchall_32b
    move-exception v0

    :try_start_32c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32f
    throw v1

    .line 174
    :cond_330
    :goto_330
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_362

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_362

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_341
    .catch Ljava/lang/Exception; {:try_start_32c .. :try_end_341} :catch_363

    :try_start_341
    const-class v0, Landroid/view/SurfaceControl;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->marker:Landroid/view/SurfaceControl;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_353
    .catchall {:try_start_341 .. :try_end_353} :catchall_357

    :try_start_353
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_356
    .catch Ljava/lang/Exception; {:try_start_353 .. :try_end_356} :catch_363

    goto :goto_362

    :catchall_357
    move-exception v0

    move-object v1, v0

    :try_start_359
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_35c
    .catchall {:try_start_359 .. :try_end_35c} :catchall_35d

    goto :goto_361

    :catchall_35d
    move-exception v0

    :try_start_35e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_361
    throw v1
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_35e .. :try_end_362} :catch_363

    .line 175
    :cond_362
    :goto_362
    return-void

    .line 225
    :catch_363
    move-exception v0

    const-string v1, "LunatikFreeformFX"

    const-string v2, "markers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_36b
    return-void
.end method

.method public static resize(Ljava/lang/Object;)V
    .registers 3

    .line 265
    :try_start_0
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->state(Ljava/lang/Object;)Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    move-result-object v0

    .line 266
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->resizing:Z

    if-nez v1, :cond_e

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->resizing:Z

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->reveal(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 267
    :cond_e
    goto :goto_17

    :catch_f
    move-exception p0

    const-string v0, "LunatikFreeformFX"

    const-string v1, "resize handles"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    :goto_17
    return-void
.end method

.method public static reveal(Ljava/lang/Object;)V
    .registers 4

    .line 256
    :try_start_0
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->state(Ljava/lang/Object;)Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->activate(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->hide:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    :cond_12
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x82

    invoke-static {p0, v0, v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->marker(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;FJ)V

    .line 258
    new-instance v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->hide:Ljava/lang/Runnable;

    .line 259
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->hide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x6a4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 260
    goto :goto_32

    :catch_2a
    move-exception p0

    const-string v0, "LunatikFreeformFX"

    const-string v1, "reveal"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    :goto_32
    return-void
.end method

.method public static sinkRegion(Ljava/lang/Object;Landroid/graphics/Region;)Landroid/graphics/Region;
    .registers 6

    .line 336
    :try_start_0
    const-string v0, "mDisplayController"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    const-string v1, "getDisplayLayout"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mDisplayId"

    invoke-static {p0, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_3b

    const-string v1, "mWidth"

    invoke-static {v0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    const-string v2, "mDensityDpi"

    invoke-static {v0, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3b

    return-object p1

    .line 341
    :cond_3b
    new-instance v0, Landroid/graphics/Region;

    const-string v1, "mTouchRegion"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Region;

    invoke-direct {v0, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    return-object v0

    .line 342
    :catch_49
    move-exception p0

    const-string v0, "LunatikFreeformFX"

    const-string v1, "input sink"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private static state(Ljava/lang/Object;)Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private static surface(Landroid/view/SurfaceControl;)Landroid/view/Surface;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    const-class v0, Landroid/view/Surface;

    const-class v1, Landroid/view/SurfaceControl;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    return-object p0
.end method

.method public static transform(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->update(Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    if-eqz p0, :cond_16

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->dead:Z

    if-eqz v0, :cond_12

    goto :goto_16

    .line 167
    :cond_12
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    .line 168
    return-void

    .line 166
    :cond_16
    :goto_16
    return-void
.end method

.method private static unit(Ljava/lang/Object;)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->layout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mDensityDpi"

    invoke-static {v0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    const-string v1, "mVisualScale"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result p0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method private static unlockFade(Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 386
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockTransaction:Landroid/view/SurfaceControl$Transaction;

    if-ne v0, p2, :cond_5

    return-void

    .line 387
    :cond_5
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 388
    :cond_e
    iput-object p2, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAlpha:F

    .line 389
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->leash(Ljava/lang/Object;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    .line 390
    new-instance v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 408
    return-void
.end method

.method private static watchCaption(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;Landroid/view/View;)V
    .registers 3

    .line 58
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->done:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->captionReady:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->watchedRoot:Landroid/view/View;

    if-ne v0, p1, :cond_d

    goto :goto_18

    .line 59
    :cond_d
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->watchedRoot:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void

    .line 58
    :cond_18
    :goto_18
    return-void
.end method
