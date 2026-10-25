.class final Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;
.super Landroid/graphics/drawable/Drawable;
.source "LunatikFreeformEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Dots"
.end annotation


# instance fields
.field final paint:Landroid/graphics/Paint;

.field final u:F


# direct methods
.method constructor <init>(F)V
    .registers 4

    .line 477
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 476
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->paint:Landroid/graphics/Paint;

    .line 477
    iput p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->u:F

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 480
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    const/4 v2, -0x1

    :goto_d
    const/4 v3, 0x1

    if-gt v2, v3, :cond_25

    mul-int/lit8 v3, v2, 0x8

    int-to-float v3, v3

    iget v4, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->u:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    const v4, 0x40066666    # 2.1f

    iget v5, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->u:F

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 3

    .line 479
    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->u:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    .line 478
    const/high16 v0, 0x41c00000    # 24.0f

    iget v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->u:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 483
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Dots;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
