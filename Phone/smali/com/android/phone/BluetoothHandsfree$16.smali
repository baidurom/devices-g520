.class Lcom/android/phone/BluetoothHandsfree$16;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3017
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 11
    .parameter "args"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3020
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3021
    .local v1, phoneType:I
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 3022
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3024
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    array-length v6, p1

    if-lt v6, v9, :cond_15

    .line 3025
    aget-object v6, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3027
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3028
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 3032
    .local v2, result:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 3033
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3179
    .end local v2           #result:Z
    :goto_1
    return-object v6

    .line 3030
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .restart local v2       #result:Z
    goto :goto_0

    .line 3035
    :cond_1
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 3037
    .end local v2           #result:Z
    :cond_2
    aget-object v6, p1, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3038
    if-ne v1, v10, :cond_4

    .line 3039
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3041
    const-string v6, "CHLD:1 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 3045
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    .line 3054
    :goto_2
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 3051
    :cond_3
    const-string v6, "CHLD:1 Hangup Call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 3052
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_2

    .line 3055
    :cond_4
    if-ne v1, v9, :cond_9

    .line 3059
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3061
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3063
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 3083
    .local v3, ret:Z
    :goto_3
    if-eqz v3, :cond_8

    .line 3085
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 3066
    .end local v3           #ret:Z
    :cond_5
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .restart local v3       #ret:Z
    goto :goto_3

    .line 3071
    .end local v3           #ret:Z
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3074
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3075
    const/4 v3, 0x1

    .restart local v3       #ret:Z
    goto :goto_3

    .line 3079
    .end local v3           #ret:Z
    :cond_7
    const/4 v3, 0x0

    .restart local v3       #ret:Z
    goto :goto_3

    .line 3089
    :cond_8
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 3092
    .end local v3           #ret:Z
    :cond_9
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3094
    :cond_a
    aget-object v6, p1, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3095
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v7, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 3096
    if-ne v1, v10, :cond_d

    .line 3102
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3103
    const-string v6, "CHLD:2 Callwaiting Answer call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 3104
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3105
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3107
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6, v9}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 3128
    :cond_b
    :goto_4
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 3108
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_b

    .line 3111
    const-string v6, "CHLD:2 Swap Calls"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 3112
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3114
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    goto :goto_4

    .line 3116
    :cond_d
    if-ne v1, v9, :cond_f

    .line 3118
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3119
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v6}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCall()V

    goto :goto_4

    .line 3122
    :cond_e
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_4

    .line 3126
    :cond_f
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3129
    :cond_10
    aget-object v6, p1, v8

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 3130
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v7, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 3131
    if-ne v1, v10, :cond_13

    .line 3132
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 3135
    .local v5, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_12

    .line 3136
    const-string v6, "CHLD:3 Merge Calls"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 3148
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    .line 3176
    .end local v5           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_11
    :goto_5
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1

    .line 3151
    .restart local v5       #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_12
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_11

    .line 3154
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCallHeld()V
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    goto :goto_5

    .line 3156
    .end local v5           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_13
    if-ne v1, v9, :cond_14

    .line 3157
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3169
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto :goto_5

    .line 3174
    :cond_14
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3179
    :cond_15
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_1
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 3184
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CHLD: (0,1,2,3)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 3185
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 3186
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$6100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3187
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 3193
    :cond_0
    :goto_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0

    .line 3188
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3190
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_0
.end method
