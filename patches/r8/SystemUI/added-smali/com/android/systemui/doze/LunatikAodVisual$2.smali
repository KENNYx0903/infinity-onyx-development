.class Lcom/android/systemui/doze/LunatikAodVisual$2;
.super Ljava/lang/Object;
.source "LunatikAodVisual.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/LunatikAodVisual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 49
    # invokes: Lcom/android/systemui/doze/LunatikAodVisual;->invalidate()V
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$800()V

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$000()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->refresh()V

    :cond_c
    return-void
.end method
