.class public final synthetic Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/BlurSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/BlurSettings;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/display/BlurSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/display/BlurSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/display/BlurSettings;->lambda$onCreatePreferences$1$com-android-settings-display-BlurSettings(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
