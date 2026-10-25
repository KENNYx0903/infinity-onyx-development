.class public final Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;
.super Ljava/lang/Object;
.source "SidebarPolicy.java"


# static fields
.field private static final H:Landroid/os/Handler;

.field private static final KEYS:[Ljava/lang/String;

.field private static final OBSERVER:Landroid/database/ContentObserver;

.field private static final REFRESH:Ljava/lang/Runnable;

.field private static mode:I

.field private static pkg:Ljava/lang/String;

.field private static resolver:Landroid/content/ContentResolver;

.field private static shown:Z

.field private static sidebar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->H:Landroid/os/Handler;

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->sidebar:Ljava/lang/ref/WeakReference;

    .line 20
    const-string v9, "gamespace_denied_list"

    const-string v10, "sidebar_video_list"

    const-string v2, "sidebar_enabled"

    const-string v3, "sidebar_mode_game"

    const-string v4, "sidebar_mode_video"

    const-string v5, "sidebar_mode_plain"

    const-string v6, "sidebar_excluded_list"

    const-string v7, "sidebar_removed_apps"

    const-string v8, "gamespace_game_list"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->KEYS:[Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->REFRESH:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy$1;

    sget-object v1, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->H:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->OBSERVER:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Runnable;
    .registers 1

    .line 13
    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->REFRESH:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .line 13
    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->H:Landroid/os/Handler;

    return-object v0
.end method

.method private static allowed()Z
    .registers 9

    .line 36
    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a9

    const-string v0, "sidebar_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->flag(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_a9

    .line 37
    :cond_10
    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->resolver:Landroid/content/ContentResolver;

    const-string v3, "sidebar_excluded_list"

    invoke-static {v0, v3}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->set(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->resolver:Landroid/content/ContentResolver;

    const-string v3, "sidebar_removed_apps"

    invoke-static {v0, v3}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->set(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->resolver:Landroid/content/ContentResolver;

    const-string v3, "gamespace_denied_list"

    invoke-static {v0, v3}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->set(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_a8

    .line 38
    :cond_4d
    sget v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_87

    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->resolver:Landroid/content/ContentResolver;

    const-string v4, "sidebar_video_list"

    invoke-static {v0, v4}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    move v5, v1

    :goto_62
    if-ge v5, v4, :cond_87

    aget-object v6, v0, v5

    const-string v7, "="

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-ne v7, v3, :cond_84

    sget-object v7, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    const-string v7, "0"

    aget-object v6, v6, v2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    return v1

    :cond_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 39
    :cond_87
    sget v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    if-ne v0, v2, :cond_92

    const-string v0, "sidebar_mode_game"

    :goto_8d
    invoke-static {v0, v2}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->flag(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_a7

    :cond_92
    sget v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    if-ne v0, v3, :cond_99

    const-string v0, "sidebar_mode_video"

    goto :goto_8d

    :cond_99
    sget v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a7

    const-string v0, "sidebar_mode_plain"

    invoke-static {v0, v1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->flag(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a7

    move v1, v2

    :cond_a7
    :goto_a7
    return v1

    .line 37
    :cond_a8
    :goto_a8
    return v1

    .line 36
    :cond_a9
    :goto_a9
    return v1
.end method

.method public static changeMode(Ljava/lang/Object;I)V
    .registers 3

    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->init(Ljava/lang/Object;)V

    sget v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    if-eq v0, p1, :cond_a

    invoke-static {p0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->hide(Ljava/lang/Object;)V

    :cond_a
    sput p1, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    invoke-static {}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->refresh()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string p1, "SidebarPolicy"

    const-string v0, "mode"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method public static end(Ljava/lang/Object;)V
    .registers 4

    .line 66
    :try_start_0
    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->sidebar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x0

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    sput-boolean v1, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->shown:Z

    :cond_e
    const-string v0, "sidebarOriginalEnd"

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception p0

    const-string v0, "SidebarPolicy"

    const-string v1, "end"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static flag(Ljava/lang/String;Z)Z
    .registers 3

    .line 26
    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->resolver:Landroid/content/ContentResolver;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static gamesChanged(Landroid/content/ContentResolver;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 70
    const-string v0, ";"

    const-string v1, "sidebar_removed_apps"

    :try_start_4
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "gamespace_game_list"

    invoke-static {p0, v3}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v4, :cond_33

    aget-object v7, v3, v6

    const-string v8, "="

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_30

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 71
    :cond_33
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getPackageName"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 72
    :cond_5e
    invoke-static {p0, v1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->set(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 73
    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_80} :catch_81

    .line 74
    :cond_80
    goto :goto_89

    :catch_81
    move-exception p0

    const-string p1, "SidebarPolicy"

    const-string v0, "game list"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_89
    return-void
.end method

.method private static get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const-string p0, ""

    :cond_8
    return-object p0
.end method

.method private static hide(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    sget-boolean v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->shown:Z

    if-eqz v0, :cond_66

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->shown:Z

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "shouldClose"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 46
    const-string v1, "handler"

    invoke-static {p0, v1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "forceRemovePanel"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "gameBarView"

    invoke-static {p0, v1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 49
    if-eqz v1, :cond_53

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "wm"

    invoke-static {p0, v2}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 50
    :cond_53
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "setGestureLock"

    invoke-static {p0, v2, v1, v0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 52
    :cond_66
    return-void
.end method

.method private static init(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->sidebar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_48

    .line 29
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 30
    sget-object v1, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->resolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->OBSERVER:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 31
    :cond_1b
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->resolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->sidebar:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->shown:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->KEYS:[Ljava/lang/String;

    array-length v1, v0

    move v2, p0

    :goto_36
    if-ge v2, v1, :cond_48

    aget-object v3, v0, v2

    sget-object v4, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->resolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v5, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->OBSERVER:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 34
    :cond_48
    return-void
.end method

.method private static varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$static$0()V
    .registers 0

    .line 21
    invoke-static {}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->refresh()V

    return-void
.end method

.method private static refresh()V
    .registers 6

    .line 54
    const-string v0, "SidebarPolicy"

    sget-object v1, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->sidebar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_74

    sget-object v2, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    if-nez v2, :cond_f

    goto :goto_74

    .line 56
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->allowed()Z

    move-result v2

    .line 57
    if-nez v2, :cond_19

    invoke-static {v1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->hide(Ljava/lang/Object;)V

    goto :goto_39

    .line 58
    :cond_19
    sget-boolean v2, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->shown:Z

    if-nez v2, :cond_39

    const/4 v2, 0x1

    sput-boolean v2, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->shown:Z

    const-string v2, "sidebarOriginalStart"

    const-class v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    sget v5, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 59
    :cond_39
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->shown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_69} :catch_6a

    .line 60
    goto :goto_73

    :catch_6a
    move-exception v1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->shown:Z

    const-string v2, "refresh"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_73
    return-void

    .line 54
    :cond_74
    :goto_74
    return-void
.end method

.method private static set(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method public static start(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 4

    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->init(Ljava/lang/Object;)V

    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    if-eq v0, p2, :cond_16

    :cond_13
    invoke-static {p0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->hide(Ljava/lang/Object;)V

    :cond_16
    sput-object p1, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->pkg:Ljava/lang/String;

    sput p2, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->mode:I

    invoke-static {}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->refresh()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception p0

    const-string p1, "SidebarPolicy"

    const-string p2, "start"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_26
    return-void
.end method
