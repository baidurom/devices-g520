.class Lcom/mediatek/wfd/WfdService$5;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfd/WfdService;->doConnect(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdService;

.field final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    iput-object p2, p0, Lcom/mediatek/wfd/WfdService$5;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 337
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect failure, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stop rtsp server!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$102(Lcom/mediatek/wfd/WfdService;I)I

    .line 339
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$402(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$700(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdAddonService;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/mediatek/wfd/WfdAddonService;->tryDiscoverPeers(I)V

    .line 342
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->stopRtspServer()V
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$1000(Lcom/mediatek/wfd/WfdService;)V

    .line 343
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    const/4 v1, 0x4

    #setter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$102(Lcom/mediatek/wfd/WfdService;I)I

    .line 344
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->doDisconnect()I
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$1100(Lcom/mediatek/wfd/WfdService;)I

    .line 345
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 347
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect success, fill connecting mac as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$5;->val$mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService$5;->val$mac:Ljava/lang/String;

    #setter for: Lcom/mediatek/wfd/WfdService;->mConnectingMac:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$1202(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mConnectingMac:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$1200(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/wfd/WfdService;->access$400(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "WfdService"

    const-string v1, "we\'re connecting the correct device, start timeout count down 30000 ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    const-string v0, "WfdService"

    const-string v1, "we\'re connecting the wrong device, try disconnect it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$5;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->doCancelConnect()I
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$1300(Lcom/mediatek/wfd/WfdService;)I

    goto :goto_0
.end method
