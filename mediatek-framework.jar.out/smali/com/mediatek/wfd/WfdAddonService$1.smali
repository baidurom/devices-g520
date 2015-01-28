.class Lcom/mediatek/wfd/WfdAddonService$1;
.super Ljava/lang/Object;
.source "WfdAddonService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/WfdAddonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdAddonService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/WfdAddonService;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/wfd/WfdAddonService$1;->this$0:Lcom/mediatek/wfd/WfdAddonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 40
    const-string v0, "WfdAddonService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers fail, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mediatek/wfd/WfdAddonService$1;->this$0:Lcom/mediatek/wfd/WfdAddonService;

    #getter for: Lcom/mediatek/wfd/WfdAddonService;->mWfdService:Lcom/mediatek/wfd/WfdService;
    invoke-static {v1}, Lcom/mediatek/wfd/WfdAddonService;->access$000(Lcom/mediatek/wfd/WfdAddonService;)Lcom/mediatek/wfd/WfdService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/wfd/WfdService;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService$1;->this$0:Lcom/mediatek/wfd/WfdAddonService;

    #getter for: Lcom/mediatek/wfd/WfdAddonService;->mWfdService:Lcom/mediatek/wfd/WfdService;
    invoke-static {v0}, Lcom/mediatek/wfd/WfdAddonService;->access$000(Lcom/mediatek/wfd/WfdAddonService;)Lcom/mediatek/wfd/WfdService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfd/WfdService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "WfdAddonService"

    const-string v1, "re-discoverPeers() after: 2000 ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/mediatek/wfd/WfdAddonService$1;->this$0:Lcom/mediatek/wfd/WfdAddonService;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/mediatek/wfd/WfdAddonService;->tryDiscoverPeers(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "WfdAddonService"

    const-string v1, "discoverPeers success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
