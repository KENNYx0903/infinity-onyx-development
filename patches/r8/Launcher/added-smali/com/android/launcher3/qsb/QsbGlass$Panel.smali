.class final Lcom/android/launcher3/qsb/QsbGlass$Panel;
.super Ljava/lang/Object;
.source "QsbGlass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/qsb/QsbGlass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Panel"
.end annotation


# instance fields
.field final bounds:Landroid/graphics/Rect;

.field final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Panel;->bounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Panel;->paint:Landroid/graphics/Paint;

    return-void
.end method
