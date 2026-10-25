.class final Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;
.super Ljava/lang/Object;
.source "LunatikFreeform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/LunatikFreeform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResizeFrame"
.end annotation


# instance fields
.field drawn:J

.field ended:Z

.field inFlight:Z

.field pending:Landroid/graphics/Rect;

.field submitted:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/LunatikFreeform$1;)V
    .registers 2

    .line 163
    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;-><init>()V

    return-void
.end method
