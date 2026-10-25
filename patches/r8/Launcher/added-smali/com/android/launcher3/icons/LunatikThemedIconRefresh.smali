.class public final Lcom/android/launcher3/icons/LunatikThemedIconRefresh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final provider:Lcom/android/launcher3/icons/LauncherIconProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/LauncherIconProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/LunatikThemedIconRefresh;->provider:Lcom/android/launcher3/icons/LauncherIconProvider;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/LunatikThemedIconRefresh;->provider:Lcom/android/launcher3/icons/LauncherIconProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIconProvider;->refreshThemedIconsNow()V

    return-void
.end method
