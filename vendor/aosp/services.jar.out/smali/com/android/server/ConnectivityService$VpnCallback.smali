.class public Lcom/android/server/ConnectivityService$VpnCallback;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 3498
    iput-object p1, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3499
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3496
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public override(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3502
    .local p1, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, searchDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 3503
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 3553
    :cond_0
    :goto_0
    return-void

    .line 3508
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3509
    .local v1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3512
    .local v0, address:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3513
    :catch_0
    move-exception v7

    goto :goto_1

    .line 3517
    .end local v0           #address:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3518
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    goto :goto_0

    .line 3523
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3524
    .local v2, buffer:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_4

    .line 3525
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3526
    .local v4, domain:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3529
    .end local v4           #domain:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3532
    .local v5, domains:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3533
    .local v3, changed:Z
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3534
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const-string v9, "VPN"

    const-string v10, "VPN"

    #calls: Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    invoke-static {v7, v9, v10, v1, v5}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    .line 3535
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v7, v9}, Lcom/android/server/ConnectivityService;->access$3102(Lcom/android/server/ConnectivityService;Z)Z

    .line 3536
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3537
    if-eqz v3, :cond_5

    .line 3538
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->bumpDns()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)V

    .line 3542
    :cond_5
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Vpn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3545
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3546
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v7, v9}, Lcom/android/server/ConnectivityService;->access$3502(Lcom/android/server/ConnectivityService;Z)Z

    .line 3547
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 3548
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v9, 0x0

    #calls: Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v7, v9}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    .line 3550
    :cond_6
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 3536
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 3556
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3557
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3558
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->access$3102(Lcom/android/server/ConnectivityService;Z)Z

    .line 3559
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6f

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3561
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3564
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3572
    :goto_0
    return-void

    .line 3561
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3566
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3567
    :try_start_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->access$3502(Lcom/android/server/ConnectivityService;Z)Z

    .line 3568
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3569
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    .line 3571
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
