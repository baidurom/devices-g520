.class public Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
.super Ljava/lang/Object;
.source "WfdAutoConnectInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdAutoConnectInfo"

.field private static final wfdAutoConnectInfoPattern:Ljava/util/regex/Pattern;


# instance fields
.field public networkId:I

.field public peerAddress:Ljava/lang/String;

.field public wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "networkId=([0-9]) peerAddress=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}|any) rtspPort=(.*) maxTh=(.*) wfdFlags=(.*) isDualRoleBeforeConnect=(.*) deviceType=(.*) sessionAvailable=(.*) wsd=(.*) cp=(.*) prefDisplayMode=(.*) standbyResumeCtrl=(.*) associatedBSSID=(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfdAutoConnectInfoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    .line 40
    new-instance v0, Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget v0, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    iput v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    .line 94
    iget-object v0, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>(Landroid/net/wifi/p2p/wfd/WfdInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    .line 97
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
    const/4 v8, 0x6

    const/4 v7, 0x2

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v4, -0x1

    iput v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    .line 58
    new-instance v4, Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v4}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    .line 59
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, lines:[Ljava/lang/String;
    const-string v4, "WfdAutoConnectInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdAutoConnectInfo in string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    array-length v4, v2

    if-ge v4, v7, :cond_0

    .line 65
    const-string v4, "WfdAutoConnectInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdAutoConnectInfo in string length error, length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    sget-object v4, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfdAutoConnectInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 69
    .local v3, match:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->parseDec(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    .line 71
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    .line 72
    iget-object v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->parseDec(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 73
    iget-object v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->parseDec(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    .line 74
    iget-object v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/p2p/wfd/WfdInfo;->wfdFlags:I

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/Boolean;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, b:Ljava/lang/Boolean;
    iget-object v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Landroid/net/wifi/p2p/wfd/WfdInfo;->isDualRoleBeforeConnect:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0           #b:Ljava/lang/Boolean;
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->parseDec(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 82
    iget-object v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->parseDec(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    .line 83
    iget-object v4, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/p2p/wfd/WfdInfo;->associatedBSSID:Ljava/lang/String;

    .line 88
    :goto_1
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "WfdAutoConnectInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse boolean string "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "WfdAutoConnectInfo"

    const-string v5, "WfdAutoConnectInfo Malformed Pattern, not match String "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .parameter "decString"

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 112
    .local v1, num:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WfdAutoConnectInfo"

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
    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, num:I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WfdAutoConnectInfo"

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
    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string/jumbo v1, "networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " peerAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
