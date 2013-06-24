.class public Lcom/android/internal/telephony/DeviceSpecPropertyParser;
.super Ljava/lang/Object;
.source "DeviceSpecPropertyParser.java"


# static fields
.field protected static final DEBUG:Z = true

.field protected static final LOG_TAG:Ljava/lang/String; = "DeviceSpecPropertyParser"

.field protected static final MASK_AUTO_SELECT_NETWORK:I = 0x20000

.field protected static final MASK_PLAYTONE_AFTER_BLUETOOTH_TALKING:I = 0x10000

.field protected static device_spec_property:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceSpecProp()V
    .locals 3

    .prologue
    .line 55
    const-string/jumbo v0, "ro.baidu.telephony.dev_spec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    .line 56
    const-string v0, "DeviceSpecPropertyParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device_spec_property : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static isAutoSelectNetwork()Z
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    const-string v1, "DeviceSpecPropertyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedPlayToneAfterBtTalking result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedPlayToneAfterBtTalking()Z
    .locals 4

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 62
    :goto_0
    const-string v1, "DeviceSpecPropertyParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedPlayToneAfterBtTalking result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
