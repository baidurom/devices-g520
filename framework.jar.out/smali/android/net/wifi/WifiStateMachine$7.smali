.class Landroid/net/wifi/WifiStateMachine$7;
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
    .line 857
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 860
    const-string v0, "WifiStateMachine"

    const-string v1, "Received: WfdManager.ACTION_ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWfdConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const-string/jumbo v1, "landscape"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 862
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x200b0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 863
    return-void
.end method
