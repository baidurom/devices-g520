.class public Lcom/mediatek/wfd/WfdAddonService;
.super Ljava/lang/Object;
.source "WfdAddonService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfd/WfdAddonService$Listener;
    }
.end annotation


# static fields
.field private static final MSG_WFD_ADDON_AUTOSEARCH:I = 0x0

.field private static final MSG_WFD_ADDON_DISCOVERPEERS:I = 0x2

.field private static final MSG_WFD_ADDON_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WfdAddonService"

.field private static final WFD_ADDON_AUTOSEARCH_PERIOD:I = 0x1d4c0

.field public static final WFD_ADDON_CONNECT_TIMEOUT:I = 0x7530

.field public static final WFD_ADDON_DISCONNECT_TIMEOUT:I = 0x2710


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mHandler:Landroid/os/Handler;

.field private mLatestPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mListener:Lcom/mediatek/wfd/WfdAddonService$Listener;

.field private mScanActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field private mWfdService:Lcom/mediatek/wfd/WfdService;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfd/WfdService;Lcom/mediatek/wfd/WfdAddonService$Listener;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 1
    .parameter "wfdService"
    .parameter "listener"
    .parameter "manager"
    .parameter "ch"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/mediatek/wfd/WfdAddonService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfd/WfdAddonService$1;-><init>(Lcom/mediatek/wfd/WfdAddonService;)V

    iput-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mScanActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 55
    iput-object p1, p0, Lcom/mediatek/wfd/WfdAddonService;->mWfdService:Lcom/mediatek/wfd/WfdService;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p2, p0, Lcom/mediatek/wfd/WfdAddonService;->mListener:Lcom/mediatek/wfd/WfdAddonService$Listener;

    .line 58
    iput-object p3, p0, Lcom/mediatek/wfd/WfdAddonService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 59
    iput-object p4, p0, Lcom/mediatek/wfd/WfdAddonService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfd/WfdAddonService;)Lcom/mediatek/wfd/WfdService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mWfdService:Lcom/mediatek/wfd/WfdService;

    return-object v0
.end method


# virtual methods
.method public disableBackgroundSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v0, "WfdAddonService"

    const-string v1, "disableBackgroundSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mWfdService:Lcom/mediatek/wfd/WfdService;

    invoke-virtual {v0}, Lcom/mediatek/wfd/WfdService;->cancelNotificationOnStatusbarDetected()V

    .line 85
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public enableBackgroundSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    const-string v0, "WfdAddonService"

    const-string v1, "enableBackgroundSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 114
    :pswitch_0
    const-string v1, "WfdAddonService"

    const-string v2, "handleMessage: MSG_WFD_ADDON_DISCOVERPEERS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/mediatek/wfd/WfdAddonService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/mediatek/wfd/WfdAddonService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v3, p0, Lcom/mediatek/wfd/WfdAddonService;->mScanActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 118
    :pswitch_1
    const-string v2, "WfdAddonService"

    const-string v3, "handleMessage: MSG_WFD_ADDON_AUTOSEARCH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/mediatek/wfd/WfdAddonService;->mWfdService:Lcom/mediatek/wfd/WfdService;

    invoke-virtual {v2}, Lcom/mediatek/wfd/WfdService;->getAutoScan()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/mediatek/wfd/WfdAddonService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wfd/WfdAddonService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 125
    :pswitch_2
    const-string v1, "WfdAddonService"

    const-string v2, "handleMessage: MSG_WFD_ADDON_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/mediatek/wfd/WfdAddonService;->mListener:Lcom/mediatek/wfd/WfdAddonService$Listener;

    invoke-interface {v1}, Lcom/mediatek/wfd/WfdAddonService$Listener;->onConnectTimeout()V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startTimeoutCountDown(I)V
    .locals 4
    .parameter "ms"

    .prologue
    const/4 v3, 0x1

    .line 91
    const-string v0, "WfdAddonService"

    const-string v1, "startTimeoutCountDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    return-void
.end method

.method public stopTimeoutCountDown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    const-string v0, "WfdAddonService"

    const-string v1, "stopTimeoutCountDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public tryDiscoverPeers(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v3, 0x2

    .line 63
    const-string v0, "WfdAddonService"

    const-string v1, "tryDiscoverPeers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    :cond_0
    if-nez p1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdAddonService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/mediatek/wfd/WfdAddonService;->mScanActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updatePeerList(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2
    .parameter "peers"

    .prologue
    .line 106
    const-string v0, "WfdAddonService"

    const-string v1, "updatePeerList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcom/mediatek/wfd/WfdAddonService;->mLatestPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 109
    return-void
.end method
