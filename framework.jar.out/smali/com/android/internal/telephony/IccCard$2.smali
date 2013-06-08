.class Lcom/android/internal/telephony/IccCard$2;
.super Landroid/os/Handler;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 1089
    const-string v10, "IccCard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "receive message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v6, 0x7

    .line 1094
    .local v6, serviceClassX:I
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v10, v10, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v10, :cond_1

    .line 1095
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] while being destroyed. Ignoring."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1100
    :cond_1
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1445
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[IccCard] Unknown Event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1102
    :sswitch_1
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_RADIO_OFF_OR_NOT_AVAILABLE)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1103
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x1

    #setter for: Lcom/android/internal/telephony/IccCard;->mIsRadioOffOrNotAvailable:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1104
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v11, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v11, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v10, v11, :cond_3

    .line 1105
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->broadcastRadioOffIntent()V

    .line 1107
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1108
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mIccType:Ljava/lang/String;

    .line 1109
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1110
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "NOT_READY"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :sswitch_2
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_RADIO_ON)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1114
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-nez v10, :cond_5

    .line 1115
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->handleCdmaSubscriptionSource()V
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$200(Lcom/android/internal/telephony/IccCard;)V

    .line 1117
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1120
    :sswitch_3
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->handleCdmaSubscriptionSource()V
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$200(Lcom/android/internal/telephony/IccCard;)V

    goto/16 :goto_0

    .line 1124
    :sswitch_4
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_ICC_READY)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1125
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mIsRadioOffOrNotAvailable:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1126
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v11, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1127
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1128
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->updateSimIndicateState()V

    .line 1129
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1132
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1133
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v11, "SC"

    const-string v12, ""

    const/4 v13, 0x7

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v10, v11, v12, v6, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1136
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v11, "FD"

    const-string v12, ""

    const/16 v13, 0xa

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v10, v11, v12, v6, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1141
    :sswitch_5
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_ICC_LOCKED_OR_ABSENT)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1142
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mIsRadioOffOrNotAvailable:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1143
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1144
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v11, "SC"

    const-string v12, ""

    const/4 v13, 0x7

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v10, v11, v12, v6, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1149
    :sswitch_6
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_GET_ICC_STATUS_DONE)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1150
    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1152
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v10, v1}, Lcom/android/internal/telephony/IccCard;->access$300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1158
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1160
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-static {v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v10

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v11, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1162
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v11, "SC"

    const-string v12, ""

    const/4 v13, 0x7

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v10, v11, v12, v6, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1165
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x5

    iget-object v12, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v11, v12}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1174
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1175
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v10, v1}, Lcom/android/internal/telephony/IccCard;->access$300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    .line 1176
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1179
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1180
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v10, v1}, Lcom/android/internal/telephony/IccCard;->access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1183
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1184
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v10, v1}, Lcom/android/internal/telephony/IccCard;->access$500(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1187
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1188
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_a

    .line 1189
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v11, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z
    invoke-static {v11}, Lcom/android/internal/telephony/IccCard;->access$700(Lcom/android/internal/telephony/IccCard;)Z

    move-result v11

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1190
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccPinLocked= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static {v12}, Lcom/android/internal/telephony/IccCard;->access$600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1196
    :cond_9
    :goto_1
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-static {v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v10

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v11, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1198
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1193
    :cond_a
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error change facility lock with exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1201
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1203
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_c

    .line 1204
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v11, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z
    invoke-static {v11}, Lcom/android/internal/telephony/IccCard;->access$900(Lcom/android/internal/telephony/IccCard;)Z

    move-result v11

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$802(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1205
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mPhbReady:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1206
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->updatePhbStateProperty()V
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$1100(Lcom/android/internal/telephony/IccCard;)V

    .line 1207
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static {v12}, Lcom/android/internal/telephony/IccCard;->access$800(Lcom/android/internal/telephony/IccCard;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1213
    :cond_b
    :goto_2
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-static {v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v10

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v11, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1215
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1210
    :cond_c
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error change facility fdn with exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1218
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1219
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_d

    .line 1220
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in change sim password with exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_d
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-static {v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v10

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v11, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1227
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v11, "SC"

    const-string v12, ""

    const/4 v13, 0x7

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v10, v11, v12, v6, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1230
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x5

    iget-object v12, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v11, v12}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1235
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_QUERY_NETWORK_LOCK)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1236
    :cond_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1238
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_f

    .line 1239
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error query network lock with exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1242
    :cond_f
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v10, v11, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1243
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1247
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_CHANGE_NETWORK_LOCK)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1248
    :cond_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1249
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_11

    .line 1250
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error change network lock with exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_11
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-static {v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v10

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v11, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1255
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1258
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_QUERY_ICCID_DONE)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1259
    :cond_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1260
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_13

    .line 1261
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v11, "Error query iccid with exception"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-static {v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v10

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v11, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1270
    :goto_3
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1265
    :cond_13
    iget-object v11, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccId:Ljava/lang/String;
    invoke-static {v11, v10}, Lcom/android/internal/telephony/IccCard;->access$1202(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1266
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Query iccid done. mIccId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccId:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/IccCard;->access$1200(Lcom/android/internal/telephony/IccCard;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1267
    :cond_14
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-static {v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v10

    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v11, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    goto :goto_3

    .line 1273
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_PHB_READY)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1274
    :cond_15
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x1

    #setter for: Lcom/android/internal/telephony/IccCard;->mPhbReady:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1276
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v11, "FD"

    const-string v12, ""

    const/16 v13, 0xa

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v10, v11, v12, v6, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1279
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v11, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mPhbReady:Z
    invoke-static {v11}, Lcom/android/internal/telephony/IccCard;->access$1000(Lcom/android/internal/telephony/IccCard;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccCard;->broadcastPhbStateChangedIntent(Z)V

    goto/16 :goto_0

    .line 1282
    :sswitch_12
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_SIM_PLUG_OUT)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1283
    :cond_16
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mIccType:Ljava/lang/String;

    .line 1284
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1285
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$802(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1286
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mPhbReady:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1287
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccId:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$1202(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1289
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mSIMInfoReady:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$1302(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1290
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->registerIntentReciver()V
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$1400(Lcom/android/internal/telephony/IccCard;)V

    .line 1296
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->processSimIsAbsent()V
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$1500(Lcom/android/internal/telephony/IccCard;)V

    .line 1301
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1304
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dual_sim_mode_setting"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1307
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1310
    .local v0, airplaneMode:I
    if-nez v0, :cond_17

    .line 1311
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1312
    .local v4, intent:Landroid/content/Intent;
    const-string/jumbo v10, "mode"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1313
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1316
    .end local v4           #intent:Landroid/content/Intent;
    :cond_17
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccRecords;->onSimHotSwap(Z)V

    goto/16 :goto_0

    .line 1319
    .end local v0           #airplaneMode:I
    :sswitch_13
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_SIM_MISSING)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1320
    :cond_18
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->processSimIsAbsent()V
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$1500(Lcom/android/internal/telephony/IccCard;)V

    goto/16 :goto_0

    .line 1323
    :sswitch_14
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_SIM_PLUG_IN)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1324
    :cond_19
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 1325
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1326
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1327
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->disableSimMissingNotification()V

    .line 1328
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0x6f

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->detectSimMissing(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1331
    :sswitch_15
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0x6f

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->detectSimMissing(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1334
    :sswitch_16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1335
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1d

    .line 1336
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v5, v10

    check-cast v5, [I

    .line 1337
    .local v5, result:[I
    if-nez v5, :cond_1a

    .line 1338
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "EVENT_QUERY_SIM_STATUS_FOR_PLUG_IN, card is null"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1340
    :cond_1a
    const/4 v10, 0x0

    aget v10, v5, v10

    sparse-switch v10, :sswitch_data_1

    .line 1350
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccRecords;->onSimHotSwap(Z)V

    .line 1352
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1342
    :sswitch_17
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "EVENT_QUERY_SIM_STATUS_FOR_PLUG_IN, card is null"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1343
    :cond_1b
    const/16 v10, 0x69

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccCard$2;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1346
    :sswitch_18
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "SIM busy, retry query missing status 1s later"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1347
    :cond_1c
    const/16 v10, 0x70

    const-wide/16 v11, 0x3e8

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/IccCard$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1356
    .end local v5           #result:[I
    :cond_1d
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "EVENT_QUERY_SIM_STATUS_FOR_PLUG_IN, exception"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1360
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_19
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_SIM_RECOVERY)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1361
    :cond_1e
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1362
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mRecoveryRegistrants:Landroid/os/RegistrantList;
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$1600(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1363
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1364
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->disableSimMissingNotification()V

    goto/16 :goto_0

    .line 1376
    :sswitch_1a
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_VIRTUAL_SIM_ON),MTK_GEMINI_SUPPORT off"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1377
    :cond_1f
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1379
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1380
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v11, 0x6b

    #calls: Lcom/android/internal/telephony/IccCard;->setNotificationVirtual(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$1700(Lcom/android/internal/telephony/IccCard;I)V

    .line 1381
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "AutoAnswer"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1382
    .local v8, shOn:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1383
    .local v3, editorOn:Landroid/content/SharedPreferences$Editor;
    const-string v10, "flag"

    const/4 v11, 0x1

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1384
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1387
    .end local v3           #editorOn:Landroid/content/SharedPreferences$Editor;
    .end local v8           #shOn:Landroid/content/SharedPreferences;
    :sswitch_1b
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v10, :cond_20

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_VIRTUAL_SIM_OFF)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1389
    :cond_20
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 1391
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v11, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1392
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$1800(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1393
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1394
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "ABSENT"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "ABSENT"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v11, 0x6b

    #calls: Lcom/android/internal/telephony/IccCard;->removeNotificationVirtual(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$1900(Lcom/android/internal/telephony/IccCard;I)V

    .line 1397
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v11, 0x69

    #calls: Lcom/android/internal/telephony/IccCard;->setNotification(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$2000(Lcom/android/internal/telephony/IccCard;I)V

    .line 1398
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "AutoAnswer"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1399
    .local v7, shOff:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1400
    .local v2, editorOff:Landroid/content/SharedPreferences$Editor;
    const-string v10, "flag"

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1401
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1404
    .end local v2           #editorOff:Landroid/content/SharedPreferences$Editor;
    .end local v7           #shOff:Landroid/content/SharedPreferences;
    :sswitch_1c
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v11, "Received Event EVENT_ICC_STATUS_CHANGED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1414
    :sswitch_1d
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "handleMessage (EVENT_SIM_INSERT_STATUS)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1415
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1416
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x0

    aget v9, v10, v11

    .line 1417
    .local v9, uimInsertedStatus:I
    const-string v10, "IccCard "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " uimInsertedStatus = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    if-nez v9, :cond_0

    .line 1419
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 1420
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v11, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v11, v10, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1421
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$1800(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1422
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1423
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "ABSENT"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v11, "ABSENT"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v11, 0xc9

    #calls: Lcom/android/internal/telephony/IccCard;->setNotification(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/IccCard;->access$2000(Lcom/android/internal/telephony/IccCard;I)V

    goto/16 :goto_0

    .line 1434
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v9           #uimInsertedStatus:I
    :sswitch_1e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1435
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_21

    .line 1436
    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v10, v10, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in SIM access with exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_21
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v10, v11, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1441
    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1100
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_1
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_9
        0x8 -> :sswitch_b
        0x9 -> :sswitch_d
        0xa -> :sswitch_a
        0xb -> :sswitch_c
        0xc -> :sswitch_1c
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1e
        0x12 -> :sswitch_1e
        0x13 -> :sswitch_1e
        0x14 -> :sswitch_1e
        0x15 -> :sswitch_1e
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
        0x67 -> :sswitch_10
        0x68 -> :sswitch_11
        0x69 -> :sswitch_13
        0x6a -> :sswitch_19
        0x6b -> :sswitch_1a
        0x6c -> :sswitch_1b
        0x6d -> :sswitch_12
        0x6e -> :sswitch_14
        0x6f -> :sswitch_16
        0x70 -> :sswitch_15
        0xc9 -> :sswitch_1d
    .end sparse-switch

    .line 1340
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_17
        0xe -> :sswitch_18
    .end sparse-switch
.end method
