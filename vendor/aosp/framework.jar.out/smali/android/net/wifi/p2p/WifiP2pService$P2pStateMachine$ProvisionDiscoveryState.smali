.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionDiscoveryState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1780
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1783
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    .line 1785
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1789
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1792
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1899
    :goto_0
    return v2

    .line 1794
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 1795
    .local v1, provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1796
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    move v2, v3

    .line 1899
    goto :goto_0

    .line 1798
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v2, :cond_0

    .line 1799
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1800
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$6600()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    .line 1801
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1825
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 1826
    .restart local v1       #provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1827
    .restart local v0       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1829
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v4, v4, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1830
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1832
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v4, v4, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1833
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$6600()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    .line 1834
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1836
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z
    invoke-static {v4, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$7402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1837
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1862
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 1863
    .restart local v1       #provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1864
    .restart local v0       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1866
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    if-ne v2, v3, :cond_0

    .line 1867
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1868
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    iput-object v4, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1869
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$6600()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    .line 1870
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendShowPinReqToFrontApp(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1871
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1792
    nop

    :pswitch_data_0
    .packed-switch 0x24022
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
