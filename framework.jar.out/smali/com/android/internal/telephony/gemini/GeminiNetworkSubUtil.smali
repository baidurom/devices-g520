.class public Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONN_TYPE_ALWAYS:I = 0x1

.field public static final CONN_TYPE_WHEN_NEEDED:I = 0x0

.field public static final MODE_DUAL_SIM:I = 0x3

.field public static final MODE_FLIGHT_MODE:I = 0x0

.field public static final MODE_GPRS_AUTO_ATTACH:I = 0x1

.field public static final MODE_GPRS_NOT_ATTACH:I = 0x0

.field public static final MODE_GPRS_USER_SELECT:I = 0x2

.field public static final MODE_POWER_OFF:I = -0x1

.field public static final MODE_SIM1_ONLY:I = 0x1

.field public static final MODE_SIM2_ONLY:I = 0x2

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 89
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "boot_up_select_mode"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 93
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bootUp]airplaneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectByUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dualSimModeSetting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SIM status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 107
    const-string v2, "gsm.sim.inserted"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-lez v1, :cond_0

    .line 110
    invoke-static {p0, v4, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    .line 154
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v1

    .line 136
    if-eq v1, v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sim mode from ICCID is different than dual sim mode, to sync with insert status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, p1

    .line 141
    :cond_1
    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_4

    .line 142
    :cond_2
    if-eq p1, v5, :cond_3

    if-ne p1, v6, :cond_4

    .line 143
    :cond_3
    if-eq v0, p1, :cond_4

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dual sim mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and inserted status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sync two values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, p1

    .line 150
    :cond_4
    invoke-static {p0, v0, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    goto :goto_0
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v6

    .line 161
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    .line 162
    :goto_0
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 163
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 166
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    move-object v2, v3

    .line 167
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 168
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v7

    .line 169
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v8

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal! Wrong mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 363
    :goto_2
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_1

    .line 173
    :pswitch_0
    invoke-interface {v1, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 174
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 175
    if-nez v5, :cond_2

    .line 176
    const/4 p1, 0x0

    .line 230
    :cond_2
    :goto_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 234
    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    .line 235
    const-string v0, "Power-off, not to refresh dual SIM mode setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 260
    :cond_3
    :goto_4
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 261
    const-string v0, "gsm.3gswitch"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    const/4 v0, 0x1

    move v2, v0

    .line 263
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 264
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 265
    const/4 v0, 0x1

    if-ne v4, v0, :cond_14

    .line 266
    if-nez p3, :cond_13

    .line 267
    const-string v0, "airplane mode and turn off MD"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 268
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    move-object v0, v3

    .line 269
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    .line 349
    :cond_4
    :goto_6
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 350
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 351
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current service state ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 353
    const/4 v4, -0x1

    if-eq p1, v4, :cond_5

    if-nez p1, :cond_6

    :cond_5
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 356
    const-string v0, "Already in power off state, force notify"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 357
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->forceNotifyServiceStateChange()V

    .line 358
    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->forceNotifyServiceStateChange()V

    .line 362
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setDualSimMode(I)V

    goto/16 :goto_2

    .line 179
    :pswitch_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 180
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 181
    if-nez v4, :cond_2

    .line 182
    const/4 p1, 0x0

    goto/16 :goto_3

    .line 185
    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 186
    invoke-interface {v1, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 187
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 188
    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    .line 189
    const/4 p1, 0x3

    goto/16 :goto_3

    .line 190
    :cond_7
    if-nez v5, :cond_8

    if-nez v4, :cond_8

    .line 191
    const/4 p1, 0x0

    goto/16 :goto_3

    .line 192
    :cond_8
    if-eqz v5, :cond_9

    .line 193
    const/4 p1, 0x1

    goto/16 :goto_3

    .line 194
    :cond_9
    if-eqz v4, :cond_2

    .line 195
    const/4 p1, 0x2

    goto/16 :goto_3

    .line 197
    :cond_a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 198
    invoke-interface {v1, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 199
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 200
    if-eqz v5, :cond_b

    .line 201
    const/4 v0, 0x1

    .line 217
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning! Request Dual mode but not enough SIM, status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mode:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move p1, v0

    .line 219
    goto/16 :goto_3

    .line 203
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 204
    :cond_c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 205
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 206
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 207
    if-eqz v4, :cond_d

    .line 208
    const/4 v0, 0x2

    goto :goto_7

    .line 210
    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    .line 213
    :cond_e
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 214
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 215
    const/4 v0, 0x0

    goto :goto_7

    .line 222
    :pswitch_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 223
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto/16 :goto_3

    .line 237
    :cond_f
    if-nez p2, :cond_10

    .line 238
    const-string v0, "No SIM inserted, refresh dual SIM  mode to MODE_DUAL_SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    const/4 v5, 0x3

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    if-nez v4, :cond_3

    .line 244
    const-string v0, "No SIM inserted, force to turn on SIM1 radio!"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 245
    const/4 p1, 0x1

    goto/16 :goto_4

    .line 248
    :cond_10
    const/4 v0, 0x1

    if-ne v4, v0, :cond_11

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh dual SIM mode setting under air plane mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 253
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh dual SIM mode setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 261
    :cond_12
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_5

    .line 271
    :cond_13
    const-string v0, "Air plane mode but is boot up (dt), do nothing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 274
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDualSimMode()I

    move-result v5

    .line 275
    const/4 v4, 0x0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check if need to boot up modem ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 277
    and-int/lit8 v0, v5, 0x1

    and-int/lit8 v6, p1, 0x1

    if-eq v0, v6, :cond_15

    .line 278
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_18

    .line 279
    if-nez v7, :cond_15

    .line 280
    if-eqz p3, :cond_17

    .line 281
    const-string/jumbo v0, "skip up phone1 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 293
    :cond_15
    :goto_8
    and-int/lit8 v0, v5, 0x2

    and-int/lit8 v6, p1, 0x2

    if-eq v0, v6, :cond_1b

    .line 294
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1a

    .line 295
    if-nez v8, :cond_1b

    .line 296
    if-eqz p3, :cond_19

    .line 297
    const-string/jumbo v0, "skip up phone2 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, v4

    .line 309
    :goto_9
    if-eqz v0, :cond_16

    const/4 v4, -0x1

    if-eq p1, v4, :cond_16

    and-int/lit8 v4, v5, 0x1

    and-int/lit8 v6, p1, 0x1

    if-ne v4, v6, :cond_4

    and-int/lit8 v4, v5, 0x2

    and-int/lit8 v5, p1, 0x2

    if-ne v4, v5, :cond_4

    .line 313
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio mode is the same with previous one or no power on MD, continue power on radio ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 315
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 316
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 317
    invoke-static {p0, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_6

    .line 283
    :cond_17
    const-string v0, "boot up phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 284
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 285
    const/4 v4, 0x1

    goto :goto_8

    .line 289
    :cond_18
    const-string/jumbo v0, "shutdown phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 290
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_8

    .line 299
    :cond_19
    const-string v0, "boot up phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v3

    .line 300
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 301
    const/4 v0, 0x1

    goto :goto_9

    .line 305
    :cond_1a
    const-string/jumbo v0, "shutdown phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move-object v0, v3

    .line 306
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_1b
    move v0, v4

    goto/16 :goto_9

    .line 319
    :cond_1c
    if-eqz v2, :cond_1d

    move-object v0, v3

    .line 320
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    :cond_1d
    move-object v0, v1

    .line 322
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 327
    :cond_1e
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 328
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 329
    invoke-static {p0, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_6

    .line 332
    :cond_1f
    const/4 v0, 0x1

    if-ne v4, v0, :cond_22

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 333
    if-nez p3, :cond_21

    .line 334
    if-eqz v2, :cond_20

    move-object v0, v3

    .line 335
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    :cond_20
    move-object v0, v1

    .line 337
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 339
    :cond_21
    const-string v0, "Air plane mode but is boot up, do nothing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 342
    :cond_22
    if-eqz v2, :cond_23

    move-object v0, v3

    .line 343
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    :cond_23
    move-object v0, v1

    .line 345
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 171
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 366
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 367
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 369
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External modem DualTalk ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 371
    if-ne p1, v4, :cond_1

    .line 372
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 373
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    if-ne p1, v7, :cond_2

    .line 375
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 376
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 377
    :cond_2
    if-ne p1, v8, :cond_3

    .line 378
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 379
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 380
    :cond_3
    if-nez p1, :cond_4

    .line 381
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 382
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 383
    :cond_4
    if-ne p1, v6, :cond_5

    .line 384
    invoke-virtual {v0, v6, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 385
    invoke-virtual {v1, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    goto :goto_0

    .line 387
    :cond_5
    const-string v0, "Wrong dual sim mode"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal modem DualTalk ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 391
    if-ne p1, v4, :cond_7

    .line 392
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 393
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 395
    :cond_7
    if-ne p1, v7, :cond_9

    .line 396
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-nez v2, :cond_8

    .line 397
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 398
    :cond_8
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 399
    :cond_9
    if-ne p1, v8, :cond_a

    .line 400
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 401
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 402
    :cond_a
    if-nez p1, :cond_c

    .line 403
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v2

    if-nez v2, :cond_b

    .line 404
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 405
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 407
    :cond_b
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 409
    :cond_c
    if-ne p1, v6, :cond_d

    .line 410
    invoke-virtual {v0, v6, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 411
    invoke-virtual {v1, v6, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 413
    :cond_d
    const-string v0, "Wrong dual sim mode"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 471
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiNetworkSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method static b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 421
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 425
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    .line 426
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    .line 468
    return-void
.end method
