.class Lcom/android/internal/telephony/DataConnection$DcActivatingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActivatingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, -0x1

    .line 943
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1027
    const/4 v4, 0x0

    .line 1030
    .local v4, retVal:Z
    :goto_0
    return v4

    .line 945
    .end local v4           #retVal:Z
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcActivatingState deferring msg.what=EVENT_CONNECT refCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v8, v8, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 947
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/android/internal/telephony/DataConnection;->access$1200(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    .line 948
    const/4 v4, 0x1

    .line 949
    .restart local v4       #retVal:Z
    goto :goto_0

    .line 952
    .end local v4           #retVal:Z
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcActivatingState msg.what=EVENT_SETUP_DATA_CONNECTION_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 954
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 955
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 957
    .local v2, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    invoke-static {v6, v0}, Lcom/android/internal/telephony/DataConnection;->access$1300(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v3

    .line 958
    .local v3, result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcActivatingState onSetupConnectionCompleted result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 959
    sget-object v6, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataCallState$SetupResult:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataCallState$SetupResult;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 992
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unknown SetupResult, should not happen"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 962
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v6}, Lcom/android/internal/telephony/DataConnection;->access$1400(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/telephony/DataConnection$DcActiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 963
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$1400(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/DataConnection;->access$1500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 994
    :goto_1
    :pswitch_3
    const/4 v4, 0x1

    .line 995
    .restart local v4       #retVal:Z
    goto :goto_0

    .line 969
    .end local v4           #retVal:Z
    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v6}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v6, v2, v7, v9}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;I)V

    .line 970
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/DataConnection;->access$1600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 974
    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v6, v2}, Lcom/android/internal/telephony/DataConnection;->access$1700(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 975
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$1800(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/DataConnection;->access$1900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 979
    :pswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const v8, 0x40002

    invoke-virtual {v7, v8, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    goto :goto_1

    .line 984
    :pswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v6}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->getSuggestedRetryTime(Landroid/os/AsyncResult;)I
    invoke-static {v8, v0}, Lcom/android/internal/telephony/DataConnection;->access$2000(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)I

    move-result v8

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;I)V

    .line 986
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/DataConnection;->access$2100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 998
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    .end local v3           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 999
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1000
    .restart local v2       #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1002
    .local v1, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    iget v6, v2, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v7, v7, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-ne v6, v7, :cond_1

    .line 1003
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcActivatingState msg.what=EVENT_GET_LAST_FAIL_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1004
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 1005
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    const/4 v7, 0x0

    aget v5, v6, v7

    .line 1006
    .local v5, rilFailCause:I
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v1

    .line 1010
    .end local v5           #rilFailCause:I
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v6}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v6

    invoke-virtual {v6, v2, v1, v9}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;I)V

    .line 1011
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/DataConnection;->access$2200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1019
    :goto_2
    const/4 v4, 0x1

    .line 1020
    .restart local v4       #retVal:Z
    goto/16 :goto_0

    .line 1014
    .end local v4           #retVal:Z
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcActivatingState EVENT_GET_LAST_FAIL_DONE is stale cp.tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mTag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v8, v8, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_0
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 959
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method
