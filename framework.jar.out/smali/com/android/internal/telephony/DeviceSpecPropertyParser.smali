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

.field protected static final MASK_VIDEO_SYMBOL_IN_CALL_LIST:I = 0x200000

.field protected static device_spec_property:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
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
    .line 80
    const-string/jumbo v0, "ro.baidu.telephony.dev_spec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    .line 82
    return-void
.end method

.method public static isAutoSelectNetwork()Z
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedCallMute()Z
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedNullApn()Z
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedPlayToneAfterBtTalking()Z
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedPollDataReg()Z
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedSinglePdp()Z
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedUsimData()Z
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoCallDetails()Z
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoSubDeactivated()Z
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotSupportPinLockEnable()Z
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRil7CardApp()Z
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSwitchCdmaGsm()Z
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoSymbolInCallList()Z
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
