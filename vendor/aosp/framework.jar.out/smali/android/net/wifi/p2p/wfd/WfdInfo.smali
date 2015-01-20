.class public Landroid/net/wifi/p2p/wfd/WfdInfo;
.super Ljava/lang/Object;
.source "WfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/wfd/WfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISCONNECTED:I = 0x0

.field public static final DUAL_ROLE:I = 0x3

.field public static final PAUSE:I = 0x3

.field public static final PLAY:I = 0x2

.field public static final PRIMARY_SINK:I = 0x1

.field public static final SECONDARY_SIK:I = 0x2

.field public static final SETUP:I = 0x1

.field public static final STANDBY:I = 0x4

.field public static final SUPPORT:Z = true

.field private static final TAG:Ljava/lang/String; = "WfdInfo"

.field public static final UN_SUPPORT:Z = false

.field public static final WFD_SESSION_AVAILABLE:I = 0x1

.field public static final WFD_SESSION_RESERVED1:I = 0x2

.field public static final WFD_SESSION_RESERVED2:I = 0x3

.field public static final WFD_SESSION_UNAVAILABLE:I

.field public static final WFD_SOURCE:I


# instance fields
.field public associatedBSSID:Ljava/lang/String;

.field public cp:Z

.field public deviceType:I

.field public isDualRoleBeforeConnect:Z

.field public maxTh:I

.field public prefDisplayMode:Z

.field public rtspPort:I

.field public sessionAvailable:I

.field public standbyResumeCtrl:Z

.field public wfdFlags:I

.field public wsd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Landroid/net/wifi/p2p/wfd/WfdInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/wfd/WfdInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 68
    iput v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wfdFlags:I

    .line 83
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->isDualRoleBeforeConnect:Z

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 101
    iput v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    .line 107
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wsd:Z

    .line 113
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->cp:Z

    .line 125
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->prefDisplayMode:Z

    .line 131
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->standbyResumeCtrl:Z

    .line 138
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->associatedBSSID:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/wfd/WfdInfo;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 68
    iput v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wfdFlags:I

    .line 83
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->isDualRoleBeforeConnect:Z

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 101
    iput v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    .line 107
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wsd:Z

    .line 113
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->cp:Z

    .line 125
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->prefDisplayMode:Z

    .line 131
    iput-boolean v1, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->standbyResumeCtrl:Z

    .line 138
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->associatedBSSID:Ljava/lang/String;

    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 215
    iget v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    .line 216
    iget v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->wfdFlags:I

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wfdFlags:I

    .line 217
    iget v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 218
    iget v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    .line 219
    iget-boolean v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->wsd:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wsd:Z

    .line 220
    iget-boolean v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->cp:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->cp:Z

    .line 221
    iget-boolean v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->prefDisplayMode:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->prefDisplayMode:Z

    .line 222
    iget-boolean v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->standbyResumeCtrl:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->standbyResumeCtrl:Z

    .line 223
    iget-object v0, p1, Landroid/net/wifi/p2p/wfd/WfdInfo;->associatedBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->associatedBSSID:Ljava/lang/String;

    .line 225
    :cond_0
    return-void
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .parameter "decString"

    .prologue
    .line 265
    const/4 v1, 0x0

    .line 268
    .local v1, num:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WfdInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse dec string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public caculateWfdDevInfo()I
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, deviceInfo:I
    iget v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    add-int/lit8 v1, v2, 0x0

    .line 154
    .local v1, setDeviceType:I
    iget v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    packed-switch v2, :pswitch_data_0

    .line 170
    :goto_0
    return v0

    .line 156
    :pswitch_0
    and-int/lit8 v0, v1, -0x31

    .line 157
    goto :goto_0

    .line 159
    :pswitch_1
    and-int/lit8 v2, v1, -0x31

    add-int/lit8 v0, v2, 0x10

    .line 160
    goto :goto_0

    .line 162
    :pswitch_2
    and-int/lit8 v2, v1, -0x31

    add-int/lit8 v0, v2, 0x20

    .line 163
    goto :goto_0

    .line 165
    :pswitch_3
    and-int/lit8 v2, v1, -0x31

    add-int/lit8 v0, v2, 0x30

    .line 166
    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public parseWfdDeviceInfo(I)Z
    .locals 1
    .parameter "deviceInfo"

    .prologue
    .line 184
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 185
    and-int/lit8 v0, p1, 0x30

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public parseWfdExtendCapavbility()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string/jumbo v1, "rtspPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " maxTh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " wfdFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wfdFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " isDualRoleBeforeConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->isDualRoleBeforeConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " sessionAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " wsd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wsd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->cp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " prefDisplayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->prefDisplayMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " standbyResumeCtrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->standbyResumeCtrl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " associatedBSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->associatedBSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    iget v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wfdFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-boolean v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wsd:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 235
    iget-boolean v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->cp:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 236
    iget-boolean v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->prefDisplayMode:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 237
    iget-boolean v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->standbyResumeCtrl:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 238
    iget-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdInfo;->associatedBSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    return-void

    :cond_0
    move v0, v2

    .line 234
    goto :goto_0

    :cond_1
    move v0, v2

    .line 235
    goto :goto_1

    :cond_2
    move v0, v2

    .line 236
    goto :goto_2

    :cond_3
    move v1, v2

    .line 237
    goto :goto_3
.end method
