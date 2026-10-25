.class public final Lcom/android/settings/notification/LunatikTouchSoundPreference;
.super Ljava/lang/Object;
.source "LunatikTouchSoundPreference.java"


# static fields
.field static final KEY:Ljava/lang/String; = "lunatik_touch_sound"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Ljava/lang/Object;)V
    .registers 8

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ru"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v3, "Infinity (\u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e)"

    goto :goto_36

    :cond_34
    const-string v3, "Infinity (default)"

    :goto_36
    const-string v4, "Xiaomi"

    const-string v5, "AOSP"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "findPreference"

    const-class v6, Ljava/lang/CharSequence;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "system_sounds_and_vibrations_category"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPreferenceScreen"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_6c
    new-instance p0, Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v5, "lunatik_touch_sound"

    invoke-virtual {p0, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    const/16 v2, -0x1d

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    if-eqz v1, :cond_83

    const-string v2, "\u0417\u0432\u0443\u043a \u043d\u0430\u0436\u0430\u0442\u0438\u0439"

    goto :goto_85

    :cond_83
    const-string v2, "Touch sound"

    :goto_85
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settings/notification/LunatikTouchSoundPreference;->value(Landroid/content/Context;)I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, v3, p0}, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Z[Ljava/lang/String;Landroidx/preference/Preference;)V

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPreference"

    const-class v2, Landroidx/preference/Preference;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b0} :catch_b1

    goto :goto_b9

    :catch_b1
    move-exception p0

    const-string v0, "LunatikTouchSoundPreference"

    const-string v1, "Attach"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b9
    return-void
.end method

.method static synthetic lambda$attach$0(Landroid/media/AudioManager;)V
    .registers 2

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method static synthetic lambda$attach$1(Landroid/content/Context;Landroidx/preference/Preference;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 7

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lunatik_touch_sound"

    invoke-static {v0, v1, p4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_11
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->unloadSoundEffects()V

    invoke-virtual {p1}, Landroid/media/AudioManager;->loadSoundEffects()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "sound_effects_enabled"

    const/4 p3, 0x0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_48

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager;)V

    const-wide/16 p3, 0x258

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    const-string p1, "LunatikTouchSoundPreference"

    const-string p2, "Reload"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    return-void
.end method

.method static synthetic lambda$attach$2(Landroid/content/Context;Z[Ljava/lang/String;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .registers 6

    .line 6
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_a

    const-string p1, "\u0417\u0432\u0443\u043a \u043d\u0430\u0436\u0430\u0442\u0438\u0439"

    goto :goto_c

    :cond_a
    const-string p1, "Touch sound"

    :goto_c
    invoke-virtual {p4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settings/notification/LunatikTouchSoundPreference;->value(Landroid/content/Context;)I

    move-result p4

    new-instance v0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Landroidx/preference/Preference;[Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method static value(Landroid/content/Context;)I
    .registers 3

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lunatik_touch_sound"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
