.class public Landroid/net/wifi/p2p/WifiP2pDevice;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AVAILABLE:I = 0x3

.field public static final CONNECTED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_CAPAB_CLIENT_DISCOVERABILITY:I = 0x2

.field private static final DEVICE_CAPAB_CONCURRENT_OPER:I = 0x4

.field private static final DEVICE_CAPAB_DEVICE_LIMIT:I = 0x10

.field private static final DEVICE_CAPAB_INFRA_MANAGED:I = 0x8

.field private static final DEVICE_CAPAB_INVITATION_PROCEDURE:I = 0x20

.field private static final DEVICE_CAPAB_SERVICE_DISCOVERY:I = 0x1

.field public static final FAILED:I = 0x2

.field private static final GROUP_CAPAB_CROSS_CONN:I = 0x10

.field private static final GROUP_CAPAB_GROUP_FORMATION:I = 0x40

.field private static final GROUP_CAPAB_GROUP_LIMIT:I = 0x4

.field private static final GROUP_CAPAB_GROUP_OWNER:I = 0x1

.field private static final GROUP_CAPAB_INTRA_BSS_DIST:I = 0x8

.field private static final GROUP_CAPAB_PERSISTENT_GROUP:I = 0x2

.field private static final GROUP_CAPAB_PERSISTENT_RECONN:I = 0x20

.field public static final GROUP_ROLE_GC:I = 0x2

.field public static final GROUP_ROLE_GO:I = 0x1

.field public static final GROUP_ROLE_NONE:I = 0x3

.field public static final INVITED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiP2pDevice"

.field public static final UNAVAILABLE:I = 0x4

.field private static final WPS_CONFIG_DISPLAY:I = 0x8

.field private static final WPS_CONFIG_KEYPAD:I = 0x100

.field private static final WPS_CONFIG_PUSHBUTTON:I = 0x80

.field private static final detailedDevicePattern:Ljava/util/regex/Pattern;

.field private static final detailedWfdDevicePattern:Ljava/util/regex/Pattern;

.field private static final intendedAddressPattern:Ljava/util/regex/Pattern;

.field private static final interfaceAddressPattern:Ljava/util/regex/Pattern;

.field private static final threeTokenPattern:Ljava/util/regex/Pattern;

.field private static final twoTokenPattern:Ljava/util/regex/Pattern;

.field private static final wfdInfoPattern:Ljava/util/regex/Pattern;

.field private static final wfdInfoPattern2:Ljava/util/regex/Pattern;


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public deviceCapability:I

.field public deviceName:Ljava/lang/String;

.field public deviceRole:I

.field public groupCapability:I

.field public groupOwnerAddress:Ljava/lang/String;

.field public interfaceAddress:Ljava/lang/String;

.field public primaryDeviceType:Ljava/lang/String;

.field public secondaryDeviceType:Ljava/lang/String;

.field public status:I

.field public wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

.field public wfdState:I

.field public wpsConfigMethodsSupported:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) (\\d+ )?p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) pri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+) name=\'(.*)\' config_methods=(0x[0-9a-fA-F]+) dev_capab=(0x[0-9a-fA-F]+) group_capab=(0x[0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    .line 181
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) (\\d+ )?p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) pri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+) name=\'(.*)\' config_methods=(0x[0-9a-fA-F]+) dev_capab=(0x[0-9a-fA-F]+) group_capab=(0x[0-9a-fA-F]+) (?:wfd_dev_info=(0x[0-9a-fA-F]+) )?go_iface=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedWfdDevicePattern:Ljava/util/regex/Pattern;

    .line 197
    const-string v0, "(p2p_dev_addr=)?((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    .line 206
    const-string v0, "(?:[0-9a-f]{2}:){5}[0-9a-f]{2} p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    .line 209
    const-string/jumbo v0, "wfd_en=(\\d) wfd_info=(0x[0-9a-fA-F]+) wfd_ctrl_port=([0-9]+) wfd_tp=([0-9]+) wfd_assoc_mac=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) wfd_sink_status=(0x[0-9a-fA-F]+) wfd_sink_mac=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) wfd_extend_capa=(0x[0-9a-fA-F]+) wfd_flags=(0x[0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfoPattern:Ljava/util/regex/Pattern;

    .line 219
    const-string/jumbo v0, "wfd_en=(\\d)(?:.*)wfd_info=(0x[0-9a-fA-F]+)(?:.*)wfd_ctrl_port=([0-9]+)(?:.*)wfd_tp=([0-9]+)(?:.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfoPattern2:Ljava/util/regex/Pattern;

    .line 224
    const-string v0, "interface_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddressPattern:Ljava/util/regex/Pattern;

    .line 225
    const-string v0, "intended_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->intendedAddressPattern:Ljava/util/regex/Pattern;

    .line 418
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 117
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    .line 146
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    .line 154
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupOwnerAddress:Ljava/lang/String;

    .line 228
    new-instance v0, Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 117
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    .line 146
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    .line 154
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupOwnerAddress:Ljava/lang/String;

    .line 385
    if-eqz p1, :cond_0

    .line 386
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 387
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 388
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 389
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 390
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 391
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 392
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 393
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 394
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 395
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    .line 396
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    .line 397
    new-instance v0, Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>(Landroid/net/wifi/p2p/wfd/WfdInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    .line 399
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v3, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x1

    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v4, ""

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 43
    const-string v4, ""

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 49
    const-string v4, ""

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 117
    iput v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 140
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    .line 146
    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    .line 154
    const-string v4, ""

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupOwnerAddress:Ljava/lang/String;

    .line 245
    const-string v4, "[ \n]"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, tokens:[Ljava/lang/String;
    new-instance v4, Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v4}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    .line 249
    array-length v4, v1

    if-ge v4, v2, :cond_0

    .line 250
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed supplicant event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_0
    array-length v4, v1

    packed-switch v4, :pswitch_data_0

    .line 273
    new-instance v4, Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v4}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    .line 274
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 275
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 276
    const-string v4, "WifiP2pDevice"

    const-string v5, "This is a WFD wifip2pdevice"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseDec(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v2, v3

    :cond_1
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    .line 279
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/wfd/WfdInfo;->parseWfdDeviceInfo(I)Z

    .line 280
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseDec(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 281
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseDec(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    .line 282
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->associatedBSSID:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->wfdFlags:I

    .line 289
    :goto_0
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedWfdDevicePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 291
    const-string v2, "WifiP2pDevice"

    const-string v3, "This wifip2pdevice carry group role info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 293
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 294
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 295
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 296
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 297
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 298
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupOwnerAddress:Ljava/lang/String;

    .line 299
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->setGroupRole()V

    .line 316
    :goto_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "P2P-DEVICE-FOUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 319
    .end local v0           #match:Ljava/util/regex/Matcher;
    :cond_2
    :goto_2
    return-void

    .line 256
    :pswitch_0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_2

    .line 259
    :pswitch_1
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 260
    .restart local v0       #match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed supplicant event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_2

    .line 266
    .end local v0           #match:Ljava/util/regex/Matcher;
    :pswitch_2
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 267
    .restart local v0       #match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_4

    .line 268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed supplicant event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_2

    .line 286
    :cond_5
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    .line 287
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    goto/16 :goto_0

    .line 301
    :cond_6
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_7

    .line 303
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed supplicant event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_7
    const-string v2, "WifiP2pDevice"

    const-string v3, "This is a common wifip2pdevice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 307
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 309
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 310
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 311
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    goto/16 :goto_1

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .parameter "decString"

    .prologue
    .line 521
    const/4 v1, 0x0

    .line 524
    .local v1, num:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 528
    :goto_0
    return v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pDevice"

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
    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, num:I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 513
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 517
    :goto_0
    return v1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pDevice"

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

.method private setGroupRole()V
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    .line 451
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupOwnerAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupOwnerAddress:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    goto :goto_0

    .line 449
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    if-ne p0, p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v1

    .line 350
    :cond_1
    instance-of v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v3, :cond_2

    move v1, v2

    .line 351
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 353
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 354
    .local v0, other:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 355
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 357
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isGroupOwner()Z
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceDiscoveryCapable()Z
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseInterfaceAddress(Ljava/lang/String;)Z
    .locals 6
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 483
    if-nez p1, :cond_0

    .line 484
    const-string v2, "WifiP2pDevice"

    const-string/jumbo v3, "parseInterfaceAddress P2P_PEER return null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return v1

    .line 487
    :cond_0
    const-string v3, "WifiP2pDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseInterfaceAddress P2P_PEER return String: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pDevice;->intendedAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 491
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    move v1, v2

    .line 493
    goto :goto_0

    .line 496
    :cond_1
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 498
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    move v1, v2

    .line 499
    goto :goto_0

    .line 501
    :cond_2
    const-string v2, "WifiP2pDevice"

    const-string v3, "Falied to match intended address"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public parseWfdInfo(Ljava/lang/String;)Z
    .locals 8
    .parameter "string"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 455
    if-nez p1, :cond_0

    .line 456
    const-string v3, "WifiP2pDevice"

    const-string/jumbo v4, "parseWfdInfo BSS or STA command return null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 478
    :goto_0
    return v4

    .line 459
    :cond_0
    const-string v5, "WifiP2pDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseWfdInfo BSS or STA command return String: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, tokens:[Ljava/lang/String;
    array-length v5, v1

    if-ge v5, v4, :cond_1

    .line 464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed supplicant event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 467
    :cond_1
    sget-object v5, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfoPattern2:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 468
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 469
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseDec(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v3

    :goto_1
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    .line 471
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/wfd/WfdInfo;->parseWfdDeviceInfo(I)Z

    .line 472
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseDec(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 473
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseDec(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    goto :goto_0

    :cond_2
    move v2, v4

    .line 469
    goto :goto_1

    .line 476
    :cond_3
    const-string v3, "WifiP2pDevice"

    const-string v4, "Falied to match BSS or STA command return String!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 478
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const-string v1, "\n deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    const-string v1, "\n interfaceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    const-string v1, "\n primary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const-string v1, "\n secondary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 368
    const-string v1, "\n grpcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 369
    const-string v1, "\n devcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 370
    const-string v1, "\n status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 371
    const-string v1, "\n deviceRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 372
    const-string v1, "\n wfdState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 373
    const-string v1, "\n WfdINfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public wpsDisplaySupported()Z
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wpsKeypadSupported()Z
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wpsPbcSupported()Z
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 403
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 415
    return-void
.end method
