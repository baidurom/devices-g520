.class Lcom/mediatek/wfd/WfdService$MyPeerListener;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPeerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 8
    .parameter "peers"

    .prologue
    const/4 v7, 0x1

    .line 1626
    const-string v5, "WfdService"

    const-string v6, "onPeersAvailable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1628
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1629
    :cond_0
    const-string v5, "WfdService"

    const-string v6, "peer list has been flushed, maybe group remove"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :goto_0
    return-void

    .line 1641
    :cond_1
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mAlivedPeers:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3700(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1642
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1644
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1645
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v5, "WfdService"

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/mediatek/wfd/WfdService;->access$2900(Lcom/mediatek/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v1, 0x0

    .line 1648
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3800(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 1649
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3800(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1650
    .local v4, oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    if-nez v5, :cond_4

    .line 1651
    const-string v5, "WfdService"

    const-string v6, "This is not WFD device"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1654
    :cond_4
    iget-object v5, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1655
    iget v5, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v5, v7, :cond_5

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$400(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1658
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->onError(I)V
    invoke-static {v5, v7}, Lcom/mediatek/wfd/WfdService;->access$800(Lcom/mediatek/wfd/WfdService;I)V

    .line 1660
    :cond_5
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3800(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1661
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mAlivedPeers:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3700(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1662
    const/4 v1, 0x1

    goto :goto_3

    .line 1665
    .end local v4           #oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    if-nez v1, :cond_2

    .line 1666
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mAlivedPeers:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3700(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$3800(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1667
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mScannedDevices:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3800(Lcom/mediatek/wfd/WfdService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1670
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #found:Z
    .end local v2           #i:I
    :cond_7
    iget-object v5, p0, Lcom/mediatek/wfd/WfdService$MyPeerListener;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->notifyDevicesChanged()V
    invoke-static {v5}, Lcom/mediatek/wfd/WfdService;->access$3400(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0
.end method
