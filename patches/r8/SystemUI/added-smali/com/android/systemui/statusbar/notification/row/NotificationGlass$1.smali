.class Lcom/android/systemui/statusbar/notification/row/NotificationGlass$1;
.super Landroid/database/ContentObserver;
.source "NotificationGlass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 8
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->read()V

    sget-boolean p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enabled:Z

    if-eqz p1, :cond_b

    sget-boolean p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->blur:Z

    if-nez p1, :cond_22

    :cond_b
    sget p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->transitionGeneration:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->transitionGeneration:I

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->unguard()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->applyContent(F)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentAlpha:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->gutsOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_22
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->views:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_2c

    :cond_3e
    return-void
.end method
