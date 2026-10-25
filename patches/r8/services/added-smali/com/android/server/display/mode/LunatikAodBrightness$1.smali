.class Lcom/android/server/display/mode/LunatikAodBrightness$1;
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

    .line 33
    iput-object p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 34
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->active:Z
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$000(Lcom/android/server/display/mode/LunatikAodBrightness;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$100(Lcom/android/server/display/mode/LunatikAodBrightness;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$200(Lcom/android/server/display/mode/LunatikAodBrightness;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1a

    goto :goto_60

    .line 35
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->candidateSince:J
    invoke-static {v2}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$300(Lcom/android/server/display/mode/LunatikAodBrightness;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    sub-long/2addr v2, v0

    .line 36
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_38

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$400(Lcom/android/server/display/mode/LunatikAodBrightness;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 37
    :cond_38
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    iget-object v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I
    invoke-static {v1}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$200(Lcom/android/server/display/mode/LunatikAodBrightness;)I

    move-result v1

    # setter for: Lcom/android/server/display/mode/LunatikAodBrightness;->ambientMode:I
    invoke-static {v0, v1}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$502(Lcom/android/server/display/mode/LunatikAodBrightness;I)I

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    iget-object v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # getter for: Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I
    invoke-static {v1}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$200(Lcom/android/server/display/mode/LunatikAodBrightness;)I

    move-result v1

    # setter for: Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I
    invoke-static {v0, v1}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$602(Lcom/android/server/display/mode/LunatikAodBrightness;I)I

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    const/4 v1, -0x1

    # setter for: Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I
    invoke-static {v0, v1}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$202(Lcom/android/server/display/mode/LunatikAodBrightness;I)I

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/mode/LunatikAodBrightness;->retries:I
    invoke-static {v0, v1}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$702(Lcom/android/server/display/mode/LunatikAodBrightness;I)I

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness$1;->this$0:Lcom/android/server/display/mode/LunatikAodBrightness;

    # invokes: Lcom/android/server/display/mode/LunatikAodBrightness;->requestDraw()V
    invoke-static {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->access$800(Lcom/android/server/display/mode/LunatikAodBrightness;)V

    .line 38
    return-void

    .line 34
    :cond_60
    :goto_60
    return-void
.end method
