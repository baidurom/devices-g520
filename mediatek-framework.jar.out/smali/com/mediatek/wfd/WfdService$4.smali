.class Lcom/mediatek/wfd/WfdService$4;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfd/WfdService;->doCancelConnect()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 244
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelConnect failure, mConnectState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v2}, Lcom/mediatek/wfd/WfdService;->access$100(Lcom/mediatek/wfd/WfdService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$700(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdAddonService;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/mediatek/wfd/WfdAddonService;->tryDiscoverPeers(I)V

    .line 258
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/wfd/WfdService;->onError(I)V
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$800(Lcom/mediatek/wfd/WfdService;I)V

    .line 259
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 261
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelConnect success, mConnectState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v2}, Lcom/mediatek/wfd/WfdService;->access$100(Lcom/mediatek/wfd/WfdService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$100(Lcom/mediatek/wfd/WfdService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    const-string v0, "WfdService"

    const-string v1, "obfused state, trigger exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "WfdService"

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mTriggerException:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/wfd/WfdService;->access$600(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mAddonService:Lcom/mediatek/wfd/WfdAddonService;
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$700(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdAddonService;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/mediatek/wfd/WfdAddonService;->tryDiscoverPeers(I)V

    .line 279
    return-void

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$400(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "WfdService"

    const-string v1, "switch to new desired mac"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/wfd/WfdService;->access$400(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/wfd/WfdService;->doConnectQueued(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$900(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_0
    const-string v0, "WfdService"

    const-string v1, "connect is canceled, go back to disconnected state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$4;->this$0:Lcom/mediatek/wfd/WfdService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$102(Lcom/mediatek/wfd/WfdService;I)I

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
