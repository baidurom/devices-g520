.class public Lcom/mediatek/wfd/WfdService;
.super Lcom/mediatek/common/wfd/IWfdService$Stub;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfd/WfdService$GroupInfoObserver;,
        Lcom/mediatek/wfd/WfdService$MyPeerListener;,
        Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;,
        Lcom/mediatek/wfd/WfdService$MyHandler;
    }
.end annotation


# static fields
.field static final ERROR_PEER_LIST_FLUSHED:I = 0x2

.field static final ERROR_STATUS_REVERTED:I = 0x1

.field protected static final EVENT_INPUT_KEY:I = 0x0

.field protected static final EVENT_INPUT_TOUCH:I = 0x1

.field static final MIRACAST_NOTIFICATION_ID_CONNECTED:I = 0x2

.field static final MIRACAST_NOTIFICATION_ID_DETECTED:I = 0x1

.field static final MIRACAST_NOTIFICATION_TAG_CONNECTED:Ljava/lang/String; = "WfdService.available.device.connected"

.field static final MIRACAST_NOTIFICATION_TAG_DETECTED:Ljava/lang/String; = "WfdService.available.device.detected"

.field protected static final MSG_WFDSRV_QUEUE_CONNECT:I = 0x4

.field protected static final MSG_WFDSRV_RTSP_START_TIMEOUT:I = 0x5

.field protected static final MSG_WFDSRV_RTSP_TEARDOWN_TIMEOUT:I = 0x3

.field static final STATE_CONNECTED:I = 0x3

.field static final STATE_CONNECTING:I = 0x2

.field static final STATE_DISCONNECTED:I = 0x1

.field static final STATE_DISCONNECTING:I = 0x4

.field static final STATE_RTSP_CONNECTED:I = 0x2

.field static final STATE_RTSP_DISCONNECTED:I = 0x1

.field static final STATE_RTSP_STOPPED:I = 0x0

.field static final TAG:Ljava/lang/String; = "WfdService"

.field public static final WFD_DISCOVER_PEER_DELAY:I = 0xc8

.field public static final WFD_POLLING_SCANNED_DURATION:I = 0x3e8

.field public static final WFD_QUEUE_CONNECT_RETRY_LIMIT:I = 0xb4

.field public static final WFD_START_RTSP_TIMEOUT:I = 0xafc8

.field static final WPS_PBC:I = 0x1

.field static final WPS_PIN:I


# instance fields
.field private mAddonService:Lcom/mediatek/wfd/WfdAddonService;

.field private mAddonServiceListener:Lcom/mediatek/wfd/WfdAddonService$Listener;

.field private mAlivedPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupShowTouchVal:I

.field mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectState:I

.field private mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectingMac:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDesiredMac:Ljava/lang/String;

.field private mEMBitrateControl:I

.field private mEMConfig:I

.field mFilter:Landroid/content/IntentFilter;

.field private mGoInetAddress:Ljava/net/InetAddress;

.field private mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

.field private mIsAutoScan:Z

.field private mIsEnabled:Z

.field private mIsEnabled_ScreenOff:Z

.field private mIsEnabled_WifiP2pOff:Z

.field private mIsGo:Z

.field private mIsScanning:Z

.field private mNeedFastRtsp:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mPeerListener:Lcom/mediatek/wfd/WfdService$MyPeerListener;

.field private mQueueConnectMac:Ljava/lang/String;

.field private mQueueConnect_RetryCounter:I

.field mReceiver:Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field mRtspServerPort:I

.field private mRtspState:I

.field private mScannedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggerException:Ljava/lang/String;

.field private mWfdSinkService:Lcom/mediatek/wfd/WfdSinkService;

.field private mWfdT2dService:Lcom/mediatek/wfd/t2d/WfdT2dService;

.field private mWfdT2dServiceListener:Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 708
    invoke-direct {p0}, Lcom/mediatek/common/wfd/IWfdService$Stub;-><init>()V

    .line 91
    iput v9, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mConnectedDevices:Ljava/util/List;

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    .line 98
    const-string v3, "It should be RunTime Exception!"

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mTriggerException:Ljava/lang/String;

    .line 99
    iput v8, p0, Lcom/mediatek/wfd/WfdService;->mWpsState:I

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mAlivedPeers:Ljava/util/List;

    .line 127
    new-instance v3, Lcom/mediatek/wfd/WfdService$1;

    invoke-direct {v3, p0}, Lcom/mediatek/wfd/WfdService$1;-><init>(Lcom/mediatek/wfd/WfdService;)V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mAddonServiceListener:Lcom/mediatek/wfd/WfdAddonService$Listener;

    .line 133
    new-instance v3, Lcom/mediatek/wfd/WfdService$2;

    invoke-direct {v3, p0}, Lcom/mediatek/wfd/WfdService$2;-><init>(Lcom/mediatek/wfd/WfdService;)V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mWfdT2dServiceListener:Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;

    .line 702
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    .line 703
    new-instance v3, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;

    invoke-direct {v3, p0}, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;-><init>(Lcom/mediatek/wfd/WfdService;)V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mReceiver:Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;

    .line 704
    new-instance v3, Lcom/mediatek/wfd/WfdService$MyPeerListener;

    invoke-direct {v3, p0}, Lcom/mediatek/wfd/WfdService$MyPeerListener;-><init>(Lcom/mediatek/wfd/WfdService;)V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mPeerListener:Lcom/mediatek/wfd/WfdService$MyPeerListener;

    .line 706
    const/16 v3, 0x1c44

    iput v3, p0, Lcom/mediatek/wfd/WfdService;->mRtspServerPort:I

    .line 709
    const-string v3, "WfdService"

    const-string v4, "creating WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 711
    const-string v3, "wifip2p"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 712
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 713
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.media.RemoteDisplay.connected"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.media.RemoteDisplay.disconnected"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.media.RemoteDisplay.error"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.media.RemoteDisplay.rtspteardown"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.media.RemoteDisplay.rtspause"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "com.mediatek.wfd.managercreated"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mReceiver:Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 728
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WfdServiceThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 729
    .local v2, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 730
    new-instance v3, Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mediatek/wfd/WfdService$MyHandler;-><init>(Lcom/mediatek/wfd/WfdService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    .line 732
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    .line 734
    new-instance v3, Landroid/media/RemoteDisplay;

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/RemoteDisplay;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 735
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v3}, Landroid/media/RemoteDisplay;->init()I

    .line 737
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v3, v4, v8, v5}, Landroid/media/RemoteDisplay;->registerInputKeyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 738
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v3, v4, v9, v5}, Landroid/media/RemoteDisplay;->registerInputTouchEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 740
    new-instance v3, Lcom/mediatek/wfd/WfdAddonService;

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mAddonServiceListener:Lcom/mediatek/wfd/WfdAddonService$Listener;

    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/mediatek/wfd/WfdAddonService;-><init>(Lcom/mediatek/wfd/WfdService;Lcom/mediatek/wfd/WfdAddonService$Listener;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    .line 741
    new-instance v3, Lcom/mediatek/wfd/WfdSinkService;

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/wfd/WfdSinkService;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/media/RemoteDisplay;)V

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mWfdSinkService:Lcom/mediatek/wfd/WfdSinkService;

    .line 742
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService;->mWfdT2dServiceListener:Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter;->createT2dService(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/media/RemoteDisplay;Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;)Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$IWfdT2dService;

    move-result-object v3

    check-cast v3, Lcom/mediatek/wfd/t2d/WfdT2dService;

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mWfdT2dService:Lcom/mediatek/wfd/t2d/WfdT2dService;

    .line 743
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 745
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 746
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 756
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wfd_auto_scan_on"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 757
    .local v1, enable:I
    if-ne v9, v1, :cond_2

    .line 758
    iput-boolean v9, p0, Lcom/mediatek/wfd/WfdService;->mIsAutoScan:Z

    .line 762
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->actionAtDisconnected()V

    .line 763
    return-void

    .line 748
    .end local v1           #enable:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wfd_on"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v9, v3, :cond_0

    .line 750
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/wfd/WfdService;->enable()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 760
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #enable:I
    :cond_2
    iput-boolean v8, p0, Lcom/mediatek/wfd/WfdService;->mIsAutoScan:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->onTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->stopRtspServer()V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doDisconnect()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectingMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService;->mConnectingMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doCancelConnect()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/wfd/WfdService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfd/WfdService;->sendKeyEvent(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/wfd/WfdService;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfd/WfdService;->sendTap(FF)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->onRtspDisconnected()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnect_RetryCounter:I

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnect_RetryCounter:I

    return p1
.end method

.method static synthetic access$1808(Lcom/mediatek/wfd/WfdService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnect_RetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnect_RetryCounter:I

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wfd/WfdService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->doConnect(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdService$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mIsEnabled_WifiP2pOff:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/wfd/WfdService;->mIsEnabled_WifiP2pOff:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/mediatek/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/mediatek/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/mediatek/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/wfd/WfdService;->mIsScanning:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->notifyStartScan()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->notifyStopScan()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mIsGo:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/wfd/WfdService;->mIsGo:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/mediatek/wfd/WfdService;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService;->mGoInetAddress:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/mediatek/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->notifyEnabled()V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/wfd/WfdService;->mNeedFastRtsp:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->notifyDisabled()V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->onRtspConnected()V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->onRtspError()V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->notifyDevicesChanged()V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/wfd/WfdService;)Landroid/media/RemoteDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mIsEnabled_ScreenOff:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/mediatek/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/wfd/WfdService;->mIsEnabled_ScreenOff:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mAlivedPeers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pGroup;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfd/WfdService;->mappingGroupandScannedDevice(Landroid/net/wifi/p2p/WifiP2pGroup;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/wfd/WfdService;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->onConnected(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$402(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->onDisconnected()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mTriggerException:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdAddonService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->onError(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->doConnectQueued(Ljava/lang/String;)V

    return-void
.end method

.method private actionAtConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1207
    const-string v0, "WfdService"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_touches"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mBackupShowTouchVal:I

    .line 1209
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_touches"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1210
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_rotation"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1211
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1216
    return-void
.end method

.method private actionAtDisconnected()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 1234
    const-string v0, "WfdService"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_touches"

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mBackupShowTouchVal:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1236
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1237
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1241
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v4}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v4}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v5}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1248
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v5}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 1250
    :cond_2
    return-void
.end method

.method private clearConnectVariable()V
    .locals 3

    .prologue
    .line 299
    const-string v0, "WfdService"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mNeedFastRtsp:Z

    .line 302
    return-void
.end method

.method private clearConnectedDevices()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    return-void
.end method

.method private createWfdInfo(Z)Landroid/net/wifi/p2p/wfd/WfdInfo;
    .locals 6
    .parameter "isDualRole"

    .prologue
    const v5, 0x8000

    const/4 v4, 0x1

    .line 766
    new-instance v0, Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>()V

    .line 767
    .local v0, info:Landroid/net/wifi/p2p/wfd/WfdInfo;
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRtspServerPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/wfd/WfdService;->mRtspServerPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    if-eqz p1, :cond_0

    .line 769
    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 770
    iput v4, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    .line 771
    iget v1, p0, Lcom/mediatek/wfd/WfdService;->mRtspServerPort:I

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 772
    iput v5, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    .line 779
    :goto_0
    return-object v0

    .line 774
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 775
    iput v4, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    .line 776
    iget v1, p0, Lcom/mediatek/wfd/WfdService;->mRtspServerPort:I

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 777
    iput v5, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    goto :goto_0
.end method

.method private describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 5
    .parameter "device"

    .prologue
    const/4 v4, 0x2

    .line 940
    const-string v0, "[]"

    .line 941
    .local v0, status:Ljava/lang/String;
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    packed-switch v2, :pswitch_data_0

    .line 958
    :goto_0
    const-string v1, "[DISABLED]"

    .line 959
    .local v1, wfdStatus:Ljava/lang/String;
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    if-ne v2, v4, :cond_0

    .line 960
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    if-nez v2, :cond_1

    .line 961
    const-string v1, "[NULL]"

    .line 975
    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->loadWfdWpsSetup(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/wfd/WfdService;->mWpsState:I

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/wfd/WfdService;->mWpsState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 943
    .end local v1           #wfdStatus:Ljava/lang/String;
    :pswitch_0
    const-string v0, "[AVAILABLE]"

    .line 944
    goto :goto_0

    .line 946
    :pswitch_1
    const-string v0, "[CONNECTED]"

    .line 947
    goto :goto_0

    .line 949
    :pswitch_2
    const-string v0, "[INVITED]"

    .line 950
    goto :goto_0

    .line 952
    :pswitch_3
    const-string v0, "[FAILED]"

    .line 953
    goto :goto_0

    .line 955
    :pswitch_4
    const-string v0, "[UNAVAILABLE]"

    goto :goto_0

    .line 963
    .restart local v1       #wfdStatus:Ljava/lang/String;
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v2, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    if-nez v2, :cond_2

    .line 964
    const-string v1, "[SOURCE]"

    goto :goto_1

    .line 965
    :cond_2
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v2, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 966
    const-string v1, "[DUAL]"

    goto :goto_1

    .line 967
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v2, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 968
    const-string v1, "[1ST_SINK]"

    goto :goto_1

    .line 969
    :cond_4
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v2, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    if-ne v2, v4, :cond_0

    .line 970
    const-string v1, "[2ST_SINK]"

    goto :goto_1

    .line 941
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private doCancelConnect()I
    .locals 3

    .prologue
    .line 240
    const-string v0, "WfdService"

    const-string v1, "doCancelConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->clearConnectVariable()V

    .line 242
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/mediatek/wfd/WfdService$4;

    invoke-direct {v2, p0}, Lcom/mediatek/wfd/WfdService$4;-><init>(Lcom/mediatek/wfd/WfdService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method private doConnect(Ljava/lang/String;)I
    .locals 8
    .parameter "macToConnect"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 305
    move-object v7, p1

    .line 306
    .local v7, mac:Ljava/lang/String;
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doConnect, mac = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mIsScanning = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mediatek/wfd/WfdService;->mIsScanning:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 319
    .local v6, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    const/16 v0, 0xd

    iput v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 320
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mWpsState:I

    if-nez v0, :cond_0

    .line 321
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 325
    :goto_0
    iput-object v7, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 326
    iput v2, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wfdDeviceType:I

    .line 327
    iput-object v4, p0, Lcom/mediatek/wfd/WfdService;->mConnectingMac:Ljava/lang/String;

    .line 328
    iput-object v4, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/mediatek/wfd/WfdAddonService;->startTimeoutCountDown(I)V

    .line 331
    const-string v0, "WfdService"

    const-string v1, "start RTSP server beforehand!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 333
    const/16 v1, 0x7f

    const/4 v4, 0x1

    iget v5, p0, Lcom/mediatek/wfd/WfdService;->mRtspServerPort:I

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/wfd/WfdService;->startRtspServer(IIIII)V

    .line 335
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/mediatek/wfd/WfdService$5;

    invoke-direct {v3, p0, v7}, Lcom/mediatek/wfd/WfdService$5;-><init>(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 357
    return v2

    .line 323
    :cond_0
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private doConnectQueued(Ljava/lang/String;)V
    .locals 4
    .parameter "macToConnect"

    .prologue
    const/4 v3, 0x4

    .line 285
    const-string v0, "WfdService"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last time connect MAC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", should not occur!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/wfd/WfdAddonService;->tryDiscoverPeers(I)V

    .line 295
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/mediatek/wfd/WfdService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    return-void
.end method

.method private doDisconnect()I
    .locals 3

    .prologue
    .line 197
    const-string v0, "WfdService"

    const-string v1, "doDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->clearConnectVariable()V

    .line 199
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/mediatek/wfd/WfdAddonService;->startTimeoutCountDown(I)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/mediatek/wfd/WfdService$3;

    invoke-direct {v2, p0}, Lcom/mediatek/wfd/WfdService$3;-><init>(Lcom/mediatek/wfd/WfdService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method private getConnectStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    packed-switch v0, :pswitch_data_0

    .line 193
    const-string v0, "OBFUSED STATE"

    :goto_0
    return-object v0

    .line 185
    :pswitch_0
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 187
    :pswitch_1
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 189
    :pswitch_2
    const-string v0, "CONNECTED"

    goto :goto_0

    .line 191
    :pswitch_3
    const-string v0, "DISCONNECTING"

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1393
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1396
    return-void
.end method

.method private injectPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1399
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1400
    const-string v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectPointerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1403
    return-void
.end method

.method private isInConnectedDevices(Ljava/lang/String;)Z
    .locals 4
    .parameter "mac"

    .prologue
    const/4 v2, 0x0

    .line 167
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 171
    .local v1, m:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static final lerp(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 1406
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private loadWfdWpsSetup(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 7
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 913
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 914
    .local v0, prop:Ljava/util/Properties;
    const-string v4, "wlan.wfd.wps.setup"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, wfdWpsSetup:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 917
    const-string v4, "WfdService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadWfdWpsSetup(): property: wfdWpsSetup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 936
    :cond_0
    :goto_0
    return v2

    .line 920
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v2, v3

    .line 921
    goto :goto_0

    .line 927
    :cond_2
    const-string v4, "WfdService"

    const-string v5, "loadWfdWpsSetup(): property: wfdWpsSetup no value"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 930
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v4

    if-ne v3, v4, :cond_0

    move v2, v3

    .line 931
    goto :goto_0
.end method

.method private mappingGroupandScannedDevice(Landroid/net/wifi/p2p/WifiP2pGroup;Z)V
    .locals 7
    .parameter "group"
    .parameter "isOwner"

    .prologue
    .line 1717
    const-string v5, "WfdService"

    const-string v6, "work-around for group incomplete information"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    if-eqz p2, :cond_2

    .line 1722
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1723
    .local v1, client:Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 1724
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1725
    .local v0, ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1726
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1723
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1733
    .end local v0           #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #client:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 1734
    .local v2, groupMoreInfo:Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 1735
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1736
    .restart local v0       #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v6, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1737
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1738
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 1739
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 1740
    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 1741
    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 1742
    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 1743
    invoke-virtual {p1, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1734
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1749
    .end local v0           #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2           #groupMoreInfo:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3           #i:I
    :cond_4
    return-void
.end method

.method private notifyConnected()V
    .locals 6

    .prologue
    .line 1219
    const-string v4, "WfdService"

    const-string v5, "notifyConnected()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->actionAtConnected()V

    .line 1222
    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1223
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.mediatek.wfd.connected"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "device"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1225
    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1228
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.mediatek.wfd.ORIENTATION_LANDSCAPE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v3, landscapeIntent:Landroid/content/Intent;
    const-string v4, "landscape"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1230
    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1231
    return-void
.end method

.method private notifyDevicesChanged()V
    .locals 9

    .prologue
    .line 1052
    const-string v6, "WfdService"

    const-string v7, "notifyDevicesChanged: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .local v5, stateList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v5}, Lcom/mediatek/wfd/WfdService;->arrangeScannedDevices(Ljava/util/List;Ljava/util/List;)I

    move-result v6

    if-nez v6, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.mediatek.wfd.deviceschanged"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v3, intent:Landroid/content/Intent;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1061
    .local v0, deviceArray:[Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [I

    .line 1062
    .local v4, stateArray:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 1063
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    aput-object v6, v0, v2

    .line 1064
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 1065
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v2

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1067
    :cond_2
    const-string v6, "deviceArray"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1068
    const-string v6, "stateArray"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1069
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1071
    invoke-virtual {p0}, Lcom/mediatek/wfd/WfdService;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1072
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/wfd/WfdService;->drawNotificationDevDetected([Landroid/net/wifi/p2p/WifiP2pDevice;[I)V

    goto :goto_0
.end method

.method private notifyDisabled()V
    .locals 3

    .prologue
    .line 986
    const-string v1, "WfdService"

    const-string v2, "notifyDisabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.wfd.disabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 988
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 989
    return-void
.end method

.method private notifyDisconnected(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 1253
    const-string v2, "WfdService"

    const-string v3, "notifyDisconnected()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->actionAtDisconnected()V

    .line 1256
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.wfd.disconnected"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "device"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1258
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1260
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.wfd.ORIENTATION_LANDSCAPE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1261
    .local v1, landscapeIntent:Landroid/content/Intent;
    const-string v2, "landscape"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1262
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1263
    return-void
.end method

.method private notifyEnabled()V
    .locals 3

    .prologue
    .line 980
    const-string v1, "WfdService"

    const-string v2, "notifyEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.wfd.enabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 983
    return-void
.end method

.method private notifyError(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 179
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR HAPPENED in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private notifyStartScan()V
    .locals 3

    .prologue
    .line 992
    const-string v1, "WfdService"

    const-string v2, "notifyStartScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.wfd.startscan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 995
    return-void
.end method

.method private notifyStopScan()V
    .locals 3

    .prologue
    .line 998
    const-string v1, "WfdService"

    const-string v2, "notifyStopScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.wfd.stopscan"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1001
    return-void
.end method

.method private onConnected(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 434
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnected(), state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->getConnectStateString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;

    .line 436
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    invoke-virtual {v3}, Lcom/mediatek/wfd/WfdAddonService;->stopTimeoutCountDown()V

    .line 437
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->updateConnectedDevices(Ljava/util/List;)V

    .line 438
    iget v3, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    packed-switch v3, :pswitch_data_0

    .line 494
    const-string v3, "WfdService"

    const-string v4, "obfused state, trigger exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v3, "WfdService"

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mTriggerException:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 440
    :pswitch_0
    iput v6, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 441
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 442
    const-string v3, "WfdService"

    const-string v4, "onConnected() when we\'re in disconnected state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 448
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v0, :cond_2

    .line 449
    const-string v3, "WfdService"

    const-string v4, "Skip NULL device"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 452
    :cond_2
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/wfd/WfdService;->getDevicesWfdInfo(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 453
    .local v2, wfdP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v2, :cond_3

    .line 454
    const-string v3, "WfdService"

    const-string v4, "Skip NULL WfdInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 457
    :cond_3
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device info("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v3, :cond_1

    iget v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 459
    iget-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v3, v3, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v3, v3, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    if-ne v3, v6, :cond_1

    .line 460
    :cond_4
    const-string v3, "WfdService"

    const-string v4, "Start to run Sink"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mWfdSinkService:Lcom/mediatek/wfd/WfdSinkService;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const/16 v5, 0x1c44

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/wfd/WfdSinkService;->startSink(Ljava/lang/String;I)I

    goto :goto_1

    .line 466
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #wfdP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_5
    const-string v3, "WfdService"

    const-string v4, "obfused state, trigger exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v3, "WfdService"

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService;->mTriggerException:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 471
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/wfd/WfdService;->isInConnectedDevices(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 472
    const-string v3, "WfdService"

    const-string v4, "connected list doesn\'t contain the one we\'d like to connect, first disconnect it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iput v7, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 474
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doDisconnect()I

    goto/16 :goto_0

    .line 476
    :cond_6
    const-string v3, "WfdService"

    const-string v4, "connected with the right one, don\'t check the GO!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iput v6, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 478
    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/mediatek/wfd/WfdService;->mNeedFastRtsp:Z

    if-ne v3, v4, :cond_0

    .line 479
    iget v3, p0, Lcom/mediatek/wfd/WfdService;->mEMConfig:I

    invoke-direct {p0, v3}, Lcom/mediatek/wfd/WfdService;->startRtspServer(I)V

    goto/16 :goto_0

    .line 484
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/wfd/WfdService;->isInConnectedDevices(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 485
    const-string v3, "WfdService"

    const-string v4, "onConnected during connected state and connected list doesn\'t contain the one we\'d like to connect, first disconnect it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iput v7, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 487
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doDisconnect()I

    goto/16 :goto_0

    .line 490
    :cond_7
    const-string v3, "WfdService"

    const-string v4, "onConnected() already reported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onDisconnected()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 501
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    invoke-virtual {v5}, Lcom/mediatek/wfd/WfdAddonService;->stopTimeoutCountDown()V

    .line 502
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->clearConnectVariable()V

    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, disconnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 506
    .local v4, m:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 507
    move-object v1, v4

    goto :goto_0

    .line 510
    .end local v4           #m:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    if-eqz v1, :cond_3

    .line 511
    const-string v5, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDisconnected(), state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->getConnectStateString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", desiredMac: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,disconnectDevice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reset ScannedDevice status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 515
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 516
    .local v0, ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    iput v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 514
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 522
    .end local v0           #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2           #i:I
    :cond_3
    const-string v5, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDisconnected(), state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->getConnectStateString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", desiredMac: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 524
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mConnectedDevices:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #disconnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 525
    .restart local v1       #disconnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v5, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disconnectDevice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reset ScannedDevice status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 528
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 529
    .restart local v0       #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 530
    iput v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 527
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 535
    .end local v0           #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2           #i:I
    :cond_5
    const-string v5, "WfdService"

    const-string v6, "... still no disconnectDevice data ..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->clearConnectedDevices()V

    .line 541
    iget v5, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    packed-switch v5, :pswitch_data_0

    .line 557
    :pswitch_0
    const-string v5, "WfdService"

    const-string v6, "obfused state, trigger exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v5, "WfdService"

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mTriggerException:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_3
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/mediatek/wfd/WfdAddonService;->tryDiscoverPeers(I)V

    .line 563
    invoke-direct {p0, v1}, Lcom/mediatek/wfd/WfdService;->notifyDisconnected(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 564
    return-void

    .line 543
    :pswitch_1
    const-string v5, "WfdService"

    const-string v6, "we\'re already in disconnected state, simply bypass"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 546
    :pswitch_2
    const-string v5, "WfdService"

    const-string v6, "we want to disconnect, so change the state to disconnected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iput v8, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    goto :goto_3

    .line 551
    :pswitch_3
    const-string v5, "WfdService"

    const-string v6, "we are disconnected by others, restore to initial state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    .line 553
    iput v8, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 554
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->stopRtspServer()V

    goto :goto_3

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private onError(I)V
    .locals 5
    .parameter "code"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 567
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError(), mConnectState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", code= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->clearConnectVariable()V

    .line 569
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->actionAtDisconnected()V

    .line 570
    if-ne p1, v3, :cond_1

    .line 571
    const-string v0, "WfdService"

    const-string v1, "STATUS_REVERTED during CONNECTING: revert state to DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iput-object v4, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    .line 573
    iput v3, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 575
    const-string v0, "WfdService"

    const-string v1, "PEER_LIST_FLUSHED during CONNECTING: revert state to DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iput-object v4, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    .line 577
    iput v3, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    goto :goto_0
.end method

.method private onRtspConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 636
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRtspConnected, mRtspState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 640
    :cond_0
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    packed-switch v0, :pswitch_data_0

    .line 646
    :goto_0
    return-void

    .line 642
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    .line 643
    invoke-virtual {p0}, Lcom/mediatek/wfd/WfdService;->notifyRtspConnected()V

    goto :goto_0

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onRtspDisconnected()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 649
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRtspDisconnected(), mRtspState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 653
    :cond_0
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    packed-switch v0, :pswitch_data_0

    .line 659
    :goto_0
    return-void

    .line 655
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    .line 656
    invoke-virtual {p0}, Lcom/mediatek/wfd/WfdService;->notifyRtspDisconnected()V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private onRtspError()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 662
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRtspError(), mRtspState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v4}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v4}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 669
    :cond_1
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    packed-switch v0, :pswitch_data_0

    .line 675
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/wfd/WfdService;->notifyRtspError()V

    .line 676
    return-void

    .line 672
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onTimeout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 582
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeout(), mConnectState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDesiredMac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->clearConnectVariable()V

    .line 584
    const/4 v0, 0x2

    iget v1, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    if-ne v0, v1, :cond_1

    .line 585
    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    .line 586
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doCancelConnect()I

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    if-ne v0, v1, :cond_0

    .line 588
    iput-object v3, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    .line 589
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 590
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->onDisconnected()V

    goto :goto_0
.end method

.method private sendKeyEvent(II)V
    .locals 13
    .parameter "keyCode"
    .parameter "isDown"

    .prologue
    .line 1365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1366
    .local v1, now:J
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1367
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->translateAsciiToKeyCode(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/mediatek/wfd/WfdService;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 1373
    :goto_0
    return-void

    .line 1370
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->translateAsciiToKeyCode(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/mediatek/wfd/WfdService;->injectKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private sendSwipe(FFFF)V
    .locals 11
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 1381
    const/16 v8, 0xb

    .line 1382
    .local v8, NUM_STEPS:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1383
    .local v0, now:J
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/wfd/WfdService;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 1384
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    const/16 v2, 0xb

    if-ge v10, v2, :cond_0

    .line 1385
    int-to-float v2, v10

    const/high16 v3, 0x4130

    div-float v9, v2, v3

    .line 1386
    .local v9, alpha:F
    const/4 v4, 0x2

    invoke-static {p1, p3, v9}, Lcom/mediatek/wfd/WfdService;->lerp(FFF)F

    move-result v5

    invoke-static {p2, p4, v9}, Lcom/mediatek/wfd/WfdService;->lerp(FFF)F

    move-result v6

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/wfd/WfdService;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 1384
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1389
    .end local v9           #alpha:F
    :cond_0
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/wfd/WfdService;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 1390
    return-void
.end method

.method private sendTap(FF)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 1375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, now:J
    move-wide v2, v0

    move v5, p1

    move v6, p2

    move v7, v4

    .line 1376
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/wfd/WfdService;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 1377
    const/4 v9, 0x1

    move-wide v5, v0

    move-wide v7, v0

    move v10, p1

    move v11, p2

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/wfd/WfdService;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 1378
    return-void
.end method

.method private startRtspServer(I)V
    .locals 4
    .parameter "mEMConfig"

    .prologue
    const/4 v3, 0x5

    .line 609
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRtspServer(), mRtspState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mEMConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    packed-switch v0, :pswitch_data_0

    .line 621
    :goto_0
    return-void

    .line 612
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    .line 613
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    const-wide/32 v1, 0xafc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/mediatek/wfd/WfdService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 617
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mWfdT2dService:Lcom/mediatek/wfd/t2d/WfdT2dService;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfd/t2d/WfdT2dService;->startFastRtsp(I)I

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mNeedFastRtsp:Z

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private startRtspServer(IIIII)V
    .locals 7
    .parameter "ip1"
    .parameter "ip2"
    .parameter "ip3"
    .parameter "ip4"
    .parameter "port"

    .prologue
    const/4 v3, 0x5

    .line 595
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRtspServer(), mRtspState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    packed-switch v0, :pswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 598
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    .line 599
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    const-wide/32 v1, 0xafc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/mediatek/wfd/WfdService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 603
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget v6, p0, Lcom/mediatek/wfd/WfdService;->mEMConfig:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/media/RemoteDisplay;->startServerEx(IIIIII)I

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private stopRtspServer()V
    .locals 3

    .prologue
    .line 624
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRtspServer(), mRtspState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    packed-switch v0, :pswitch_data_0

    .line 629
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    .line 630
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->stopServer()I

    .line 633
    :pswitch_0
    return-void

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private testWfdStartRtsp(IIIII)I
    .locals 7
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "p4"
    .parameter "port"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget v6, p0, Lcom/mediatek/wfd/WfdService;->mEMConfig:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/media/RemoteDisplay;->startServerEx(IIIIII)I

    move-result v0

    return v0
.end method

.method private translateAsciiToKeyCode(I)I
    .locals 4
    .parameter "ascii"

    .prologue
    .line 1349
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 1350
    add-int/lit8 v0, p1, -0x29

    .line 1361
    :goto_0
    return v0

    .line 1351
    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_1

    .line 1352
    add-int/lit8 v0, p1, -0x24

    goto :goto_0

    .line 1354
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->translateSpecialCode(I)I

    move-result v0

    .line 1355
    .local v0, newKeyCode:I
    if-lez v0, :cond_2

    .line 1356
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "special code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1359
    :cond_2
    const-string v1, "WfdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateAsciiToKeyCode: ascii is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translateSpecialCode(I)I
    .locals 1
    .parameter "ascii"

    .prologue
    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, newKeyCode:I
    sparse-switch p1, :sswitch_data_0

    .line 1344
    :goto_0
    return v0

    .line 1271
    :sswitch_0
    const/16 v0, 0x43

    .line 1272
    goto :goto_0

    .line 1274
    :sswitch_1
    const/16 v0, 0x42

    .line 1275
    goto :goto_0

    .line 1277
    :sswitch_2
    const/16 v0, 0x3b

    .line 1278
    goto :goto_0

    .line 1280
    :sswitch_3
    const/16 v0, 0x73

    .line 1281
    goto :goto_0

    .line 1283
    :sswitch_4
    const/16 v0, 0x3e

    .line 1284
    goto :goto_0

    .line 1286
    :sswitch_5
    const/16 v0, 0x42

    .line 1287
    goto :goto_0

    .line 1289
    :sswitch_6
    const/16 v0, 0x38

    .line 1290
    goto :goto_0

    .line 1292
    :sswitch_7
    const/16 v0, 0x37

    .line 1293
    goto :goto_0

    .line 1295
    :sswitch_8
    const/16 v0, 0x4c

    .line 1296
    goto :goto_0

    .line 1298
    :sswitch_9
    const/16 v0, 0x49

    .line 1299
    goto :goto_0

    .line 1301
    :sswitch_a
    const/16 v0, 0x5c

    .line 1302
    goto :goto_0

    .line 1304
    :sswitch_b
    const/16 v0, 0x5d

    .line 1305
    goto :goto_0

    .line 1307
    :sswitch_c
    const/16 v0, 0x13

    .line 1308
    goto :goto_0

    .line 1310
    :sswitch_d
    const/16 v0, 0x14

    .line 1311
    goto :goto_0

    .line 1313
    :sswitch_e
    const/16 v0, 0x16

    .line 1314
    goto :goto_0

    .line 1316
    :sswitch_f
    const/16 v0, 0x15

    .line 1317
    goto :goto_0

    .line 1319
    :sswitch_10
    const/16 v0, 0x6f

    .line 1320
    goto :goto_0

    .line 1322
    :sswitch_11
    const/16 v0, 0x47

    .line 1323
    goto :goto_0

    .line 1325
    :sswitch_12
    const/16 v0, 0x48

    .line 1326
    goto :goto_0

    .line 1328
    :sswitch_13
    const/16 v0, 0x44

    .line 1329
    goto :goto_0

    .line 1331
    :sswitch_14
    const/16 v0, 0x45

    .line 1332
    goto :goto_0

    .line 1334
    :sswitch_15
    const/16 v0, 0x46

    .line 1335
    goto :goto_0

    .line 1337
    :sswitch_16
    const/16 v0, 0x4a

    .line 1338
    goto :goto_0

    .line 1340
    :sswitch_17
    const/16 v0, 0x4b

    goto :goto_0

    .line 1269
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_5
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x14 -> :sswitch_3
        0x1b -> :sswitch_10
        0x20 -> :sswitch_4
        0x21 -> :sswitch_b
        0x22 -> :sswitch_a
        0x25 -> :sswitch_c
        0x26 -> :sswitch_d
        0x27 -> :sswitch_e
        0x28 -> :sswitch_f
        0xba -> :sswitch_16
        0xbb -> :sswitch_15
        0xbc -> :sswitch_7
        0xbd -> :sswitch_14
        0xbe -> :sswitch_6
        0xbf -> :sswitch_8
        0xc0 -> :sswitch_13
        0xdb -> :sswitch_11
        0xdc -> :sswitch_9
        0xdd -> :sswitch_12
        0xde -> :sswitch_17
    .end sparse-switch
.end method

.method private updateConnectedDevices(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService;->mConnectedDevices:Ljava/util/List;

    .line 164
    return-void
.end method


# virtual methods
.method arrangeScannedDevices(Ljava/util/List;Ljava/util/List;)I
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .local p2, stateList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1005
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1006
    const-string v6, "WfdService"

    const-string v8, "mScannedDevices is empty"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1048
    :goto_0
    return v6

    .line 1010
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 1011
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1012
    .local v2, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget v6, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    if-ne v6, v11, :cond_3

    iget-object v6, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    if-eqz v6, :cond_3

    .line 1013
    const/4 v1, 0x0

    .line 1014
    .local v1, clientState:I
    iget v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1015
    .local v5, wifiStatus:I
    const/4 v0, 0x0

    .line 1016
    .local v0, alived:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mAlivedPeers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 1017
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService;->mAlivedPeers:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v3, v6, :cond_4

    .line 1018
    const/4 v0, 0x1

    .line 1022
    :cond_1
    if-nez v0, :cond_5

    .line 1023
    const-string v6, "WfdService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "this peer is not ALIVED, d:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v1, 0x0

    .line 1038
    :cond_2
    :goto_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    .end local v0           #alived:Z
    .end local v1           #clientState:I
    .end local v4           #j:I
    .end local v5           #wifiStatus:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1016
    .restart local v0       #alived:Z
    .restart local v1       #clientState:I
    .restart local v4       #j:I
    .restart local v5       #wifiStatus:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1026
    :cond_5
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 1027
    const/4 v1, 0x1

    goto :goto_3

    .line 1028
    :cond_6
    if-ne v5, v8, :cond_7

    .line 1029
    const/4 v1, 0x2

    goto :goto_3

    .line 1030
    :cond_7
    if-nez v5, :cond_2

    .line 1031
    iget v6, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    if-ne v6, v11, :cond_8

    .line 1032
    const/4 v1, 0x3

    goto :goto_3

    .line 1034
    :cond_8
    const/4 v1, 0x2

    goto :goto_3

    .line 1042
    .end local v0           #alived:Z
    .end local v1           #clientState:I
    .end local v2           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4           #j:I
    .end local v5           #wifiStatus:I
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_a

    .line 1043
    const-string v6, "WfdService"

    const-string v8, "no WFD peers"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1044
    goto/16 :goto_0

    :cond_a
    move v6, v8

    .line 1048
    goto/16 :goto_0
.end method

.method public cancelNotificationOnStatusbar()V
    .locals 3

    .prologue
    .line 1191
    const-string v0, "WfdService"

    const-string v1, "cancelNotificationOnStatusbar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "WfdService.available.device.detected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1193
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "WfdService.available.device.connected"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1194
    return-void
.end method

.method public cancelNotificationOnStatusbarConnected()V
    .locals 3

    .prologue
    .line 1202
    const-string v0, "WfdService"

    const-string v1, "cancelNotificationOnStatusbarConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "WfdService.available.device.connected"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1204
    return-void
.end method

.method public cancelNotificationOnStatusbarDetected()V
    .locals 3

    .prologue
    .line 1197
    const-string v0, "WfdService"

    const-string v1, "cancelNotificationOnStatusbarDetected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "WfdService.available.device.detected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1199
    return-void
.end method

.method public cancelScan()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 895
    const-string v0, "WfdService"

    const-string v1, "cancelScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 897
    const/4 v0, 0x0

    return v0
.end method

.method public connect(Ljava/lang/String;)I
    .locals 3
    .parameter "mac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect(), state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->getConnectStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    .line 363
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    packed-switch v0, :pswitch_data_0

    .line 391
    const-string v0, "WfdService"

    const-string v1, "inside connect(), obfused state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 365
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 366
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdService;->doConnectQueued(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectingMac:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 370
    const-string v0, "WfdService"

    const-string v1, "wait for connect action listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectingMac:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    const-string v0, "WfdService"

    const-string v1, "ask for the same device, simply ignore it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_1
    const-string v0, "WfdService"

    const-string v1, "desired mac changed during connecting, cancel connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doCancelConnect()I

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/wfd/WfdService;->isInConnectedDevices(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    const-string v0, "WfdService"

    const-string v1, "ask for the same device, simply ignore it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_2
    const-string v0, "WfdService"

    const-string v1, "desired mac changed during connection, first disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 384
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doDisconnect()I

    goto :goto_0

    .line 388
    :pswitch_3
    const-string v0, "WfdService"

    const-string v1, "let onDisconnected() to finish the job"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public disable()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 832
    const-string v0, "WfdService"

    const-string v1, "disable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 834
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->enableWfd(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 838
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    invoke-virtual {v0}, Lcom/mediatek/wfd/WfdAddonService;->stopTimeoutCountDown()V

    .line 840
    const/4 v0, 0x3

    iget v1, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    if-ne v0, v1, :cond_1

    .line 841
    const-string v0, "WfdService"

    const-string v1, "disable() but in CONNECTED state, call disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {p0}, Lcom/mediatek/wfd/WfdService;->disconnect()I

    .line 854
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->actionAtDisconnected()V

    .line 855
    return v3

    .line 843
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    if-ne v0, v1, :cond_2

    .line 844
    const-string v0, "WfdService"

    const-string v1, "disable() but in CONNECTING state, call doCancelConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iput-object v2, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    .line 846
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doCancelConnect()I

    goto :goto_0

    .line 847
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    if-ne v0, v1, :cond_0

    .line 848
    const-string v0, "WfdService"

    const-string v1, "disable() but in DISCONNECTING state, call onDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iput-object v2, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    .line 850
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 851
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->onDisconnected()V

    goto :goto_0
.end method

.method public disconnect()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 398
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect(), state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->getConnectStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;

    .line 400
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    packed-switch v0, :pswitch_data_0

    .line 423
    const-string v0, "WfdService"

    const-string v1, "inside connect(), obfused state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 402
    :pswitch_0
    const-string v0, "WfdService"

    const-string v1, "we\'re already disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :pswitch_1
    const-string v0, "WfdService"

    const-string v1, "under connecting, try to cancel it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doCancelConnect()I

    goto :goto_0

    .line 409
    :pswitch_2
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "under connection, try to disconnect it. mRtspState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    .line 411
    const/4 v0, 0x2

    iget v1, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, v3}, Landroid/media/RemoteDisplay;->sendGenericMsgServer(I)I

    .line 413
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/16 v1, 0x1770

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/mediatek/wfd/WfdService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 420
    :pswitch_3
    const-string v0, "WfdService"

    const-string v1, "we\'re disconnecting, let onDisconnected() change state for us"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public drawNotificationDevConnected(Ljava/lang/String;)V
    .locals 16
    .parameter "devName"

    .prologue
    .line 1132
    const-string v13, "WfdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drawNotificationDevConnected(): devName= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.mediatek.wfd.PICK_WFD_MIRACAST_PEER"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v7, intent:Landroid/content/Intent;
    const/high16 v13, 0x1000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1137
    const/high16 v13, 0x80

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1138
    const/high16 v13, 0x4000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1139
    const/high16 v13, 0x2000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1140
    const/high16 v13, 0x400

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    .local v3, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    .local v11, stateList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/mediatek/wfd/WfdService;->arrangeScannedDevices(Ljava/util/List;Ljava/util/List;)I

    move-result v13

    if-lez v13, :cond_3

    .line 1147
    const-string v13, "WfdService"

    const-string v14, "drawNotificationDevConnected(): scanned devices exist"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    new-array v2, v13, [Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1150
    .local v2, deviceArray:[Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v10, v13, [I

    .line 1151
    .local v10, stateArray:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_0

    .line 1152
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/p2p/WifiP2pDevice;

    aput-object v13, v2, v6

    .line 1153
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v10, v6

    .line 1151
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1156
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v5, extDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/wfd/ExtP2pDevice;>;"
    const/4 v6, 0x0

    :goto_1
    array-length v13, v2

    if-ge v6, v13, :cond_1

    .line 1158
    new-instance v13, Lcom/mediatek/wfd/ExtP2pDevice;

    aget-object v14, v2, v6

    aget v15, v10, v6

    invoke-direct {v13, v14, v15}, Lcom/mediatek/wfd/ExtP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1161
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 1162
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    new-array v4, v13, [Lcom/mediatek/common/externaldisplay/ExternalDevice;

    .line 1163
    .local v4, extDeviceArray:[Lcom/mediatek/common/externaldisplay/ExternalDevice;
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_2

    .line 1164
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/common/externaldisplay/ExternalDevice;

    aput-object v13, v4, v6

    .line 1163
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1167
    :cond_2
    const-string v13, "WfdService"

    const-string v14, "drawNotificationDevConnected(): put available device to intent "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v13, "availableDevice"

    invoke-virtual {v7, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1172
    .end local v2           #deviceArray:[Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4           #extDeviceArray:[Lcom/mediatek/common/externaldisplay/ExternalDevice;
    .end local v5           #extDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/wfd/ExtP2pDevice;>;"
    .end local v6           #i:I
    .end local v10           #stateArray:[I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    const v14, 0x20500e8

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1173
    .local v9, notifyMsg:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1174
    .local v12, title:Ljava/lang/CharSequence;
    move-object/from16 v1, p1

    .line 1175
    .local v1, details:Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 1177
    .local v8, notification:Landroid/app/Notification;
    const-string v13, "WfdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drawNotificationDevConnected(): notifyMsg- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-wide/16 v13, 0x0

    iput-wide v13, v8, Landroid/app/Notification;->when:J

    .line 1180
    const v13, 0x202012e

    iput v13, v8, Landroid/app/Notification;->icon:I

    .line 1182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x800

    invoke-static {v13, v14, v7, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    iput-object v13, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1183
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v14, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v13, v12, v1, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/wfd/WfdService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v14, "WfdService.available.device.connected"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1187
    const-string v13, "WfdService"

    const-string v14, "drawNotificationDevConnected(): has notified "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void
.end method

.method public drawNotificationDevDetected([Landroid/net/wifi/p2p/WifiP2pDevice;[I)V
    .locals 13
    .parameter "deviceArray"
    .parameter "stateArray"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1077
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v2, extDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/wfd/ExtP2pDevice;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, p1

    if-ge v3, v8, :cond_1

    .line 1083
    const-string v8, "WfdService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawNotificationDevDetected(): size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", devName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p1, v3

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, p2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    aget v8, p2, v3

    if-ne v12, v8, :cond_0

    .line 1085
    new-instance v8, Lcom/mediatek/wfd/ExtP2pDevice;

    aget-object v9, p1, v3

    aget v10, p2, v3

    invoke-direct {v8, v9, v10}, Lcom/mediatek/wfd/ExtP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1088
    :cond_1
    const-string v8, "WfdService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawNotificationDevDetected(): searched= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", available= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 1126
    :goto_1
    return-void

    .line 1094
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.mediatek.wfd.PICK_WFD_MIRACAST_PEER"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v4, intent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1096
    const/high16 v8, 0x80

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1097
    const/high16 v8, 0x4000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1098
    const/high16 v8, 0x2000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1099
    const/high16 v8, 0x400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1102
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v1, v8, [Lcom/mediatek/common/externaldisplay/ExternalDevice;

    .line 1103
    .local v1, extDeviceArray:[Lcom/mediatek/common/externaldisplay/ExternalDevice;
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 1104
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/common/externaldisplay/ExternalDevice;

    aput-object v8, v1, v3

    .line 1103
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1107
    :cond_3
    const-string v8, "WfdService"

    const-string v9, "drawNotificationDevDetected(): put available device to intent "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string v8, "availableDevice"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1110
    iget-object v8, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    const v9, 0x20500e9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1111
    .local v6, notifyMsg:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1112
    .local v7, title:Ljava/lang/CharSequence;
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/wfd/ExtP2pDevice;

    invoke-virtual {v8}, Lcom/mediatek/wfd/ExtP2pDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, details:Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 1115
    .local v5, notification:Landroid/app/Notification;
    const-string v8, "WfdService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawNotificationDevDetected(): notifyMsg- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const-wide/16 v8, 0x0

    iput-wide v8, v5, Landroid/app/Notification;->when:J

    .line 1118
    const v8, 0x202012f

    iput v8, v5, Landroid/app/Notification;->icon:I

    .line 1120
    iget-object v8, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    const/high16 v9, 0x800

    invoke-static {v8, v11, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1121
    iput-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1122
    iget-object v8, p0, Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v9, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v8, v7, v0, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1124
    iget-object v8, p0, Lcom/mediatek/wfd/WfdService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v9, "WfdService.available.device.detected"

    invoke-virtual {v8, v9, v12, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1125
    const-string v8, "WfdService"

    const-string v9, "drawNotificationDevDetected(): has notified "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public emSetBitrateConrol(I)V
    .locals 3
    .parameter "emControl"

    .prologue
    .line 906
    iput p1, p0, Lcom/mediatek/wfd/WfdService;->mEMBitrateControl:I

    .line 907
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emSetBitConrol():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplay;->setBitrateControl(I)I

    .line 909
    return-void
.end method

.method public emSetConfiguration(I)V
    .locals 3
    .parameter "emConfig"

    .prologue
    .line 884
    iput p1, p0, Lcom/mediatek/wfd/WfdService;->mEMConfig:I

    .line 885
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emSetConfiguration(): mEMConfig become 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mEMConfig:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-void
.end method

.method public enable()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 821
    const-string v0, "WfdService"

    const-string v1, "enable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, v3}, Lcom/mediatek/wfd/WfdService;->createWfdInfo(Z)Landroid/net/wifi/p2p/wfd/WfdInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/wfd/WfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 823
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->enableWfd(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    .line 827
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    invoke-virtual {v0}, Lcom/mediatek/wfd/WfdAddonService;->stopTimeoutCountDown()V

    .line 828
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoScan()Z
    .locals 3

    .prologue
    .line 879
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAutoScan(): mIsAutoScan= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfd/WfdService;->mIsAutoScan:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mIsAutoScan:Z

    return v0
.end method

.method public getDevicesWfdDeviceType(Ljava/lang/String;)I
    .locals 4
    .parameter "searchedAddress"

    .prologue
    .line 793
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 794
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 795
    .local v0, ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v2, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 800
    .end local v0           #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_1
    return v2

    .line 793
    .restart local v0       #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    .end local v0           #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const-string v2, "WfdService"

    const-string v3, "wfd device type not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDevicesWfdInfo(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 4
    .parameter "searchedAddress"

    .prologue
    .line 804
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 805
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 806
    .local v0, ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    .end local v0           #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_1
    return-object v0

    .line 804
    .restart local v0       #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .end local v0           #ScannedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const-string v2, "WfdService"

    const-string v3, "wfd device not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    .line 864
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected(): mConnectState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mConnectState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 867
    const/4 v0, 0x1

    .line 869
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z

    return v0
.end method

.method public isScanning()Z
    .locals 3

    .prologue
    .line 859
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScanning(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfd/WfdService;->mIsScanning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-boolean v0, p0, Lcom/mediatek/wfd/WfdService;->mIsScanning:Z

    return v0
.end method

.method notifyRtspConnected()V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->notifyConnected()V

    .line 680
    return-void
.end method

.method notifyRtspDisconnected()V
    .locals 3

    .prologue
    .line 683
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRtspDisconnected(), mRtspState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget v0, p0, Lcom/mediatek/wfd/WfdService;->mRtspState:I

    packed-switch v0, :pswitch_data_0

    .line 688
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->doDisconnect()I

    .line 691
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/wfd/WfdService;->stopRtspServer()V

    .line 692
    return-void

    .line 684
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method notifyRtspError()V
    .locals 2

    .prologue
    .line 695
    const-string v0, "WfdService"

    const-string v1, "notifyRtspError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/wfd/WfdService;->onError(I)V

    .line 697
    return-void
.end method

.method public scan(I)I
    .locals 3
    .parameter "milliSecond"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 889
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan(), ms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfd/WfdAddonService;->tryDiscoverPeers(I)V

    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoScan(Z)V
    .locals 3
    .parameter "autoScan"

    .prologue
    .line 874
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoScan(): autoScan= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iput-boolean p1, p0, Lcom/mediatek/wfd/WfdService;->mIsAutoScan:Z

    .line 876
    return-void
.end method

.method public setWpsMethod(I)I
    .locals 2
    .parameter "wps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 784
    if-nez p1, :cond_0

    .line 785
    iput v1, p0, Lcom/mediatek/wfd/WfdService;->mWpsState:I

    .line 789
    :goto_0
    return v1

    .line 787
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wfd/WfdService;->mWpsState:I

    goto :goto_0
.end method

.method public testWfdStartRtsp()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 901
    const/16 v1, 0x7f

    const/4 v4, 0x1

    const/16 v5, 0x1c44

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/wfd/WfdService;->testWfdStartRtsp(IIIII)I

    move-result v0

    return v0
.end method
