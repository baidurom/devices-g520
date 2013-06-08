.class final Landroid/net/wifi/p2p/WifiP2pInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/p2p/WifiP2pInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    .line 99
    .local v0, info:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_1

    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_2

    .line 108
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->myAddress:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v3

    .line 99
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_2

    .line 104
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 115
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    return-object v0
.end method
