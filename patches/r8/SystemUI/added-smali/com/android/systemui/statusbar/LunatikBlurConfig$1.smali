.class Lcom/android/systemui/statusbar/LunatikBlurConfig$1;
.super Landroid/database/ContentObserver;
.source "LunatikBlurConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/LunatikBlurConfig;->init()V
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
    .registers 2

    .line 8
    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->read()V

    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->refresh()V

    return-void
.end method
