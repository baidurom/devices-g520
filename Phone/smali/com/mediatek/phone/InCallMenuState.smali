.class public Lcom/mediatek/phone/InCallMenuState;
.super Ljava/lang/Object;
.source "InCallMenuState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InCallMenuState"


# instance fields
.field public canECT:Z

.field public canHangupActiveAndAnswerWaiting:Z

.field public canHangupAll:Z

.field public canHangupHolding:Z

.field public canMuteRinger:Z

.field public canVTVoiceAnswer:Z

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "incallScreen"
    .parameter "cm"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mediatek/phone/InCallMenuState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 31
    iput-object p2, p0, Lcom/mediatek/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 32
    return-void
.end method

.method public static canECT(Lcom/android/internal/telephony/CallManager;)Z
    .locals 14
    .parameter "cm"

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 102
    const/4 v8, 0x0

    .line 104
    .local v8, retval:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    .line 105
    .local v4, hasActiveFgCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 106
    .local v3, hasActiveBgCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    .line 108
    .local v5, hasActiveRingingCall:Z
    const/4 v2, 0x0

    .line 109
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    const/4 v0, 0x0

    .line 111
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    .line 112
    .local v1, dt:Lcom/mediatek/phone/DualTalkUtils;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->isDualTalkMultipleHoldCase()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 116
    invoke-virtual {v1}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 122
    :goto_0
    if-eqz v5, :cond_1

    .line 123
    const/4 v8, 0x0

    move v9, v8

    .line 135
    .end local v8           #retval:Z
    .local v9, retval:I
    :goto_1
    return v9

    .line 118
    .end local v9           #retval:I
    .restart local v8       #retval:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    if-ne v12, v13, :cond_3

    move v7, v10

    .line 129
    .local v7, isFgSipPhone:Z
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    if-ne v12, v13, :cond_4

    move v6, v10

    .line 130
    .local v6, isBgSipPhone:Z
    :goto_3
    if-nez v7, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    if-ne v10, v11, :cond_2

    .line 131
    const/4 v8, 0x1

    .end local v6           #isBgSipPhone:Z
    .end local v7           #isFgSipPhone:Z
    :cond_2
    move v9, v8

    .line 135
    .restart local v9       #retval:I
    goto :goto_1

    .end local v9           #retval:I
    :cond_3
    move v7, v11

    .line 128
    goto :goto_2

    .restart local v7       #isFgSipPhone:Z
    :cond_4
    move v6, v11

    .line 129
    goto :goto_3
.end method

.method public static canHangupActiveAndAnswerWaiting(Lcom/android/internal/telephony/CallManager;)Z
    .locals 11
    .parameter "cm"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 81
    const/4 v5, 0x0

    .line 83
    .local v5, retval:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 84
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 85
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 87
    .local v6, rgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_1

    move v3, v7

    .line 88
    .local v3, isFgActive:Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_2

    move v2, v7

    .line 89
    .local v2, isBgIdle:Z
    :goto_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_3

    move v4, v7

    .line 91
    .local v4, isRgWaiting:Z
    :goto_2
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v7

    if-nez v7, :cond_0

    .line 94
    const/4 v5, 0x1

    .line 98
    :cond_0
    return v5

    .end local v2           #isBgIdle:Z
    .end local v3           #isFgActive:Z
    .end local v4           #isRgWaiting:Z
    :cond_1
    move v3, v8

    .line 87
    goto :goto_0

    .restart local v3       #isFgActive:Z
    :cond_2
    move v2, v8

    .line 88
    goto :goto_1

    .restart local v2       #isBgIdle:Z
    :cond_3
    move v4, v8

    .line 89
    goto :goto_2
.end method

.method public static canHangupAll(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 49
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 50
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 52
    .local v3, rgCall:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 53
    .local v2, retval:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 54
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_5

    .line 55
    const/4 v2, 0x1

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 63
    :cond_2
    const/4 v2, 0x1

    .line 67
    :cond_3
    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->hasMultiplePhoneActive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 68
    const/4 v2, 0x1

    .line 71
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canHangupAll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/InCallMenuState;->log(Ljava/lang/String;)V

    .line 72
    return v2

    .line 56
    :cond_5
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasActivefgEccCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static canHangupHolding(Lcom/android/internal/telephony/CallManager;)Z
    .locals 3
    .parameter "cm"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 77
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static canIncomingMenuShow(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "cm"

    .prologue
    .line 153
    invoke-static {p0}, Lcom/mediatek/phone/InCallMenuState;->canHangupActiveAndAnswerWaiting(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/InCallMenuState;->canVTVoiceAnswer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canMuteRinger()Z
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public static canVTVoiceAnswer()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 44
    const-string v0, "InCallMenuState"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/mediatek/phone/InCallMenuState;->canHangupAll(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/InCallMenuState;->canHangupAll:Z

    .line 36
    iget-object v0, p0, Lcom/mediatek/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/mediatek/phone/InCallMenuState;->canHangupHolding(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/InCallMenuState;->canHangupHolding:Z

    .line 37
    iget-object v0, p0, Lcom/mediatek/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/mediatek/phone/InCallMenuState;->canHangupActiveAndAnswerWaiting(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/InCallMenuState;->canHangupActiveAndAnswerWaiting:Z

    .line 38
    iget-object v0, p0, Lcom/mediatek/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/mediatek/phone/InCallMenuState;->canECT(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/InCallMenuState;->canECT:Z

    .line 39
    invoke-static {}, Lcom/mediatek/phone/InCallMenuState;->canVTVoiceAnswer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/InCallMenuState;->canVTVoiceAnswer:Z

    .line 40
    invoke-static {}, Lcom/mediatek/phone/InCallMenuState;->canMuteRinger()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/phone/InCallMenuState;->canMuteRinger:Z

    .line 41
    return-void
.end method
