.class public Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectivityChangeThread"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipManager;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "in"

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    const-string v0, "[BIP]"

    const-string v1, "ConnectivityChangeThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    .line 631
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 635
    const-string v7, "[BIP]"

    const-string v8, "ConnectivityChangeThread Enter"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v7, "[BIP]"

    const-string v8, "Connectivity changed"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v4, 0x0

    .line 638
    .local v4, ret:I
    const/4 v3, 0x0

    .line 640
    .local v3, response:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string/jumbo v8, "networkInfo"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 643
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 648
    .local v6, type:I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 649
    .local v5, state:Landroid/net/NetworkInfo$State;
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "network type is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "network state is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    if-ne v6, v12, :cond_0

    .line 653
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v7, :cond_5

    .line 654
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #calls: Lcom/android/internal/telephony/cat/BipManager;->requestRouteToHost()Z
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$400(Lcom/android/internal/telephony/cat/BipManager;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 655
    const-string v7, "[BIP]"

    const-string v8, "Fail - requestRouteToHost"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v4, 0x2

    .line 658
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #calls: Lcom/android/internal/telephony/cat/BipManager;->establishLink()I
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$500(Lcom/android/internal/telephony/cat/BipManager;)I

    move-result v4

    .line 659
    if-eqz v4, :cond_3

    if-ne v4, v12, :cond_4

    .line 661
    :cond_3
    const-string v7, "[BIP]"

    const-string v8, "channel is activated"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$600(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v13, v7, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 667
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v7

    const/16 v8, 0x1e

    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipManager;->access$600(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v9

    invoke-virtual {v7, v8, v4, v10, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 669
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 664
    :cond_4
    const-string v7, "[BIP]"

    const-string v8, "channel is un-activated"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$600(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v10, v7, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    goto :goto_1

    .line 670
    :cond_5
    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v7, :cond_0

    .line 671
    const-string v7, "[BIP]"

    const-string/jumbo v8, "network state - disconnected"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$100(Lcom/android/internal/telephony/cat/BipManager;)I

    move-result v7

    if-eq v7, v14, :cond_6

    .line 674
    const/4 v4, 0x2

    .line 675
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #setter for: Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I
    invoke-static {v7, v11}, Lcom/android/internal/telephony/cat/BipManager;->access$102(Lcom/android/internal/telephony/cat/BipManager;I)I

    .line 676
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$600(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v10, v7, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 678
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v7

    const/16 v8, 0x1e

    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipManager;->access$600(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v9

    invoke-virtual {v7, v8, v4, v10, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 680
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 682
    :cond_6
    const-string v7, "[BIP]"

    const-string/jumbo v8, "this is a drop link"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #setter for: Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I
    invoke-static {v7, v11}, Lcom/android/internal/telephony/cat/BipManager;->access$102(Lcom/android/internal/telephony/cat/BipManager;I)I

    .line 684
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$600(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v10, v7, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 686
    new-instance v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v7, 0xa

    invoke-direct {v2, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 688
    .local v2, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    new-array v0, v14, [B

    .line 689
    .local v0, additionalInfo:[B
    const/16 v7, -0x48

    aput-byte v7, v0, v10

    .line 690
    aput-byte v11, v0, v13

    .line 691
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/BipManager;->getChannelId()I

    move-result v7

    or-int/lit8 v7, v7, 0x0

    int-to-byte v7, v7

    aput-byte v7, v0, v11

    .line 692
    const/4 v7, 0x5

    aput-byte v7, v0, v12

    .line 694
    const/16 v7, 0x82

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 695
    const/16 v7, 0x81

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 696
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 697
    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 698
    const-string/jumbo v7, "onEventDownload for channel status"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipManager;->access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0
.end method
