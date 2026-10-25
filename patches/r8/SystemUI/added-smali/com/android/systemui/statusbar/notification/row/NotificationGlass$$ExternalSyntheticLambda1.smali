.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:J

.field public final synthetic f$2:F

.field public final synthetic f$3:[Z


# direct methods
.method public synthetic constructor <init>(IJF[Z)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;->f$0:I

    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;->f$1:J

    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;->f$2:F

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;->f$3:[Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;->f$0:I

    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;->f$1:J

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;->f$2:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;->f$3:[Z

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->lambda$composeVolumeSlot$2(IJF[ZLjava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
