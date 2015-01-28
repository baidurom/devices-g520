.class public Lcom/mediatek/wfd/WfdSinkService;
.super Ljava/lang/Object;
.source "WfdSinkService.java"

# interfaces
.implements Lcom/mediatek/wfd/PollingIpThreadListener;


# static fields
.field static final TAG:Ljava/lang/String; = "WfdSinkService"


# instance fields
.field mContext:Landroid/content/Context;

.field mPort:I

.field mRemoteDisplay:Landroid/media/RemoteDisplay;

.field mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/media/RemoteDisplay;)V
    .locals 0
    .parameter "context"
    .parameter "p2pManager"
    .parameter "remoteDisplay"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/mediatek/wfd/WfdSinkService;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/mediatek/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 76
    iput-object p3, p0, Lcom/mediatek/wfd/WfdSinkService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 78
    return-void
.end method


# virtual methods
.method public onPollFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 106
    const-string v0, "WfdSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPollFailure, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public onPollSuccess(Ljava/lang/String;)V
    .locals 10
    .parameter "ip"

    .prologue
    const/4 v4, 0x3

    .line 92
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, addrArray:[Ljava/lang/String;
    const/4 v0, 0x4

    new-array v8, v0, [I

    .line 94
    .local v8, num:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_0

    .line 95
    aget-object v0, v6, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    aput v0, v8, v7

    .line 96
    if-ne v7, v4, :cond_1

    .line 100
    :cond_0
    const/4 v9, 0x0

    .line 101
    .local v9, ret:I
    iget-object v0, p0, Lcom/mediatek/wfd/WfdSinkService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    const/4 v3, 0x2

    aget v3, v8, v3

    aget v4, v8, v4

    iget v5, p0, Lcom/mediatek/wfd/WfdSinkService;->mPort:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/RemoteDisplay;->startSink(IIIII)I

    move-result v9

    .line 102
    const-string v0, "WfdSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToServer return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 94
    .end local v9           #ret:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public startSink(Ljava/lang/String;I)I
    .locals 2
    .parameter "mac"
    .parameter "port"

    .prologue
    .line 81
    iput p2, p0, Lcom/mediatek/wfd/WfdSinkService;->mPort:I

    .line 82
    new-instance v0, Lcom/mediatek/wfd/PollingIpThread;

    invoke-direct {v0}, Lcom/mediatek/wfd/PollingIpThread;-><init>()V

    iget-object v1, p0, Lcom/mediatek/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0, v1, p1, p0}, Lcom/mediatek/wfd/PollingIpThread;->startPolling(Landroid/net/wifi/p2p/WifiP2pManager;Ljava/lang/String;Lcom/mediatek/wfd/PollingIpThreadListener;)I

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public stopSink()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/wfd/WfdSinkService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->stopSink()I

    .line 88
    const/4 v0, 0x0

    return v0
.end method
