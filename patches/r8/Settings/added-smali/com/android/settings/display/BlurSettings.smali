.class public Lcom/android/settings/display/BlurSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BlurSettings.java"


# static fields
.field public static final D:Ljava/lang/String; = "lunatik_blur_darkness"

.field public static final R:Ljava/lang/String; = "lunatik_blur_radius"


# instance fields
.field dark:Landroidx/preference/SeekBarPreference;

.field enabled:Landroidx/preference/SwitchPreferenceCompat;

.field mode:Landroidx/preference/SeekBarPreference;

.field radius:Landroidx/preference/SeekBarPreference;

.field ru:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method currentMode()I
    .registers 5

    .line 17
    const-string v0, "lunatik_notification_glass"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/display/BlurSettings;->read(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    const/4 v0, 0x2

    :goto_d
    const-string v3, "lunatik_blur_mode"

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/display/BlurSettings;->read(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    .line 6
    const/16 v0, 0x7cf

    return v0
.end method

.method synthetic lambda$onCreatePreferences$0$com-android-settings-display-BlurSettings(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 8
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    xor-int/lit8 p3, p2, 0x1

    const-string v0, "disable_window_blurs"

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/display/BlurSettings;->dark:Landroidx/preference/SeekBarPreference;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1f

    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->currentMode()I

    move-result v1

    if-le v1, v0, :cond_1f

    move v1, v0

    goto :goto_20

    :cond_1f
    move v1, p3

    :goto_20
    invoke-virtual {p1, v1}, Landroidx/preference/SeekBarPreference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/display/BlurSettings;->radius:Landroidx/preference/SeekBarPreference;

    if-eqz p2, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->currentMode()I

    move-result p2

    if-le p2, v0, :cond_2e

    move p3, v0

    :cond_2e
    invoke-virtual {p1, p3}, Landroidx/preference/SeekBarPreference;->setEnabled(Z)V

    return v0
.end method

.method synthetic lambda$onCreatePreferences$1$com-android-settings-display-BlurSettings(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string v0, "lunatik_blur_mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/display/BlurSettings;->put(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/display/BlurSettings;->updateMode(I)V

    return p2
.end method

.method synthetic lambda$onCreatePreferences$2$com-android-settings-display-BlurSettings(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 12
    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->sync()V

    return-void
.end method

.method synthetic lambda$onCreatePreferences$3$com-android-settings-display-BlurSettings(Landroid/content/Context;Landroidx/preference/Preference;)Z
    .registers 4

    .line 12
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u0421\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u044b?"

    const-string v0, "Copy settings?"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u0422\u0435\u043a\u0443\u0449\u0438\u0435 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u044b \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0433\u043e \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u044f \u0431\u0443\u0434\u0443\u0442 \u0437\u0430\u043c\u0435\u043d\u0435\u043d\u044b \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0430\u043c\u0438 \u043c\u0435\u043d\u044e \u043b\u0430\u0443\u043d\u0447\u0435\u0440\u0430."

    const-string v0, "Replace system blur settings with the current launcher app drawer settings?"

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u0421\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    const-string v0, "Copy"

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/display/BlurSettings;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreatePreferences$4$com-android-settings-display-BlurSettings(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 13
    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->reset()V

    return-void
.end method

.method synthetic lambda$onCreatePreferences$5$com-android-settings-display-BlurSettings(Landroid/content/Context;Landroidx/preference/Preference;)Z
    .registers 4

    .line 13
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438?"

    const-string v0, "Reset settings?"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0431\u0443\u0434\u0443\u0442 \u0441\u0431\u0440\u043e\u0448\u0435\u043d\u044b \u0434\u043e \u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0443\u0435\u043c\u044b\u0445."

    const-string v0, "Settings will be reset to the recommended values."

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c"

    const-string v0, "Reset"

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/display/BlurSettings;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$slider$6$com-android-settings-display-BlurSettings(Ljava/lang/String;Landroidx/preference/SeekBarPreference;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 16
    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/display/BlurSettings;->put(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 11

    .line 7
    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ru"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/display/BlurSettings;->ru:Z

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    const-string v1, "\u0420\u0435\u0433\u0443\u043b\u0438\u0440\u043e\u0432\u043a\u0430 \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u044f"

    const-string v2, "Blur settings"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/display/BlurSettings;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 8
    new-instance p2, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p2, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/BlurSettings;->enabled:Landroidx/preference/SwitchPreferenceCompat;

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->enabled:Landroidx/preference/SwitchPreferenceCompat;

    const-string v1, "enable_blurs_on_windows"

    invoke-virtual {p2, v1}, Landroidx/preference/SwitchPreferenceCompat;->setKey(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->enabled:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p2, v0}, Landroidx/preference/SwitchPreferenceCompat;->setPersistent(Z)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->enabled:Landroidx/preference/SwitchPreferenceCompat;

    const-string v1, "\u0420\u0430\u0437\u043c\u044b\u0442\u0438\u0435 \u043d\u0430 \u0443\u0440\u043e\u0432\u043d\u0435 \u043e\u043a\u043e\u043d"

    const-string v3, "Window-level blur"

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/SwitchPreferenceCompat;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->enabled:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "disable_window_blurs"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_6b

    move v1, v3

    goto :goto_6c

    :cond_6b
    move v1, v0

    :goto_6c
    invoke-virtual {p2, v1}, Landroidx/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->enabled:Landroidx/preference/SwitchPreferenceCompat;

    new-instance v1, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/BlurSettings;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->enabled:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 9
    new-instance p2, Landroidx/preference/SeekBarPreference;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    const v1, 0x7f0e0265

    invoke-virtual {p2, v1}, Landroidx/preference/SeekBarPreference;->setLayoutResource(I)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    const-string v1, "lunatik_blur_mode"

    invoke-virtual {p2, v1}, Landroidx/preference/SeekBarPreference;->setKey(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/SeekBarPreference;->setPersistent(Z)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    const-string v1, "\u0420\u0435\u0436\u0438\u043c \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u044f"

    const-string v4, "Blur mode"

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p2, v3}, Landroidx/preference/SeekBarPreference;->setMin(I)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p2, v3}, Landroidx/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    :try_start_b7
    const-class p2, Landroidx/preference/SeekBarPreference;

    const-string v1, "mShowSeekBarValue"

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p2, v1, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c7} :catch_c8

    goto :goto_c9

    :catch_c8
    move-exception v0

    :goto_c9
    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->currentMode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    new-instance v0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/BlurSettings;)V

    invoke-virtual {p2, v0}, Landroidx/preference/SeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p2, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    invoke-virtual {v2, p2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 10
    const-string p2, "\u0417\u0430\u0442\u0435\u043c\u043d\u0435\u043d\u0438\u0435"

    const-string v0, "Darkness"

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2b

    const-string v7, "%"

    const-string v3, "lunatik_blur_darkness"

    const/16 v5, 0x64

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/display/BlurSettings;->slider(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroidx/preference/SeekBarPreference;

    move-result-object p2

    iput-object p2, v1, Lcom/android/settings/display/BlurSettings;->dark:Landroidx/preference/SeekBarPreference;

    const-string p2, "\u0420\u0430\u0434\u0438\u0443\u0441 \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u044f"

    const-string v0, "Blur radius"

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x3c

    const-string v7, " px"

    const-string v3, "lunatik_blur_radius"

    const/16 v5, 0x96

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/display/BlurSettings;->slider(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroidx/preference/SeekBarPreference;

    move-result-object p2

    iput-object p2, v1, Lcom/android/settings/display/BlurSettings;->radius:Landroidx/preference/SeekBarPreference;

    .line 11
    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->currentMode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/display/BlurSettings;->updateMode(I)V

    .line 12
    new-instance p2, Landroidx/preference/Preference;

    invoke-direct {p2, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v0, "\u041a\u0430\u043a \u0432 \u043c\u0435\u043d\u044e \u043b\u0430\u0443\u043d\u0447\u0435\u0440\u0430"

    const-string v3, "Match launcher app drawer"

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "\u0421\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0442\u0435\u043a\u0443\u0449\u0438\u0439 \u0440\u0430\u0434\u0438\u0443\u0441 \u0438 \u0437\u0430\u0442\u0435\u043c\u043d\u0435\u043d\u0438\u0435 \u043c\u0435\u043d\u044e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    const-string v3, "Copy the current app drawer blur radius and darkness"

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/display/BlurSettings;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v2, p2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 13
    new-instance p2, Landroidx/preference/Preference;

    invoke-direct {p2, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v0, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    const-string v3, "Reset settings"

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "\u0412\u0435\u0440\u043d\u0443\u0442\u044c \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u044b \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u044f \u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e"

    const-string v3, "Restore the default blur settings"

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/display/BlurSettings;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v2, p2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 15
    new-instance p2, Landroidx/preference/Preference;

    invoke-direct {p2, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string p1, "1 \u2014 \u0441\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u043d\u043e\u0435 \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u0435 Android.\n2 \u2014 \u043d\u0430\u0441\u0442\u0440\u0430\u0438\u0432\u0430\u0435\u043c\u043e\u0435 \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u0435 \u0446\u0435\u043d\u0442\u0440\u0430 \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u044f \u0438 \u044d\u043a\u0440\u0430\u043d\u0430 \u0432\u0432\u043e\u0434\u0430 PIN-\u043a\u043e\u0434\u0430 \u0438\u043b\u0438 \u0433\u0440\u0430\u0444\u0438\u0447\u0435\u0441\u043a\u043e\u0433\u043e \u043a\u043b\u044e\u0447\u0430.\n3 \u2014 \u0434\u043e\u043f\u043e\u043b\u043d\u0438\u0442\u0435\u043b\u044c\u043d\u043e \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f, \u043f\u0430\u043d\u0435\u043b\u044c \u0433\u0440\u043e\u043c\u043a\u043e\u0441\u0442\u0438, \u0444\u043e\u043d \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043a\u0430 \u0438 \u0432\u043d\u0435\u0448\u043d\u044f\u044f \u043f\u043e\u0434\u043b\u043e\u0436\u043a\u0430 Google-\u043f\u0430\u043d\u0435\u043b\u0438."

    const-string v0, "1 \u2014 standard Android blur.\n2 \u2014 custom blur for Quick Settings and the PIN or pattern entry screen.\n3 \u2014 also notifications, volume controls, fingerprint background and the outer Google search panel."

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method put(Ljava/lang/String;I)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method read(Ljava/lang/String;I)I
    .registers 4

    .line 5
    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method reset()V
    .registers 6

    .line 19
    const-string v0, "lunatik_blur_mode"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/display/BlurSettings;->put(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/display/BlurSettings;->updateMode(I)V

    const-string v0, "lunatik_blur_radius"

    const/16 v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/display/BlurSettings;->put(Ljava/lang/String;I)V

    const-string v0, "lunatik_blur_darkness"

    const/16 v2, 0x2b

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/display/BlurSettings;->put(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "disable_window_blurs"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/display/BlurSettings;->enabled:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/display/BlurSettings;->radius:Landroidx/preference/SeekBarPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/SeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/display/BlurSettings;->dark:Landroidx/preference/SeekBarPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/SeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/display/BlurSettings;->radius:Landroidx/preference/SeekBarPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/android/settings/display/BlurSettings;->dark:Landroidx/preference/SeekBarPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/android/settings/display/BlurSettings;->radius:Landroidx/preference/SeekBarPreference;

    const-string v1, "60 px"

    invoke-virtual {v0, v1}, Landroidx/preference/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/display/BlurSettings;->dark:Landroidx/preference/SeekBarPreference;

    const-string v1, "43%"

    invoke-virtual {v0, v1}, Landroidx/preference/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0441\u0431\u0440\u043e\u0448\u0435\u043d\u044b"

    const-string v2, "Settings reset"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method slider(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroidx/preference/SeekBarPreference;
    .registers 10

    .line 16
    new-instance v0, Landroidx/preference/SeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7f0e0265

    invoke-virtual {v0, v1}, Landroidx/preference/SeekBarPreference;->setLayoutResource(I)V

    invoke-virtual {v0, p2}, Landroidx/preference/SeekBarPreference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SeekBarPreference;->setPersistent(Z)V

    invoke-virtual {v0, p3}, Landroidx/preference/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroidx/preference/SeekBarPreference;->setMin(I)V

    invoke-virtual {v0, p4}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    :try_start_20
    const-class p3, Landroidx/preference/SeekBarPreference;

    const-string p4, "mShowSeekBarValue"

    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p3, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    const-class p3, Landroidx/preference/SeekBarPreference;

    const-string v1, "mUpdatesContinuously"

    invoke-virtual {p3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    move-exception p3

    :goto_3f
    invoke-virtual {p0, p2, p5}, Lcom/android/settings/display/BlurSettings;->read(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p5}, Lcom/android/settings/display/BlurSettings;->read(Ljava/lang/String;I)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/preference/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p2, v0, p6}, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/display/BlurSettings;Ljava/lang/String;Landroidx/preference/SeekBarPreference;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroidx/preference/SeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method sync()V
    .registers 5

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.launcher3.settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "LUNATIK_BLUR_PARAMS"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_84

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "darkness"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "lunatik_blur_radius"

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/display/BlurSettings;->put(Ljava/lang/String;I)V

    const-string v2, "lunatik_blur_darkness"

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/display/BlurSettings;->put(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/settings/display/BlurSettings;->radius:Landroidx/preference/SeekBarPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    iget-object v2, p0, Lcom/android/settings/display/BlurSettings;->dark:Landroidx/preference/SeekBarPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    iget-object v2, p0, Lcom/android/settings/display/BlurSettings;->radius:Landroidx/preference/SeekBarPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " px"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/display/BlurSettings;->dark:Landroidx/preference/SeekBarPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u044b \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u044b"

    const-string v2, "Settings copied"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9f

    :cond_84
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_8a

    :catch_8a
    move-exception v0

    invoke-virtual {p0}, Lcom/android/settings/display/BlurSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u044b \u043b\u0430\u0443\u043d\u0447\u0435\u0440\u0430"

    const-string v2, "Could not read launcher settings"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_9f
    return-void
.end method

.method t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 5
    iget-boolean v0, p0, Lcom/android/settings/display/BlurSettings;->ru:Z

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    move-object p1, p2

    :goto_6
    return-object p1
.end method

.method updateMode(I)V
    .registers 6

    .line 18
    const-string v0, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u043d\u043e\u0435 \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u0435 Android"

    const-string v1, "Standard Android blur"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041d\u0430\u0441\u0442\u0440\u0430\u0438\u0432\u0430\u0435\u043c\u043e\u0435 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0435 \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u0435"

    const-string v2, "Custom system blur"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0412\u0441\u0435 \u044d\u0444\u0444\u0435\u043a\u0442\u044b \u0440\u0430\u0437\u043c\u044b\u0442\u0438\u044f"

    const-string v3, "All blur effects"

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/display/BlurSettings;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/BlurSettings;->mode:Landroidx/preference/SeekBarPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2014 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/display/BlurSettings;->enabled:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    if-le p1, v0, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    iget-object p1, p0, Lcom/android/settings/display/BlurSettings;->dark:Landroidx/preference/SeekBarPreference;

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/android/settings/display/BlurSettings;->dark:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/SeekBarPreference;->setEnabled(Z)V

    :cond_52
    iget-object p1, p0, Lcom/android/settings/display/BlurSettings;->radius:Landroidx/preference/SeekBarPreference;

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/android/settings/display/BlurSettings;->radius:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/SeekBarPreference;->setEnabled(Z)V

    :cond_5b
    return-void
.end method
