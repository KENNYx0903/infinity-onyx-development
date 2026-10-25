.class public final Lcom/infinity/localization/RuUiText;
.super Ljava/lang/Object;
.source "RuUiText.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static text(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-object p0

    :cond_11
    const-string v0, "Game Space Settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0438\u0433\u0440\u043e\u0432\u043e\u0433\u043e \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0430"

    return-object p0

    :cond_1c
    const-string v0, "Game Library"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string p0, "\u0411\u0438\u0431\u043b\u0438\u043e\u0442\u0435\u043a\u0430 \u0438\u0433\u0440"

    return-object p0

    :cond_27
    const-string v0, "No Games Yet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p0, "\u0418\u0433\u0440\u044b \u043f\u043e\u043a\u0430 \u043d\u0435 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u044b"

    return-object p0

    :cond_32
    const-string v0, "Tap the + button to add your games"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string p0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 +, \u0447\u0442\u043e\u0431\u044b \u0434\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0438\u0433\u0440\u044b"

    return-object p0

    :cond_3d
    const-string v0, "Game Space"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string p0, "\u0418\u0433\u0440\u043e\u0432\u043e\u0435 \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u043e"

    return-object p0

    :cond_48
    const-string v0, " games installed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string p0, " \u0438\u0433\u0440 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e"

    return-object p0

    :cond_53
    const-string v0, "Accent Color"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string p0, "\u0426\u0432\u0435\u0442 \u0430\u043a\u0446\u0435\u043d\u0442\u0430"

    return-object p0

    :cond_5e
    const-string v0, "Applied to every Game Space screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string p0, "\u0418\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f \u043d\u0430 \u0432\u0441\u0435\u0445 \u044d\u043a\u0440\u0430\u043d\u0430\u0445 \u0438\u0433\u0440\u043e\u0432\u043e\u0433\u043e \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0430"

    return-object p0

    :cond_69
    const-string v0, "Launch Optimization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string p0, "\u041e\u043f\u0442\u0438\u043c\u0438\u0437\u0430\u0446\u0438\u044f \u0437\u0430\u043f\u0443\u0441\u043a\u0430"

    return-object p0

    :cond_74
    const-string v0, "Smart Memory Management"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string p0, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043f\u0430\u043c\u044f\u0442\u044c\u044e"

    return-object p0

    :cond_7f
    const-string v0, "Clear background apps when launching games"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string p0, "\u041e\u0447\u0438\u0449\u0430\u0442\u044c \u0444\u043e\u043d\u043e\u0432\u044b\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0435 \u0438\u0433\u0440"

    return-object p0

    :cond_8a
    const-string v0, "Cache Management"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    const-string p0, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043a\u044d\u0448\u0435\u043c"

    return-object p0

    :cond_95
    const-string v0, "Optimize game cache for faster loading"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string p0, "\u041e\u043f\u0442\u0438\u043c\u0438\u0437\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043a\u044d\u0448 \u0438\u0433\u0440 \u0434\u043b\u044f \u0431\u044b\u0441\u0442\u0440\u043e\u0439 \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0438"

    return-object p0

    :cond_a0
    const-string v0, "FPS Stats"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string p0, "\u0421\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430 FPS"

    return-object p0

    :cond_ab
    const-string v0, "View recorded performance sessions"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    const-string p0, "\u041f\u0440\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0437\u0430\u043f\u0438\u0441\u0438 \u0438\u0433\u0440\u043e\u0432\u044b\u0445 \u0441\u0435\u0441\u0441\u0438\u0439"

    return-object p0

    :cond_b6
    const-string v0, "Custom Thermal Profiles"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    const-string p0, "\u041f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0435 \u0442\u0435\u0440\u043c\u043e\u043f\u0440\u043e\u0444\u0438\u043b\u0438"

    return-object p0

    :cond_c1
    const-string v0, "Create per-temperature throttle profiles with one-click presets"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string p0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u0438 \u0434\u043b\u044f \u0440\u0430\u0437\u043d\u044b\u0445 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440"

    return-object p0

    :cond_cc
    const-string v0, "Charging Profiles"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    const-string p0, "\u041f\u0440\u043e\u0444\u0438\u043b\u0438 \u0437\u0430\u0440\u044f\u0434\u043a\u0438"

    return-object p0

    :cond_d7
    const-string v0, "Create custom charging curves \u2014 full control over current & heat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string p0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c \u0442\u043e\u043a \u0437\u0430\u0440\u044f\u0434\u043a\u0438 \u0438 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u043d\u044b\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f"

    return-object p0

    :cond_e2
    const-string v0, "In-Game Experience"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    const-string p0, "\u0412\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object p0

    :cond_ed
    const-string v0, "Disable Auto Brightness"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    const-string p0, "\u041e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0430\u0432\u0442\u043e\u044f\u0440\u043a\u043e\u0441\u0442\u044c"

    return-object p0

    :cond_f8
    const-string v0, "Lock brightness while in game"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    const-string p0, "\u041d\u0435 \u043c\u0435\u043d\u044f\u0442\u044c \u044f\u0440\u043a\u043e\u0441\u0442\u044c \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object p0

    :cond_103
    const-string v0, "Stay Awake"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    const-string p0, "\u041d\u0435 \u0432\u044b\u043a\u043b\u044e\u0447\u0430\u0442\u044c \u044d\u043a\u0440\u0430\u043d"

    return-object p0

    :cond_10e
    const-string v0, "Keep screen on during games"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    const-string p0, "\u041e\u0441\u0442\u0430\u0432\u043b\u044f\u0442\u044c \u044d\u043a\u0440\u0430\u043d \u0432\u043a\u043b\u044e\u0447\u0451\u043d\u043d\u044b\u043c \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object p0

    :cond_119
    const-string v0, "Danmaku Notifications"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    const-string p0, "\u0411\u0435\u0433\u0443\u0449\u0438\u0435 \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f"

    return-object p0

    :cond_124
    const-string v0, "Scrolling bullet-style notifications"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const-string p0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0431\u0435\u0433\u0443\u0449\u0435\u0439 \u0441\u0442\u0440\u043e\u043a\u043e\u0439"

    return-object p0

    :cond_12f
    const-string v0, "Disable Bass Haptics"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    const-string p0, "\u041e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0432\u0438\u0431\u0440\u0430\u0446\u0438\u044e \u0432 \u0442\u0430\u043a\u0442 \u0431\u0430\u0441\u0430\u043c"

    return-object p0

    :cond_13a
    const-string v0, "No pulse haptics from game audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    const-string p0, "\u041d\u0435 \u0441\u043e\u0437\u0434\u0430\u0432\u0430\u0442\u044c \u0432\u0438\u0431\u0440\u0430\u0446\u0438\u044e \u0432 \u0442\u0430\u043a\u0442 \u0437\u0432\u0443\u043a\u0443 \u0438\u0433\u0440\u044b"

    return-object p0

    :cond_145
    const-string v0, "Auto DND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    const-string p0, "\u0420\u0435\u0436\u0438\u043c \u00ab\u041d\u0435 \u0431\u0435\u0441\u043f\u043e\u043a\u043e\u0438\u0442\u044c\u00bb"

    return-object p0

    :cond_150
    const-string v0, "Do Not Disturb during game sessions"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    const-string p0, "\u0412\u043a\u043b\u044e\u0447\u0430\u0442\u044c \u0440\u0435\u0436\u0438\u043c \u00ab\u041d\u0435 \u0431\u0435\u0441\u043f\u043e\u043a\u043e\u0438\u0442\u044c\u00bb \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object p0

    :cond_15b
    const-string v0, "Call Overlay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    const-string p0, "\u041f\u0430\u043d\u0435\u043b\u044c \u0437\u0432\u043e\u043d\u043a\u0430"

    return-object p0

    :cond_166
    const-string v0, "Show in-game call banner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    const-string p0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0432\u0445\u043e\u0434\u044f\u0449\u0438\u0439 \u0437\u0432\u043e\u043d\u043e\u043a \u043f\u043e\u0432\u0435\u0440\u0445 \u0438\u0433\u0440\u044b"

    return-object p0

    :cond_171
    const-string v0, "No action"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    const-string p0, "\u0411\u0435\u0437 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u044f"

    return-object p0

    :cond_17c
    const-string v0, "Auto answer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_187

    const-string p0, "\u041e\u0442\u0432\u0435\u0442\u0438\u0442\u044c \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438"

    return-object p0

    :cond_187
    const-string v0, "Auto reject"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    const-string p0, "\u041e\u0442\u043a\u043b\u043e\u043d\u0438\u0442\u044c \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438"

    return-object p0

    :cond_192
    const-string v0, "Incoming Calls"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    const-string p0, "\u0412\u0445\u043e\u0434\u044f\u0449\u0438\u0435 \u0437\u0432\u043e\u043d\u043a\u0438"

    return-object p0

    :cond_19d
    const-string v0, "No change"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    const-string p0, "\u041d\u0435 \u0438\u0437\u043c\u0435\u043d\u044f\u0442\u044c"

    return-object p0

    :cond_1a8
    const-string v0, "Ringer Mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    const-string p0, "\u0420\u0435\u0436\u0438\u043c \u0437\u0432\u043e\u043d\u043a\u0430"

    return-object p0

    :cond_1b3
    const-string v0, "Block 3-Finger Screenshot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    const-string p0, "\u041e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0441\u043a\u0440\u0438\u043d\u0448\u043e\u0442 \u0442\u0440\u0435\u043c\u044f \u043f\u0430\u043b\u044c\u0446\u0430\u043c\u0438"

    return-object p0

    :cond_1be
    const-string v0, "Prevent accidental screenshot gesture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    const-string p0, "\u041f\u0440\u0435\u0434\u043e\u0442\u0432\u0440\u0430\u0449\u0430\u0442\u044c \u0441\u043b\u0443\u0447\u0430\u0439\u043d\u044b\u0435 \u0441\u043d\u0438\u043c\u043a\u0438 \u044d\u043a\u0440\u0430\u043d\u0430 \u0436\u0435\u0441\u0442\u043e\u043c"

    return-object p0

    :cond_1c9
    const-string v0, "Lock Gestures"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    const-string p0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0436\u0435\u0441\u0442\u044b"

    return-object p0

    :cond_1d4
    const-string v0, "Block navigation gestures"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1df

    const-string p0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0436\u0435\u0441\u0442\u044b \u043d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u0438"

    return-object p0

    :cond_1df
    const-string v0, "Bypass Charging"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    const-string p0, "\u041e\u0431\u0445\u043e\u0434\u043d\u0430\u044f \u0437\u0430\u0440\u044f\u0434\u043a\u0430"

    return-object p0

    :cond_1ea
    const-string v0, "Power the SoC directly in game"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    const-string p0, "\u041f\u0438\u0442\u0430\u0442\u044c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u043d\u0430\u043f\u0440\u044f\u043c\u0443\u044e \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object p0

    :cond_1f5
    const-string v0, "Idle Bar Opacity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    const-string p0, "\u041d\u0435\u043f\u0440\u043e\u0437\u0440\u0430\u0447\u043d\u043e\u0441\u0442\u044c \u043d\u0435\u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0439 \u043f\u043e\u043b\u043e\u0441\u043a\u0438"

    return-object p0

    :cond_200
    const-string v0, "Sidebar Studio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20b

    const-string p0, "\u041e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435 \u0431\u043e\u043a\u043e\u0432\u043e\u0439 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object p0

    :cond_20b
    const-string v0, "Shape, position, buttons, theme \u2014 with live preview"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_216

    const-string p0, "\u0424\u043e\u0440\u043c\u0430, \u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435, \u043a\u043d\u043e\u043f\u043a\u0438 \u0438 \u0442\u0435\u043c\u0430 \u0441 \u043f\u0440\u0435\u0434\u043f\u0440\u043e\u0441\u043c\u043e\u0442\u0440\u043e\u043c"

    return-object p0

    :cond_216
    const-string v0, "App Theme"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_221

    const-string p0, "\u0422\u0435\u043c\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object p0

    :cond_221
    const-string v0, "Auto follows the system \u00b7 Light & Dark are forced"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22c

    const-string p0, "\u0410\u0432\u0442\u043e \u2014 \u043f\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u0435; \u0441\u0432\u0435\u0442\u043b\u0430\u044f \u0438 \u0442\u0451\u043c\u043d\u0430\u044f \u2014 \u043d\u0435\u0437\u0430\u0432\u0438\u0441\u0438\u043c\u043e \u043e\u0442 \u043d\u0435\u0451"

    return-object p0

    :cond_22c
    const-string v0, "Auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    const-string p0, "\u0410\u0432\u0442\u043e"

    return-object p0

    :cond_237
    const-string v0, "Light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_242

    const-string p0, "\u0421\u0432\u0435\u0442\u043b\u0430\u044f"

    return-object p0

    :cond_242
    const-string v0, "Dark"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    const-string p0, "\u0422\u0451\u043c\u043d\u0430\u044f"

    return-object p0

    :cond_24d
    const-string v0, "Appearance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u041e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435"

    if-eqz v0, :cond_258

    return-object v1

    :cond_258
    const-string v0, "Sidebar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_263

    const-string p0, "\u0411\u043e\u043a\u043e\u0432\u0430\u044f \u043f\u0430\u043d\u0435\u043b\u044c"

    return-object p0

    :cond_263
    const-string v0, "Floating panel over the app you are using"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26e

    const-string p0, "\u041f\u043b\u0430\u0432\u0430\u044e\u0449\u0430\u044f \u043f\u0430\u043d\u0435\u043b\u044c \u043f\u043e\u0432\u0435\u0440\u0445 \u043e\u0442\u043a\u0440\u044b\u0442\u043e\u0433\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object p0

    :cond_26e
    const-string v0, "Games"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_279

    const-string p0, "\u0418\u0433\u0440\u044b"

    return-object p0

    :cond_279
    const-string v0, "Full game panel \u2014 tiles, thermal, FPS, tuner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_284

    const-string p0, "\u0418\u0433\u0440\u043e\u0432\u0430\u044f \u043f\u0430\u043d\u0435\u043b\u044c: \u043f\u043b\u0438\u0442\u043a\u0438, \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430, FPS \u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430"

    return-object p0

    :cond_284
    const-string v0, "Video players"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28f

    const-string p0, "\u0412\u0438\u0434\u0435\u043e\u043f\u043b\u0435\u0435\u0440\u044b"

    return-object p0

    :cond_28f
    const-string v0, "Video toolbox \u2014 frame gen, upscale, picture, Dolby"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29a

    const-string p0, "\u0418\u043d\u0441\u0442\u0440\u0443\u043c\u0435\u043d\u0442\u044b \u0432\u0438\u0434\u0435\u043e: \u0433\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432, \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435, \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u0438 Dolby"

    return-object p0

    :cond_29a
    const-string v0, "Other apps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    const-string p0, "\u0414\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object p0

    :cond_2a5
    const-string v0, "App strip only, no panel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    const-string p0, "\u0422\u043e\u043b\u044c\u043a\u043e \u0441\u043f\u0438\u0441\u043e\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439, \u0431\u0435\u0437 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object p0

    :cond_2b0
    const-string v0, "Number of apps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    const-string p0, "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object p0

    :cond_2bb
    const-string v0, "App source"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    const-string p0, "\u0418\u0441\u0442\u043e\u0447\u043d\u0438\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object p0

    :cond_2c6
    const-string v0, "All apps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d1

    const-string p0, "\u0412\u0441\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object p0

    :cond_2d1
    const-string v0, "Sort free slots by"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    const-string p0, "\u041f\u043e\u0440\u044f\u0434\u043e\u043a \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u044b\u0445 \u044f\u0447\u0435\u0435\u043a"

    return-object p0

    :cond_2dc
    const-string v0, "Most used"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    const-string p0, "\u0427\u0430\u0441\u0442\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u043c\u044b\u0435"

    return-object p0

    :cond_2e7
    const-string v0, "Auto-fill free slots"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f2

    const-string p0, "\u0417\u0430\u043f\u043e\u043b\u043d\u044f\u0442\u044c \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u044b\u0435 \u044f\u0447\u0435\u0439\u043a\u0438"

    return-object p0

    :cond_2f2
    const-string v0, "Fill slots you haven\'t pinned with suggestions"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fd

    const-string p0, "\u041f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0442\u044c \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0434\u043b\u044f \u043d\u0435\u0437\u0430\u043a\u0440\u0435\u043f\u043b\u0451\u043d\u043d\u044b\u0445 \u044f\u0447\u0435\u0435\u043a"

    return-object p0

    :cond_2fd
    const-string v0, "Re-sort when the panel opens"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_308

    const-string p0, "\u041e\u0431\u043d\u043e\u0432\u043b\u044f\u0442\u044c \u043f\u043e\u0440\u044f\u0434\u043e\u043a \u043f\u0440\u0438 \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u0438 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object p0

    :cond_308
    const-string v0, "Pinned apps stay put \u2014 only free slots are re-rolled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_313

    const-string p0, "\u0417\u0430\u043a\u0440\u0435\u043f\u043b\u0451\u043d\u043d\u044b\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043e\u0441\u0442\u0430\u044e\u0442\u0441\u044f \u043d\u0430 \u043c\u0435\u0441\u0442\u0435; \u043c\u0435\u043d\u044f\u044e\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u044b\u0435 \u044f\u0447\u0435\u0439\u043a\u0438"

    return-object p0

    :cond_313
    const-string v0, "Reset dock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31e

    const-string p0, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c \u0441\u043f\u0438\u0441\u043e\u043a"

    return-object p0

    :cond_31e
    const-string v0, "Clear pins and rebuild the strip from scratch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const-string p0, "\u0421\u043d\u044f\u0442\u044c \u0437\u0430\u043a\u0440\u0435\u043f\u043b\u0435\u043d\u0438\u044f \u0438 \u0441\u043e\u0437\u0434\u0430\u0442\u044c \u0441\u043f\u0438\u0441\u043e\u043a \u0437\u0430\u043d\u043e\u0432\u043e"

    return-object p0

    :cond_329
    const-string v0, "App strip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_334

    const-string p0, "\u0421\u043f\u0438\u0441\u043e\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object p0

    :cond_334
    const-string v0, "Customization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33d

    return-object v1

    :cond_33d
    const-string v0, "Show it in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_348

    const-string p0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f\u0445"

    return-object p0

    :cond_348
    const-string v0, "Done"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_353

    const-string p0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    return-object p0

    :cond_353
    const-string v0, "Per-app"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35e

    const-string p0, "\u0414\u043b\u044f \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object p0

    :cond_35e
    const-string v0, "Back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_369

    const-string p0, "\u041d\u0430\u0437\u0430\u0434"

    return-object p0

    :cond_369
    const-string v0, "System manages thermal profile automatically"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_374

    const-string p0, "\u0421\u0438\u0441\u0442\u0435\u043c\u0430 \u0432\u044b\u0431\u0438\u0440\u0430\u0435\u0442 \u0442\u0435\u0440\u043c\u043e\u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438"

    return-object p0

    :cond_374
    const-string v0, "Follow Global"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37f

    const-string p0, "\u041a\u0430\u043a \u0432 \u043e\u0431\u0449\u0438\u0445 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445"

    return-object p0

    :cond_37f
    const-string v0, "Signal Icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38a

    const-string p0, "\u0417\u043d\u0430\u0447\u043a\u0438 \u043c\u043e\u0431\u0438\u043b\u044c\u043d\u043e\u0439 \u0441\u0435\u0442\u0438"

    return-object p0

    :cond_38a
    const-string v0, "WiFi Icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_395

    const-string p0, "\u0417\u043d\u0430\u0447\u043a\u0438 Wi-Fi"

    return-object p0

    :cond_395
    const-string v0, "See all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39f

    const-string p0, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c \u0432\u0441\u0435"

    :cond_39f
    return-object p0
.end method
