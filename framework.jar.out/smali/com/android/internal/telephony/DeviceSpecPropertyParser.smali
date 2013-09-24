.class public Lcom/android/internal/telephony/DeviceSpecPropertyParser;
.super Ljava/lang/Object;
.source "DeviceSpecPropertyParser.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final LOG_TAG:Ljava/lang/String; = "DeviceSpecPropertyParser"

.field protected static final MASK_AUTO_SELECT_NETWORK:I = 0x20000

.field protected static final MASK_CALLMUTE:I = 0x4

.field protected static final MASK_NEED_POLL_DATA_REGISTRATION:I = 0x80000

.field protected static final MASK_NOCALLDETAILS:I = 0x10

.field protected static final MASK_NOSUBDEACTIVATED:I = 0x20

.field protected static final MASK_NULLAPN:I = 0x8

.field protected static final MASK_PINLOCKENABLE:I = 0x80

.field protected static final MASK_PLAYTONE_AFTER_BLUETOOTH_TALKING:I = 0x10000

.field protected static final MASK_RIL7_CARDAPP:I = 0x40000

.field protected static final MASK_SINGLEPDP:I = 0x1

.field protected static final MASK_SWITCH_CDMA_GSM:I = 0x100000

.field protected static final MASK_USIMDATA:I = 0x2

.field protected static device_spec_property:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceSpecProp()V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "ro.baidu.telephony.dev_spec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    .line 80
    return-void
.end method

.method public static isAutoSelectNetwork()Z
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedCallMute()Z
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedNullApn()Z
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedPlayToneAfterBtTalking()Z
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedPollDataReg()Z
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedSinglePdp()Z
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedUsimData()Z
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoCallDetails()Z
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoSubDeactivated()Z
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotSupportPinLockEnable()Z
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRil7CardApp()Z
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSwitchCdmaGsm()Z
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
