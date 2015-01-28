.class public Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;
.super Ljava/lang/Object;
.source "WifiP2pPersistNetworkList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pPersistNetworkList"


# instance fields
.field private mNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->getNetworkList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    .line 78
    .local v1, n:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #n:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, networks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    .line 87
    .local v1, network:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    iget-object v2, v1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    .end local v1           #network:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 150
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    .locals 1
    .parameter "peerAddress"

    .prologue
    .line 113
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    goto :goto_0
.end method

.method public getNetworkId(Ljava/lang/String;)I
    .locals 4
    .parameter "address"

    .prologue
    const/4 v0, -0x1

    .line 102
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return v0

    .line 103
    :cond_0
    const-string v1, "WifiP2pPersistNetworkList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const-string v0, "WifiP2pPersistNetworkList"

    const-string/jumbo v1, "mNetworks contains key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    iget v0, v0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    goto :goto_0

    .line 108
    :cond_1
    const-string v1, "WifiP2pPersistNetworkList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworks does not contain key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNetworkList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadPersistentNetworks(Ljava/lang/String;)V
    .locals 10
    .parameter "listStr"

    .prologue
    const/4 v9, 0x2

    .line 48
    const-string v6, "WifiP2pPersistNetworkList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "listStr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v6, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 50
    const-string v6, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, lines:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    .line 52
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Malformed supplicant event"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_3

    .line 55
    new-instance v4, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    aget-object v6, v3, v1

    invoke-direct {v4, v6}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;-><init>(Ljava/lang/String;)V

    .line 56
    .local v4, mConfigNetwork:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    const-string v6, "WifiP2pPersistNetworkList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "line"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v6, v4, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget v6, v4, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    if-ne v6, v9, :cond_1

    .line 58
    invoke-virtual {v4}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->getClientList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, address:Ljava/lang/String;
    new-instance v5, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    invoke-direct {v5, v4}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;-><init>(Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;)V

    .line 60
    .local v5, netwotk:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    iput-object v0, v5, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    .line 61
    iget-object v6, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    iget-object v7, v5, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v6, "WifiP2pPersistNetworkList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "line"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": put mConfigNetwork"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #netwotk:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    :cond_1
    iget-object v6, v4, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget v6, v4, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    if-ne v6, v9, :cond_2

    .line 66
    iget-object v6, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    iget-object v7, v4, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v6, "WifiP2pPersistNetworkList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "line"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": put mConfigNetwork"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 71
    .end local v4           #mConfigNetwork:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    :cond_3
    const-string v6, "WifiP2pPersistNetworkList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadPersistentNetworks ok mNetworks: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public remove(Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;)Z
    .locals 3
    .parameter "network"

    .prologue
    const/4 v0, 0x0

    .line 143
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v2, sbuf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    .line 96
    .local v1, network:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 98
    .end local v1           #network:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;)V
    .locals 5
    .parameter "network"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    .line 121
    .local v2, n:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    if-eqz v2, :cond_2

    .line 122
    iget v3, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    iput v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->networkId:I

    .line 123
    iget-object v3, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->ssid:Ljava/lang/String;

    .line 124
    iget-object v3, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    .line 125
    iget-object v3, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->bssid:Ljava/lang/String;

    .line 126
    iget v3, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    iput v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->disable:I

    .line 127
    iget v3, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    iput v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->mode:I

    .line 128
    iget-object v3, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->clientStr:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->getClientList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, c:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->addClient(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;->peerAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 160
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v2, p0, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetworkList;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;

    .line 162
    .local v1, network:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 164
    .end local v1           #network:Landroid/net/wifi/p2p/pesistent/WifiP2pPersistNetwork;
    :cond_0
    return-void
.end method
