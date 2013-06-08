.class final Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork$1;
.super Ljava/lang/Object;
.source "WifiP2pPersistNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
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
        "Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    .locals 4
    .parameter "in"

    .prologue
    .line 201
    new-instance v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    invoke-direct {v2}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;-><init>()V

    .line 202
    .local v2, network:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .local v0, clientCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->addClient(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    .locals 1
    .parameter "size"

    .prologue
    .line 217
    new-array v0, p1, [Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork$1;->newArray(I)[Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    move-result-object v0

    return-object v0
.end method
