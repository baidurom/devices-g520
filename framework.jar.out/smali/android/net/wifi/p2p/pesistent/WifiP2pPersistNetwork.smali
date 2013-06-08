.class public Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
.super Ljava/lang/Object;
.source "WifiP2pPersistNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AS_GC:I = 0x0

.field public static final AS_GO:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_DISABLE:I = 0x0

.field public static final NETWORK_ENABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiP2pPersistNetwork"

.field private static final listNetworkPatternGc:Ljava/util/regex/Pattern;

.field private static final listNetworkPatternGo:Ljava/util/regex/Pattern;


# instance fields
.field public bssid:Ljava/lang/String;

.field public clientStr:Ljava/lang/String;

.field public clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public disable:I

.field public mode:I

.field public networkId:I

.field public peerAddress:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "([0-9])\t(.*)\t((?:[0-9a-f]{2}:){5}[0-9a-f]{2}|any)\t([0-9])\t([0-9])\t([0-9])(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->listNetworkPatternGo:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "([0-9])\t(.*)\t((?:[0-9a-f]{2}:){5}[0-9a-f]{2}|any)\t([0-9])\t([0-9])\t([0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->listNetworkPatternGc:Ljava/util/regex/Pattern;

    .line 198
    new-instance v0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    .line 49
    iput v1, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    .line 51
    iput v1, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;)V
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, -0x1

    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v3, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    .line 43
    const-string v2, ""

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    .line 45
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    .line 47
    const-string v2, ""

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    .line 49
    iput v3, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    .line 51
    iput v3, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    .line 53
    const-string v2, ""

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget v2, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    iput v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    .line 155
    iget-object v2, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    .line 156
    iget-object v2, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    .line 157
    iget-object v2, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    .line 158
    iget v2, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    iput v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    .line 159
    iget v2, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    iput v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    .line 160
    iget-object v2, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->getClientList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, c:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .parameter "string"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v5, -0x1

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v5, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    .line 43
    const-string v4, ""

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    .line 45
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    .line 47
    const-string v4, ""

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    .line 49
    iput v5, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    .line 51
    iput v5, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    .line 53
    const-string v4, ""

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    .line 96
    const-string v4, "\t"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, tokens:[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    .line 101
    const-string v4, "WifiP2pPersistNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersistNetwork string length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    sget-object v4, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->listNetworkPatternGo:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 105
    .local v2, match:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->parseDec(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    .line 107
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    .line 108
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->parseDec(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    .line 110
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->parseDec(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    .line 111
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    .line 113
    iget-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, client:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 115
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->addClient(Ljava/lang/String;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    if-nez v4, :cond_2

    .line 118
    iget-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    .line 134
    .end local v0           #client:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    :goto_1
    return-void

    .line 121
    :cond_3
    sget-object v4, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->listNetworkPatternGc:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_4

    .line 124
    const-string v4, "WifiP2pPersistNetwork"

    const-string v5, "PersistNetwork string not match GO and GC"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_4
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->parseDec(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    .line 127
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->parseDec(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    .line 130
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->parseDec(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    .line 131
    iget-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .parameter "decString"

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 240
    .local v1, num:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 244
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pPersistNetwork"

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
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, num:I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 229
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 233
    :goto_0
    return v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pPersistNetwork"

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
.method public addClient(Ljava/lang/String;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 167
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, c:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    .end local v0           #c:Ljava/lang/String;
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getClientList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v2, sbuf:Ljava/lang/StringBuffer;
    const-string/jumbo v3, "networkId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 139
    const-string v3, " ssid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v3, " peerAddress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v3, " bssid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v3, " disable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 143
    const-string v3, " mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 144
    const-string v3, " clientStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v3, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, client:Ljava/lang/String;
    const-string v3, " client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 148
    .end local v0           #client:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 184
    iget v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, client:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v0           #client:Ljava/lang/String;
    :cond_0
    return-void
.end method
