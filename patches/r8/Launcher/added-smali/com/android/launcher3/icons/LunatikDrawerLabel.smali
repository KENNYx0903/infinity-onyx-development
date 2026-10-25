.class public final Lcom/android/launcher3/icons/LunatikDrawerLabel;
.super Ljava/lang/Object;
.source "LunatikDrawerLabel.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fit(Landroid/widget/TextView;I)V
    .registers 5

    invoke-static {p0}, Lcom/android/launcher3/icons/DrawerLabelToggle;->enabled(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 6
    :cond_e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x2

    .line 7
    if-gtz p1, :cond_21

    return-void

    .line 8
    :cond_21
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_28

    return-void

    .line 9
    :cond_28
    new-instance v1, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 10
    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 11
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4b

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 12
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextScaleX()F

    move-result p1

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5e

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 13
    :cond_5e
    return-void
.end method
