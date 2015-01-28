.class Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1486
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1487
    const-string v5, "wifi_p2p_state"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1488
    .local v3, state:I
    packed-switch v3, :pswitch_data_0

    .line 1505
    const-string v5, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "incorrect EXTRA_WIFI_STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    .end local v3           #state:I
    :cond_0
    :goto_0
    return-void

    .line 1490
    .restart local v3       #state:I
    :pswitch_0
    const-string v5, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI_P2P_STATE_ENABLED, enable? = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled_WifiP2pOff:Z
    invoke-static {v7}, Lcom/mediatek/wfd/WfdService;->access$2200(Lcom/mediatek/wfd/WfdService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled_WifiP2pOff:Z
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2200(Lcom/mediatek/wfd/WfdService;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1493
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-virtual {v5}, Lcom/mediatek/wfd/WfdService;->enable()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    :cond_1
    :goto_1
    const-string v5, "WfdService"

    const-string v6, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v1

    .line 1495
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1501
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_1
    const-string v5, "WfdService"

    const-string v6, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$2300(Lcom/mediatek/wfd/WfdService;)Z

    move-result v6

    #setter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled_WifiP2pOff:Z
    invoke-static {v5, v6}, Lcom/mediatek/wfd/WfdService;->access$2202(Lcom/mediatek/wfd/WfdService;Z)Z

    goto :goto_0

    .line 1508
    .end local v3           #state:I
    :cond_2
    const-string v5, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1509
    const-string v5, "discoveryState"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1510
    .restart local v3       #state:I
    packed-switch v3, :pswitch_data_1

    .line 1535
    const-string v5, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "incorrect EXTRA_DISCOVERY_STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1512
    :pswitch_2
    const-string v5, "WfdService"

    const-string v6, "WIFI_P2P_DISCOVERY_STARTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsScanning:Z
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2400(Lcom/mediatek/wfd/WfdService;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1514
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #setter for: Lcom/mediatek/wfd/WfdService;->mIsScanning:Z
    invoke-static {v5, v8}, Lcom/mediatek/wfd/WfdService;->access$2402(Lcom/mediatek/wfd/WfdService;Z)Z

    .line 1515
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->notifyStartScan()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2500(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1528
    :pswitch_3
    const-string v5, "WfdService"

    const-string v6, "WIFI_P2P_DISCOVERY_STOPPED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsScanning:Z
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2400(Lcom/mediatek/wfd/WfdService;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1530
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #setter for: Lcom/mediatek/wfd/WfdService;->mIsScanning:Z
    invoke-static {v5, v7}, Lcom/mediatek/wfd/WfdService;->access$2402(Lcom/mediatek/wfd/WfdService;Z)Z

    .line 1531
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->notifyStopScan()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2600(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1539
    .end local v3           #state:I
    :cond_3
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1540
    const-string v5, "WfdService"

    const-string v6, "WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v5, v5, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v6, v6, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v7, v7, Lcom/mediatek/wfd/WfdService;->mPeerListener:Lcom/mediatek/wfd/WfdService$MyPeerListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 1543
    :cond_4
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1544
    const-string v5, "WfdService"

    const-string v6, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const-string v5, "wifiP2pInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 1546
    .local v2, info:Landroid/net/wifi/p2p/WifiP2pInfo;
    iget-boolean v5, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v5, :cond_5

    .line 1547
    const-string v5, "WfdService"

    const-string v6, "Group formed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-boolean v6, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    #setter for: Lcom/mediatek/wfd/WfdService;->mIsGo:Z
    invoke-static {v5, v6}, Lcom/mediatek/wfd/WfdService;->access$2702(Lcom/mediatek/wfd/WfdService;Z)Z

    .line 1549
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v6, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    #setter for: Lcom/mediatek/wfd/WfdService;->mGoInetAddress:Ljava/net/InetAddress;
    invoke-static {v5, v6}, Lcom/mediatek/wfd/WfdService;->access$2802(Lcom/mediatek/wfd/WfdService;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 1550
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v5, v5, Lcom/mediatek/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v6, v6, Lcom/mediatek/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v7, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;

    iget-object v8, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v9, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsGo:Z
    invoke-static {v9}, Lcom/mediatek/wfd/WfdService;->access$2700(Lcom/mediatek/wfd/WfdService;)Z

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;-><init>(Lcom/mediatek/wfd/WfdService;Z)V

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto/16 :goto_0

    .line 1552
    :cond_5
    const-string v5, "WfdService"

    const-string v6, "Group removed. stop rtsp server!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->stopRtspServer()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$1000(Lcom/mediatek/wfd/WfdService;)V

    .line 1554
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->onDisconnected()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$500(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1557
    .end local v2           #info:Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_6
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1558
    const-string v5, "WfdService"

    const-string v6, "WIFI_P2P_THIS_DEVICE_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const-string v5, "wifiP2pDevice"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1560
    .local v4, thisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v5, "WfdService"

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/mediatek/wfd/WfdService;->access$2900(Lcom/mediatek/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget v5, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 1562
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2300(Lcom/mediatek/wfd/WfdService;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1563
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #setter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z
    invoke-static {v5, v8}, Lcom/mediatek/wfd/WfdService;->access$2302(Lcom/mediatek/wfd/WfdService;Z)Z

    .line 1564
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$200(Lcom/mediatek/wfd/WfdService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wfd_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1566
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$700(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdAddonService;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/mediatek/wfd/WfdAddonService;->tryDiscoverPeers(I)V

    .line 1567
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->notifyEnabled()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3000(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1570
    :cond_7
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2300(Lcom/mediatek/wfd/WfdService;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1571
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #setter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z
    invoke-static {v5, v7}, Lcom/mediatek/wfd/WfdService;->access$2302(Lcom/mediatek/wfd/WfdService;Z)Z

    .line 1572
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$200(Lcom/mediatek/wfd/WfdService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wfd_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1573
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->notifyDisabled()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3100(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1577
    .end local v4           #thisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_8
    const-string v5, "android.media.RemoteDisplay.connected"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1578
    const-string v5, "WfdService"

    const-string v6, "REMOTEDISLAY_CONNECTED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->onRtspConnected()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3200(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1581
    :cond_9
    const-string v5, "android.media.RemoteDisplay.disconnected"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1582
    const-string v5, "WfdService"

    const-string v6, "REMOTEDISLAY_DISCONNECTED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->onRtspDisconnected()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$1700(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1585
    :cond_a
    const-string v5, "android.media.RemoteDisplay.error"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1586
    const-string v5, "WfdService"

    const-string v6, "REMOTEDISLAY_ERROR_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->onRtspError()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3300(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1589
    :cond_b
    const-string v5, "com.mediatek.wfd.managercreated"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1590
    const-string v5, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MANAGERCREATED, mIsEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z
    invoke-static {v7}, Lcom/mediatek/wfd/WfdService;->access$2300(Lcom/mediatek/wfd/WfdService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled:Z
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2300(Lcom/mediatek/wfd/WfdService;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1592
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->notifyDevicesChanged()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3400(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1594
    :cond_c
    const-string v5, "android.media.RemoteDisplay.rtspteardown"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1595
    const-string v5, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "REMOTEDISLAY_RTSP_TEARDOWN_ACTION, mConnectState ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v7}, Lcom/mediatek/wfd/WfdService;->access$100(Lcom/mediatek/wfd/WfdService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mRtspState ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mRtspState:I
    invoke-static {v7}, Lcom/mediatek/wfd/WfdService;->access$1600(Lcom/mediatek/wfd/WfdService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    const/4 v6, 0x4

    #setter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v5, v6}, Lcom/mediatek/wfd/WfdService;->access$102(Lcom/mediatek/wfd/WfdService;I)I

    .line 1597
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2100(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdService$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1598
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2100(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdService$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1600
    :cond_d
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$2100(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdService$MyHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$3500(Lcom/mediatek/wfd/WfdService;)Landroid/media/RemoteDisplay;

    const/16 v6, 0x1770

    int-to-long v6, v6

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1602
    :cond_e
    const-string v5, "android.media.RemoteDisplay.rtspause"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1603
    const-string v5, "WfdService"

    const-string v6, "REMOTEDISLAY_RTSP_PAUSE_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1605
    :cond_f
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1606
    const-string v5, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SCREEN_ON, enable? = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled_ScreenOff:Z
    invoke-static {v7}, Lcom/mediatek/wfd/WfdService;->access$3600(Lcom/mediatek/wfd/WfdService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled_ScreenOff:Z
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3600(Lcom/mediatek/wfd/WfdService;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1609
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-virtual {v5}, Lcom/mediatek/wfd/WfdService;->enable()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1610
    :catch_1
    move-exception v1

    .line 1611
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1615
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_10
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1616
    const-string v5, "WfdService"

    const-string v6, "ACTION_SCREEN_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-virtual {v6}, Lcom/mediatek/wfd/WfdService;->isEnabled()Z

    move-result v6

    #setter for: Lcom/mediatek/wfd/WfdService;->mIsEnabled_ScreenOff:Z
    invoke-static {v5, v6}, Lcom/mediatek/wfd/WfdService;->access$3602(Lcom/mediatek/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 1488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1510
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
