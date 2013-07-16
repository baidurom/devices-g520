.class Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/WfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdManager;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/WfdManager;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 482
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, action:Ljava/lang/String;
    const-string v9, "com.mediatek.wfd.enabled"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 484
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    const/4 v10, 0x1

    #setter for: Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I
    invoke-static {v9, v10}, Lcom/mediatek/wfd/WfdManager;->access$102(Lcom/mediatek/wfd/WfdManager;I)I

    .line 485
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    const/4 v10, 0x1

    #calls: Lcom/mediatek/wfd/WfdManager;->notifyEnablingStatusChange(I)V
    invoke-static {v9, v10}, Lcom/mediatek/wfd/WfdManager;->access$200(Lcom/mediatek/wfd/WfdManager;I)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    const-string v9, "com.mediatek.wfd.disabled"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 487
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    const/4 v10, 0x0

    #setter for: Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I
    invoke-static {v9, v10}, Lcom/mediatek/wfd/WfdManager;->access$102(Lcom/mediatek/wfd/WfdManager;I)I

    .line 488
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    const/4 v10, 0x0

    #calls: Lcom/mediatek/wfd/WfdManager;->notifyEnablingStatusChange(I)V
    invoke-static {v9, v10}, Lcom/mediatek/wfd/WfdManager;->access$200(Lcom/mediatek/wfd/WfdManager;I)V

    goto :goto_0

    .line 489
    :cond_2
    const-string v9, "com.mediatek.wfd.startscan"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 490
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$300(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 491
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$400(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;

    invoke-interface {v9}, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;->onDeviceScanStart()V

    .line 490
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 493
    .end local v6           #i:I
    :cond_3
    const-string v9, "com.mediatek.wfd.stopscan"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 494
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$500(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 495
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$600(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;

    invoke-interface {v9}, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;->onDeviceScanFinish()V

    .line 494
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 498
    .end local v6           #i:I
    :cond_4
    const-string v9, "com.mediatek.wfd.devicefound"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 499
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$700(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 500
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$900(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;

    iget-object v10, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    const/4 v11, 0x0

    #calls: Lcom/mediatek/wfd/WfdManager;->extractDeviceFromIntent(Landroid/content/Intent;I)Lcom/mediatek/common/externaldisplay/ExternalDevice;
    invoke-static {v10, p2, v11}, Lcom/mediatek/wfd/WfdManager;->access$800(Lcom/mediatek/wfd/WfdManager;Landroid/content/Intent;I)Lcom/mediatek/common/externaldisplay/ExternalDevice;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;->onDeviceFound(Lcom/mediatek/common/externaldisplay/ExternalDevice;)V

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 503
    .end local v6           #i:I
    :cond_5
    const-string v9, "com.mediatek.wfd.connected"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 504
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$1002(Z)Z

    .line 505
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_4
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$1100(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_6

    .line 506
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$1200(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;

    iget-object v10, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    const/4 v11, 0x3

    #calls: Lcom/mediatek/wfd/WfdManager;->extractDeviceFromIntent(Landroid/content/Intent;I)Lcom/mediatek/common/externaldisplay/ExternalDevice;
    invoke-static {v10, p2, v11}, Lcom/mediatek/wfd/WfdManager;->access$800(Lcom/mediatek/wfd/WfdManager;Landroid/content/Intent;I)Lcom/mediatek/common/externaldisplay/ExternalDevice;

    move-result-object v10

    const/4 v11, 0x3

    invoke-interface {v9, v10, v11}, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;->onConnectStateChanged(Lcom/mediatek/common/externaldisplay/ExternalDevice;I)V

    .line 505
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 509
    :cond_6
    const-string v9, "device"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 511
    .local v3, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v3, :cond_7

    .line 512
    const-string v9, "WfdManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$000(Lcom/mediatek/wfd/WfdManager;)Lcom/mediatek/common/wfd/IWfdService;

    move-result-object v9

    iget-object v10, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/mediatek/common/wfd/IWfdService;->drawNotificationDevConnected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 520
    :cond_7
    :goto_5
    const-string v9, "WfdManager"

    const-string v10, "action == WfdServiceBroadcast.CONNECTED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :try_start_1
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$000(Lcom/mediatek/wfd/WfdManager;)Lcom/mediatek/common/wfd/IWfdService;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/wfd/IWfdService;->cancelNotificationOnStatusbarDetected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 523
    :catch_0
    move-exception v5

    .line 524
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 515
    .end local v5           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 516
    .restart local v5       #e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 526
    .end local v3           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v6           #i:I
    :cond_8
    const-string v9, "com.mediatek.wfd.disconnected"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 527
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$1002(Z)Z

    .line 529
    const-string v9, "WfdManager"

    const-string v10, "action == WfdServiceBroadcast.DISCONNECTED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :try_start_2
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$000(Lcom/mediatek/wfd/WfdManager;)Lcom/mediatek/common/wfd/IWfdService;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/common/wfd/IWfdService;->cancelNotificationOnStatusbarConnected()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 536
    :goto_6
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_7
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$1300(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_9

    .line 537
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$1400(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;

    iget-object v10, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    const/4 v11, 0x1

    #calls: Lcom/mediatek/wfd/WfdManager;->extractDeviceFromIntent(Landroid/content/Intent;I)Lcom/mediatek/common/externaldisplay/ExternalDevice;
    invoke-static {v10, p2, v11}, Lcom/mediatek/wfd/WfdManager;->access$800(Lcom/mediatek/wfd/WfdManager;Landroid/content/Intent;I)Lcom/mediatek/common/externaldisplay/ExternalDevice;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;->onConnectStateChanged(Lcom/mediatek/common/externaldisplay/ExternalDevice;I)V

    .line 536
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 532
    .end local v6           #i:I
    :catch_2
    move-exception v5

    .line 533
    .restart local v5       #e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 539
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v6       #i:I
    :cond_9
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    iget-object v9, v9, Lcom/mediatek/wfd/WfdManager;->connectAgainMAC:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 540
    const-string v9, "WfdManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CONNECTED then CONNECTING, to scan(), connectAgainMAC="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    iget-object v11, v11, Lcom/mediatek/wfd/WfdManager;->connectAgainMAC:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :try_start_3
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$000(Lcom/mediatek/wfd/WfdManager;)Lcom/mediatek/common/wfd/IWfdService;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/mediatek/common/wfd/IWfdService;->scan(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 543
    :catch_3
    move-exception v5

    .line 544
    .restart local v5       #e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 548
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v6           #i:I
    :cond_a
    const-string v9, "com.mediatek.wfd.deviceschanged"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 549
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #calls: Lcom/mediatek/wfd/WfdManager;->extractInfoFromIntent(Landroid/content/Intent;)[Lcom/mediatek/common/externaldisplay/ExternalDevice;
    invoke-static {v9, p2}, Lcom/mediatek/wfd/WfdManager;->access$1500(Lcom/mediatek/wfd/WfdManager;Landroid/content/Intent;)[Lcom/mediatek/common/externaldisplay/ExternalDevice;

    move-result-object v4

    .line 550
    .local v4, devices:[Lcom/mediatek/common/externaldisplay/ExternalDevice;
    if-eqz v4, :cond_0

    .line 551
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_8
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$1600(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 552
    move-object v1, v4

    .local v1, arr$:[Lcom/mediatek/common/externaldisplay/ExternalDevice;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_9
    if-ge v7, v8, :cond_c

    aget-object v2, v1, v7

    .line 553
    .local v2, d:Lcom/mediatek/common/externaldisplay/ExternalDevice;
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$1700(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;

    invoke-interface {v9, v2}, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;->onDeviceFound(Lcom/mediatek/common/externaldisplay/ExternalDevice;)V

    .line 554
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    iget-object v9, v9, Lcom/mediatek/wfd/WfdManager;->connectAgainMAC:Ljava/lang/String;

    if-eqz v9, :cond_b

    invoke-virtual {v2}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    iget-object v10, v10, Lcom/mediatek/wfd/WfdManager;->connectAgainMAC:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 555
    const-string v9, "WfdManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CONNECTED then CONNECTING, to connect()@DEVICESCHANGED, connectAgainMAC="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    iget-object v11, v11, Lcom/mediatek/wfd/WfdManager;->connectAgainMAC:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :try_start_4
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;
    invoke-static {v9}, Lcom/mediatek/wfd/WfdManager;->access$000(Lcom/mediatek/wfd/WfdManager;)Lcom/mediatek/common/wfd/IWfdService;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    iget-object v10, v10, Lcom/mediatek/wfd/WfdManager;->connectAgainMAC:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/mediatek/common/wfd/IWfdService;->connect(Ljava/lang/String;)I

    .line 558
    iget-object v9, p0, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdManager;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/mediatek/wfd/WfdManager;->connectAgainMAC:Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 552
    :cond_b
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 559
    :catch_4
    move-exception v5

    .line 560
    .restart local v5       #e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a

    .line 551
    .end local v2           #d:Lcom/mediatek/common/externaldisplay/ExternalDevice;
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8
.end method
