.class Lcom/android/internal/telephony/RIL$3;
.super Landroid/content/BroadcastReceiver;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .parameter

    .prologue
    .line 6515
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$3;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 6518
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6519
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.ACTION_CAT_INIT_DONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6520
    const-string/jumbo v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6521
    .local v1, id:I
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$3;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->mStkPciObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$3;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->mySimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 6522
    const-string v2, "RILJ"

    const-string v3, "[CachedStk send cached command to CatService"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6523
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$3;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Landroid/os/Registrant;

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL$3;->this$0:Lcom/android/internal/telephony/RIL;

    #getter for: Lcom/android/internal/telephony/RIL;->mStkPciObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 6525
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$3;->this$0:Lcom/android/internal/telephony/RIL;

    #setter for: Lcom/android/internal/telephony/RIL;->mStkPciObject:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/android/internal/telephony/RIL;->access$902(Lcom/android/internal/telephony/RIL;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6528
    .end local v1           #id:I
    :cond_0
    return-void
.end method
