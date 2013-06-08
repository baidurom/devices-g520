.class Landroid/net/wifi/WifiStateMachine$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const v6, 0x2008e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 728
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, action:Ljava/lang/String;
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 732
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 735
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 736
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20057

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 737
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiAutoConnect:Lcom/mediatek/common/wifi/IWifiAutoConnect;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiAutoConnect;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/wifi/IWifiAutoConnect;->hasCustomizedAutoConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v1, v5}, Landroid/net/wifi/WifiStateMachine;->access$202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 739
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 754
    :cond_1
    :goto_0
    return-void

    .line 741
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 743
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 744
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 747
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 748
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20056

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 749
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiAutoConnect:Lcom/mediatek/common/wifi/IWifiAutoConnect;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiAutoConnect;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/wifi/IWifiAutoConnect;->hasCustomizedAutoConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v1, v4}, Landroid/net/wifi/WifiStateMachine;->access$202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 751
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$3;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
