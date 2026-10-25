.class public final Lcom/android/systemui/doze/LunatikIndicationFade;
.super Ljava/lang/Object;
.source "LunatikIndicationFade.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final handler:Landroid/os/Handler;

.field private static pending:Lcom/android/systemui/doze/LunatikIndicationFade;


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/LunatikIndicationFade;->view:Landroid/view/View;

    return-void
.end method

.method public static defer(Landroid/view/View;I)Z
    .registers 3

    .line 19
    sget-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    iget-object v0, v0, Lcom/android/systemui/doze/LunatikIndicationFade;->view:Landroid/view/View;

    if-ne v0, p0, :cond_e

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static transition(Landroid/view/View;Z)V
    .registers 5

    .line 11
    sget-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    iget-object v0, v0, Lcom/android/systemui/doze/LunatikIndicationFade;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    sget-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    iget-object v0, v0, Lcom/android/systemui/doze/LunatikIndicationFade;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    .line 12
    :cond_22
    if-nez p0, :cond_25

    return-void

    .line 13
    :cond_25
    if-nez p1, :cond_2b

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 14
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_32

    return-void

    .line 15
    :cond_32
    new-instance p1, Lcom/android/systemui/doze/LunatikIndicationFade;

    invoke-direct {p1, p0}, Lcom/android/systemui/doze/LunatikIndicationFade;-><init>(Landroid/view/View;)V

    sput-object p1, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 17
    sget-object p0, Lcom/android/systemui/doze/LunatikIndicationFade;->handler:Landroid/os/Handler;

    sget-object p1, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    const-wide/16 v0, 0xaa

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 20
    sget-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    if-eq v0, p0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/doze/LunatikIndicationFade;->pending:Lcom/android/systemui/doze/LunatikIndicationFade;

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikIndicationFade;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikIndicationFade;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
