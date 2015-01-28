.class public Landroid/net/wifi/p2p/WifiP2pConfig;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pConfig$Persist;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_CONNECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiP2pConfig"

.field public static final WFD_AUTO:I = 0x3

.field public static final WFD_NORMAL:I = 0x2

.field private static final wfdInfoPattern:Ljava/util/regex/Pattern;


# instance fields
.field public connectType:I

.field public deviceAddress:Ljava/lang/String;

.field public groupOwnerIntent:I

.field public networkId:I

.field public persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

.field public wfdDeviceType:I

.field public wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "wfd_en=(\\d) wfd_info=(0x[0-9a-fA-F]+) wfd_ctrl_port=([0-9]+) wfd_tp=([0-9]+) wfd_assoc_mac=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) wfd_sink_status=(0x[0-9]+) wfd_sink_mac=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) wfd_extend_capa=(0x[0-9]+) wfd_flags=(0x[0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdInfoPattern:Ljava/util/regex/Pattern;

    .line 189
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 66
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->SYSTEM_DEFAULT:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    .line 69
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdDeviceType:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->connectType:I

    .line 79
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkId:I

    .line 93
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 94
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, -0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 66
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->SYSTEM_DEFAULT:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdDeviceType:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->connectType:I

    .line 79
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkId:I

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 168
    new-instance v0, Landroid/net/wifi/WpsInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsInfo;-><init>(Landroid/net/wifi/WpsInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 169
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 170
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    .line 171
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdDeviceType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdDeviceType:I

    .line 172
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->connectType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->connectType:I

    .line 173
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->networkId:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkId:I

    .line 175
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .parameter "supplicantEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 66
    sget-object v5, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->SYSTEM_DEFAULT:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    .line 69
    iput v8, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdDeviceType:I

    .line 77
    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->connectType:I

    .line 79
    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkId:I

    .line 103
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, tokens:[Ljava/lang/String;
    array-length v5, v4

    if-lt v5, v7, :cond_0

    aget-object v5, v4, v8

    const-string v6, "P2P-GO-NEG-REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Malformed supplicant event"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_1
    aget-object v5, v4, v9

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 111
    new-instance v5, Landroid/net/wifi/WpsInfo;

    invoke-direct {v5}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 113
    array-length v5, v4

    if-le v5, v7, :cond_2

    .line 114
    aget-object v5, v4, v7

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, nameVal:[Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    .local v0, devPasswdId:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 136
    :pswitch_0
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v8, v5, Landroid/net/wifi/WpsInfo;->setup:I

    .line 140
    :goto_1
    sget-object v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 141
    .local v2, match:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pConfig;->parseHex(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdDeviceType:I

    .line 145
    .end local v0           #devPasswdId:I
    .end local v2           #match:Ljava/util/regex/Matcher;
    .end local v3           #nameVal:[Ljava/lang/String;
    :cond_2
    return-void

    .line 118
    .restart local v3       #nameVal:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .restart local v0       #devPasswdId:I
    goto :goto_0

    .line 125
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_1
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v9, v5, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 129
    :pswitch_2
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v8, v5, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 133
    :pswitch_3
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v7, v5, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .parameter "decString"

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 227
    .local v1, num:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pConfig"

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

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .parameter "hexString"

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, num:I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 216
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse hex string "

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
.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "\n address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, "\n groupOwnerIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "\n persist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v1, "\n wfdDeviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    const-string v1, "\n connectType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->connectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 155
    const-string v1, "\n networkId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 181
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->persist:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->connectType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    return-void
.end method
