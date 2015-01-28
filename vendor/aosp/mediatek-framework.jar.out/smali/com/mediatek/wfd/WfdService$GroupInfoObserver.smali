.class Lcom/mediatek/wfd/WfdService$GroupInfoObserver;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupInfoObserver"
.end annotation


# instance fields
.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOwner:Z

.field final synthetic this$0:Lcom/mediatek/wfd/WfdService;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfd/WfdService;Z)V
    .locals 1
    .parameter
    .parameter "isOwner"

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mDeviceList:Ljava/util/List;

    .line 1677
    iput-boolean p2, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mIsOwner:Z

    .line 1678
    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 6
    .parameter "group"

    .prologue
    .line 1686
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-boolean v3, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mIsOwner:Z

    #calls: Lcom/mediatek/wfd/WfdService;->mappingGroupandScannedDevice(Landroid/net/wifi/p2p/WifiP2pGroup;Z)V
    invoke-static {v2, p1, v3}, Lcom/mediatek/wfd/WfdService;->access$3900(Lcom/mediatek/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pGroup;Z)V

    .line 1688
    iget-boolean v2, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mIsOwner:Z

    if-eqz v2, :cond_3

    .line 1689
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1692
    :cond_0
    const-string v2, "WfdService"

    const-string v3, "onGroupInfoAvailable(), no client is connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1696
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1697
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mDeviceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1699
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v3, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mDeviceList:Ljava/util/List;

    #calls: Lcom/mediatek/wfd/WfdService;->onConnected(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/mediatek/wfd/WfdService;->access$4000(Lcom/mediatek/wfd/WfdService;Ljava/util/List;)V

    .line 1712
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_2
    const-string v2, "WfdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGroupInfoAvailable(), Time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1702
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 1703
    .restart local v0       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v0, :cond_4

    .line 1704
    const-string v2, "WfdService"

    const-string v3, "onGroupInfoAvailable(), group owner is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :cond_4
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1708
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mDeviceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1709
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v3, p0, Lcom/mediatek/wfd/WfdService$GroupInfoObserver;->mDeviceList:Ljava/util/List;

    #calls: Lcom/mediatek/wfd/WfdService;->onConnected(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/mediatek/wfd/WfdService;->access$4000(Lcom/mediatek/wfd/WfdService;Ljava/util/List;)V

    goto :goto_2
.end method
