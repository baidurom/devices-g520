.class Lcom/mediatek/wfd/WfdManager$WfdServiceConnection;
.super Ljava/lang/Object;
.source "WfdManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/WfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdManager;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/WfdManager;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/wfd/WfdManager$WfdServiceConnection;->this$0:Lcom/mediatek/wfd/WfdManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 179
    const-string v0, "WfdManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/mediatek/wfd/WfdManager$WfdServiceConnection;->this$0:Lcom/mediatek/wfd/WfdManager;

    invoke-static {p2}, Lcom/mediatek/common/wfd/IWfdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/wfd/IWfdService;

    move-result-object v1

    #setter for: Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdManager;->access$002(Lcom/mediatek/wfd/WfdManager;Lcom/mediatek/common/wfd/IWfdService;)Lcom/mediatek/common/wfd/IWfdService;

    .line 181
    iget-object v0, p0, Lcom/mediatek/wfd/WfdManager$WfdServiceConnection;->this$0:Lcom/mediatek/wfd/WfdManager;

    #getter for: Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;
    invoke-static {v0}, Lcom/mediatek/wfd/WfdManager;->access$000(Lcom/mediatek/wfd/WfdManager;)Lcom/mediatek/common/wfd/IWfdService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    const-string v0, "WfdManager"

    const-string v1, "mWfdService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 188
    const-string v0, "WfdManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/mediatek/wfd/WfdManager$WfdServiceConnection;->this$0:Lcom/mediatek/wfd/WfdManager;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdManager;->access$002(Lcom/mediatek/wfd/WfdManager;Lcom/mediatek/common/wfd/IWfdService;)Lcom/mediatek/common/wfd/IWfdService;

    .line 190
    return-void
.end method
