.class Lcom/mediatek/wfd/WfdService$3;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfd/WfdService;->doDisconnect()I
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
    .line 200
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService$3;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 202
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeGroup failure, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$3;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->onDisconnected()V
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$500(Lcom/mediatek/wfd/WfdService;)V

    .line 222
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "WfdService"

    const-string v1, "removeGroup success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$3;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$100(Lcom/mediatek/wfd/WfdService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 230
    const-string v0, "WfdService"

    const-string v1, "obfused state, trigger exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v0, "WfdService"

    iget-object v1, p0, Lcom/mediatek/wfd/WfdService$3;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mTriggerException:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/wfd/WfdService;->access$600(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return-void

    .line 227
    :pswitch_0
    const-string v0, "WfdService"

    const-string v1, "wait for onDisconnected() to do the following jobs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
