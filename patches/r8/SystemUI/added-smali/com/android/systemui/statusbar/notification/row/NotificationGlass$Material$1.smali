.class Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;
.super Ljava/lang/Object;
.source "NotificationGlass.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;-><init>(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->preDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->preDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_20
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->preDraw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_23
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->root:Ljava/lang/Object;

    return-void
.end method
