.class public Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Z

.field private static d:I

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    .line 58
    sput-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    .line 59
    sput-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 128
    .line 129
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 130
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    .line 131
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    .line 135
    :cond_2
    if-eqz v1, :cond_3

    .line 136
    const/4 v0, 0x2

    goto :goto_0

    .line 137
    :cond_3
    if-eqz v2, :cond_0

    .line 138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 152
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 144
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiRadioStatusUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method private static b(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove radio off SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    .line 157
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    :cond_0
    return-void
.end method

.method public static checkRadioOffSIM(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    sput-object p0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a:Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a:Landroid/content/Context;

    const-string v1, "RADIO_STATUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b:Landroid/content/SharedPreferences;

    .line 64
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "checkRadioOffSIM no recorded radio off SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->c:Z

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v0, "checkRadioOffSIM has radio off SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static finishRadioStatusInitialization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->c:Z

    .line 89
    sput-object p0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    .line 90
    sput-object p1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish radio status initialization ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static getSIMMode()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    return v0
.end method

.method public static isRadioStatusInitialized()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->c:Z

    return v0
.end method

.method public static setRadioSIMMode(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 96
    sput p1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    .line 97
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    sget v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 99
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioSIMMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void

    .line 101
    :cond_1
    sget v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 102
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    sget v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 105
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->b(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    sget v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    if-nez v1, :cond_5

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_4
    const-string v1, "air plane mode, not to record radio off SIM"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    goto :goto_0

    .line 116
    :cond_5
    sget v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 117
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->d:I

    goto :goto_0
.end method

.method public static setSIMIccId(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    packed-switch p0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 79
    :pswitch_0
    sput-object p1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->e:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_1
    sput-object p1, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->f:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
