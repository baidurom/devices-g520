.class Lcom/android/stk/StkAppService$3;
.super Landroid/content/BroadcastReceiver;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 2017
    iput-object p1, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x14d

    const/4 v3, 0x0

    .line 2020
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2021
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2022
    .local v0, simState:Ljava/lang/String;
    const-string v1, "NOT_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2023
    const-string v1, "mSIMStateChangeReceiver() - unReg stk IDLE_MODE_TEXT notification"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2025
    iget-object v1, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$2000(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2026
    const-string v1, "Stk-SAS "

    const-string v2, "isSimReady = false"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    iget-object v1, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->isSimReady:Z
    invoke-static {v1, v3}, Lcom/android/stk/StkAppService;->access$2102(Lcom/android/stk/StkAppService;Z)Z

    .line 2042
    .end local v0           #simState:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2029
    .restart local v0       #simState:Ljava/lang/String;
    :cond_1
    const-string v1, "Stk-SAS "

    const-string v2, "isSimReady = true"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    iget-object v1, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    const/4 v2, 0x1

    #setter for: Lcom/android/stk/StkAppService;->isSimReady:Z
    invoke-static {v1, v2}, Lcom/android/stk/StkAppService;->access$2102(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_0

    .line 2032
    .end local v0           #simState:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IPO_SHUTDOWN][initial mMainCmd] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2034
    iget-object v1, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    const/4 v2, 0x0

    #setter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1, v2}, Lcom/android/stk/StkAppService;->access$202(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2035
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$2202(Z)Z

    .line 2036
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$2302(Z)Z

    .line 2037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IPO_SHUTDOWN][mMainCmd] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2038
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2039
    const-string v1, "remove Stk1 idle mode text by Refresh command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2040
    iget-object v1, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$2000(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
