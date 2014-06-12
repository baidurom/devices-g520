.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 451
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 452
    .local v2, opcode:I
    invoke-static {}, Lcom/android/stk/StkAppInstaller;->getInstance()Lcom/android/stk/StkAppInstaller;

    move-result-object v0

    .line 453
    .local v0, appInstaller:Lcom/android/stk/StkAppInstaller;
    packed-switch v2, :pswitch_data_0

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 460
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->isBusyOnCall()Z
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)Z

    move-result v4

    if-ne v4, v8, :cond_1

    .line 461
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06002c

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 463
    .local v3, toast:Landroid/widget/Toast;
    const/16 v4, 0x50

    invoke-virtual {v3, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 464
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 467
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v5

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v4

    if-nez v4, :cond_3

    .line 468
    :cond_2
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    invoke-static {v4, v9}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;)V

    .line 473
    :goto_1
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v4, v8}, Lcom/android/stk/StkAppService;->setUserAccessState(Z)V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;
    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v5

    #calls: Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    invoke-static {v4, v5}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_1

    .line 476
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 489
    .local v1, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v4, v1}, Lcom/android/stk/StkAppService;->access$700(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 490
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v4, v1}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 492
    :cond_4
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 493
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v4, v8}, Lcom/android/stk/StkAppService;->access$902(Lcom/android/stk/StkAppService;Z)Z

    .line 494
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/CatCmdMessage;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v5, v4}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_0

    .line 496
    :cond_5
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1000(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v5

    new-instance v6, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v7, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, v7, v8, v4}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 502
    .end local v1           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_2
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->responseNeeded:Z
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1100(Lcom/android/stk/StkAppService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 503
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    #calls: Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;)V
    invoke-static {v5, v4}, Lcom/android/stk/StkAppService;->access$1200(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V

    .line 506
    :cond_6
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1000(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eqz v4, :cond_7

    .line 507
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->callDelayedMsg()V
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1300(Lcom/android/stk/StkAppService;)V

    .line 512
    :goto_2
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->responseNeeded:Z
    invoke-static {v4, v8}, Lcom/android/stk/StkAppService;->access$1102(Lcom/android/stk/StkAppService;Z)Z

    goto/16 :goto_0

    .line 509
    :cond_7
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v4, v6}, Lcom/android/stk/StkAppService;->access$902(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_2

    .line 515
    :pswitch_3
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 516
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v4, v8}, Lcom/android/stk/StkAppService;->access$902(Lcom/android/stk/StkAppService;Z)Z

    .line 517
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleSessionEnd()V
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1400(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_0

    .line 519
    :cond_8
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1000(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v4

    new-instance v5, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v9}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 523
    :pswitch_4
    const-string v4, "OP_BOOT_COMPLETED"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v4

    if-nez v4, :cond_0

    .line 525
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 529
    :pswitch_5
    const-string v4, "OP_EVENT_DOWNLOAD"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    #calls: Lcom/android/stk/StkAppService;->handleEventDownload(Landroid/os/Bundle;)V
    invoke-static {v5, v4}, Lcom/android/stk/StkAppService;->access$1500(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 533
    :pswitch_6
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleDelayedCmd()V
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1600(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_0

    .line 536
    :pswitch_7
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleIdleTextResponse()V
    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1700(Lcom/android/stk/StkAppService;)V

    .line 538
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v4, v6}, Lcom/android/stk/StkAppService;->access$902(Lcom/android/stk/StkAppService;Z)Z

    goto/16 :goto_0

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
