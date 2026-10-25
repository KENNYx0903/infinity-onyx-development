.class Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy$1;
.super Landroid/database/ContentObserver;
.source "SidebarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 22
    # getter for: Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->access$100()Landroid/os/Handler;

    move-result-object p1

    # getter for: Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->REFRESH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->access$000()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    # getter for: Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->access$100()Landroid/os/Handler;

    move-result-object p1

    # getter for: Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->REFRESH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->access$000()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
