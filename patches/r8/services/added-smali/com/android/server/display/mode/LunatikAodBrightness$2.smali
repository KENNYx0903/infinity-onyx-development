.class Lcom/android/server/display/mode/LunatikAodBrightness$2;
.super Ljava/lang/Object;
.source "LunatikAodBrightness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/mode/LunatikAodBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/mode/LunatikAodBrightness;


# direct methods
.method constructor <init>(Lcom/android/server/display/mode/LunatikAodBrightness;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->active:Z
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$000(Lcom/android/server/display/mode/LunatikAodBrightness;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$100(Lcom/android/server/display/mode/LunatikAodBrightness;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$600(Lcom/android/server/display/mode/LunatikAodBrightness;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_72

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$900(Lcom/android/server/display/mode/LunatikAodBrightness;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    goto :goto_72

    .line 41
    :cond_23
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    iget-object v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I
    invoke-static {v2}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$600(Lcom/android/server/display/mode/LunatikAodBrightness;)I

    move-result v2

    # invokes: Lcom/android/server/display/mode/LunatikAodBrightness;->write(I)Z
    invoke-static {v0, v2}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$1000(Lcom/android/server/display/mode/LunatikAodBrightness;I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 42
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    const/4 v1, -0x1

    # setter for: Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I
    invoke-static {v0, v1}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$602(Lcom/android/server/display/mode/LunatikAodBrightness;I)I

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$1100(Lcom/android/server/display/mode/LunatikAodBrightness;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$1100(Lcom/android/server/display/mode/LunatikAodBrightness;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$1100(Lcom/android/server/display/mode/LunatikAodBrightness;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_71

    .line 43
    :cond_55
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # ++operator for: Lcom/android/server/display/mode/LunatikAodBrightness;->retries:I
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$704(Lcom/android/server/display/mode/LunatikAodBrightness;)I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_71

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$900(Lcom/android/server/display/mode/LunatikAodBrightness;)I

    move-result v0

    if-ne v0, v1, :cond_71

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$2;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$400(Lcom/android/server/display/mode/LunatikAodBrightness;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    :cond_71
    :goto_71
    return-void

    .line 40
    :cond_72
    :goto_72
    return-void
.end method
