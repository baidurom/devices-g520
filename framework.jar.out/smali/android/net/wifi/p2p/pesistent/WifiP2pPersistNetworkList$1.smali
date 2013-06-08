.class final Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList$1;
.super Ljava/lang/Object;
.source "WifiP2pPersistNetworkList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;
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
        "Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;
    .locals 4
    .parameter "in"

    .prologue
    .line 170
    new-instance v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;

    invoke-direct {v2}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;-><init>()V

    .line 172
    .local v2, networkList:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .local v1, networkCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 174
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->update(Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;
    .locals 1
    .parameter "size"

    .prologue
    .line 180
    new-array v0, p1, [Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList$1;->newArray(I)[Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;

    move-result-object v0

    return-object v0
.end method
