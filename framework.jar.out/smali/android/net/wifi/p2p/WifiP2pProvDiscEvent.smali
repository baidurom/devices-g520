.class public Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
.super Ljava/lang/Object;
.source "WifiP2pProvDiscEvent.java"


# static fields
.field public static final ENTER_PIN:I = 0x3

.field public static final PBC_REQ:I = 0x1

.field public static final PBC_RSP:I = 0x2

.field public static final SHOW_PIN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiP2pProvDiscEvent"

.field private static final wfdInfoPattern:Ljava/util/regex/Pattern;


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public event:I

.field public pin:Ljava/lang/String;

.field public wfdDeviceType:I

.field public wfdState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "wfd_en=(\\d) wfd_info=(0x[0-9a-fA-F]+) wfd_ctrl_port=([0-9]+) wfd_tp=([0-9]+) wfd_assoc_mac=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) wfd_sink_status=(0x[0-9]+) wfd_sink_mac=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) wfd_extend_capa=(0x[0-9]+) wfd_flags=(0x[0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wfdInfoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wfdState:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wfdDeviceType:I

    .line 71
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 72
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
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wfdState:I

    .line 58
    iput v7, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wfdDeviceType:I

    .line 88
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, tokens:[Ljava/lang/String;
    array-length v4, v1

    if-ge v4, v3, :cond_0

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    aget-object v4, v1, v6

    const-string v5, "PBC-REQ"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    .line 102
    :goto_0
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 103
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    aget-object v5, v1, v2

    iput-object v5, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 105
    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    if-ne v4, v8, :cond_1

    .line 106
    aget-object v4, v1, v3

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    .line 109
    :cond_1
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wfdInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_6

    .line 111
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wfdState:I

    .line 117
    :goto_1
    return-void

    .line 96
    .end local v0           #match:Ljava/util/regex/Matcher;
    :cond_2
    aget-object v4, v1, v6

    const-string v5, "PBC-RESP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v3, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    goto :goto_0

    .line 97
    :cond_3
    aget-object v4, v1, v6

    const-string v5, "ENTER-PIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput v7, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    goto :goto_0

    .line 98
    :cond_4
    aget-object v4, v1, v6

    const-string v5, "SHOW-PIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v8, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    goto :goto_0

    .line 99
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .restart local v0       #match:Ljava/util/regex/Matcher;
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->parseDec(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_7

    move v2, v3

    :cond_7
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wfdState:I

    .line 115
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->parseHex(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wfdDeviceType:I

    goto :goto_1
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .parameter "decString"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 146
    .local v1, num:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pProvDiscEvent"

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
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, num:I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pProvDiscEvent"

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
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v0, sbuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, "\n event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, "\n pin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
