.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPhoneState"
.end annotation


# static fields
.field private static final PHONE_CDMA_CALL_WAITING:I = 0x4

.field private static final PHONE_INCOMING_RING:I = 0x7

.field private static final PHONE_VT_RING_INFO:I = 0xd

.field private static final PRECISE_CALL_STATE_CHANGED:I = 0x2

.field private static final RETRY_SCO_TIME_WINDOW:I = 0x3e8

.field private static final RING:I = 0x3

.field private static final SERVICE_STATE_CHANGED:I = 0x1

.field private static final SERVICE_STATE_CHANGED2:I = 0x5


# instance fields
.field private mBattchg:I

.field private mCall:I

.field private mCallStartTime:J

.field private mCallheld:I

.field private mCallsetup:I

.field private mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

.field private mIgnoreRing:Z

.field private mRingingNumber:Ljava/lang/String;

.field private mRingingType:I

.field private mRoam:I

.field private mRssi:I

.field private mService:I

.field private mSignal:I

.field private mStat:I

.field private mStateChangeHandler:Landroid/os/Handler;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStopRing:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 803
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 739
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 742
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 762
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    .line 969
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 807
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    .line 808
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    .line 809
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 811
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 814
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-nez v1, :cond_0

    .line 815
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 816
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v1, :cond_1

    .line 818
    const-string v1, "get mDualTalk instance succeed"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 828
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->registerPhoneEvents(Z)V

    .line 829
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 835
    return-void

    .line 822
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "get mDualTalk instance failed"

    #calls: Lcom/android/phone/BluetoothHandsfree;->logErr(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 698
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 698
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->scoClosed()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ignoreRing()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->stopRing()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 698
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCindResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCindTestResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCsqResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCallHeld()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 698
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private asuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 943
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->gsmAsuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 946
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0
.end method

.method private cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    .locals 13
    .parameter "signalStrength"

    .prologue
    const/4 v12, 0x5

    .line 891
    const/4 v6, 0x0

    .line 892
    .local v6, levelDbm:I
    const/4 v7, 0x0

    .line 893
    .local v7, levelEcio:I
    const/4 v2, 0x0

    .line 894
    .local v2, cdmaIconLevel:I
    const/4 v4, 0x0

    .line 895
    .local v4, evdoIconLevel:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 896
    .local v0, cdmaDbm:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 898
    .local v1, cdmaEcio:I
    const/16 v10, -0x4b

    if-lt v0, v10, :cond_2

    const/4 v6, 0x4

    .line 905
    :goto_0
    const/16 v10, -0x5a

    if-lt v1, v10, :cond_6

    const/4 v7, 0x4

    .line 911
    :goto_1
    if-ge v6, v7, :cond_a

    move v2, v6

    .line 913
    :goto_2
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v10

    if-eq v10, v12, :cond_0

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_1

    .line 916
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    .line 917
    .local v3, evdoEcio:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v5

    .line 918
    .local v5, evdoSnr:I
    const/4 v8, 0x0

    .line 919
    .local v8, levelEvdoEcio:I
    const/4 v9, 0x0

    .line 922
    .local v9, levelEvdoSnr:I
    const/16 v10, -0x28a

    if-lt v3, v10, :cond_b

    const/4 v8, 0x4

    .line 928
    :goto_3
    const/4 v10, 0x7

    if-le v5, v10, :cond_f

    const/4 v9, 0x4

    .line 934
    :goto_4
    if-ge v8, v9, :cond_13

    move v4, v8

    .line 937
    .end local v3           #evdoEcio:I
    .end local v5           #evdoSnr:I
    .end local v8           #levelEvdoEcio:I
    .end local v9           #levelEvdoSnr:I
    :cond_1
    :goto_5
    if-le v2, v4, :cond_14

    .end local v2           #cdmaIconLevel:I
    :goto_6
    return v2

    .line 899
    .restart local v2       #cdmaIconLevel:I
    :cond_2
    const/16 v10, -0x55

    if-lt v0, v10, :cond_3

    const/4 v6, 0x3

    goto :goto_0

    .line 900
    :cond_3
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_4

    const/4 v6, 0x2

    goto :goto_0

    .line 901
    :cond_4
    const/16 v10, -0x64

    if-lt v0, v10, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    .line 902
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 906
    :cond_6
    const/16 v10, -0x6e

    if-lt v1, v10, :cond_7

    const/4 v7, 0x3

    goto :goto_1

    .line 907
    :cond_7
    const/16 v10, -0x82

    if-lt v1, v10, :cond_8

    const/4 v7, 0x2

    goto :goto_1

    .line 908
    :cond_8
    const/16 v10, -0x96

    if-lt v1, v10, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    .line 909
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    :cond_a
    move v2, v7

    .line 911
    goto :goto_2

    .line 923
    .restart local v3       #evdoEcio:I
    .restart local v5       #evdoSnr:I
    .restart local v8       #levelEvdoEcio:I
    .restart local v9       #levelEvdoSnr:I
    :cond_b
    const/16 v10, -0x2ee

    if-lt v3, v10, :cond_c

    const/4 v8, 0x3

    goto :goto_3

    .line 924
    :cond_c
    const/16 v10, -0x384

    if-lt v3, v10, :cond_d

    const/4 v8, 0x2

    goto :goto_3

    .line 925
    :cond_d
    const/16 v10, -0x41a

    if-lt v3, v10, :cond_e

    const/4 v8, 0x1

    goto :goto_3

    .line 926
    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    .line 929
    :cond_f
    if-le v5, v12, :cond_10

    const/4 v9, 0x3

    goto :goto_4

    .line 930
    :cond_10
    const/4 v10, 0x3

    if-le v5, v10, :cond_11

    const/4 v9, 0x2

    goto :goto_4

    .line 931
    :cond_11
    const/4 v10, 0x1

    if-le v5, v10, :cond_12

    const/4 v9, 0x1

    goto :goto_4

    .line 932
    :cond_12
    const/4 v9, 0x0

    goto :goto_4

    :cond_13
    move v4, v9

    .line 934
    goto :goto_5

    .end local v3           #evdoEcio:I
    .end local v5           #evdoSnr:I
    .end local v8           #levelEvdoEcio:I
    .end local v9           #levelEvdoSnr:I
    :cond_14
    move v2, v4

    .line 937
    goto :goto_6
.end method

.method private getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I
    .locals 2
    .parameter "currState"
    .parameter "prevState"

    .prologue
    .line 1465
    const-string v1, "[API] getCdmaCallHeldStatus"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1467
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_1

    .line 1468
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p2, v1, :cond_0

    .line 1469
    const/4 v0, 0x0

    .line 1480
    .local v0, callheld:I
    :goto_0
    return v0

    .line 1471
    .end local v0           #callheld:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #callheld:I
    goto :goto_0

    .line 1474
    .end local v0           #callheld:I
    :cond_1
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_2

    .line 1475
    const/4 v0, 0x1

    .restart local v0       #callheld:I
    goto :goto_0

    .line 1478
    .end local v0           #callheld:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #callheld:I
    goto :goto_0
.end method

.method private declared-synchronized getCindTestResult()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 1564
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CIND: (\"service\",(0-1)),(\"call\",(0-1)),(\"callsetup\",(0-3)),(\"callheld\",(0-2)),(\"signal\",(0-5)),(\"roam\",(0-1)),(\"battchg\",(0-5))"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 5
    .parameter "signalStrength"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 874
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 875
    .local v0, asu:I
    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    const/4 v1, 0x5

    .line 880
    :cond_0
    :goto_0
    return v1

    .line 876
    :cond_1
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 877
    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 878
    :cond_2
    if-lt v0, v2, :cond_3

    move v1, v2

    goto :goto_0

    .line 879
    :cond_3
    if-lt v0, v3, :cond_4

    move v1, v3

    goto :goto_0

    .line 880
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V
    .locals 25
    .parameter "sendUpdate"
    .parameter "connection"

    .prologue
    .line 1135
    monitor-enter p0

    const/4 v6, 0x0

    .line 1136
    .local v6, call:I
    const/4 v9, 0x0

    .line 1137
    .local v9, callsetup:I
    const/4 v7, 0x0

    .line 1138
    .local v7, callheld:I
    :try_start_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1139
    .local v15, prevCallsetup:I
    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1147
    .local v17, result:Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1148
    .local v11, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1149
    .local v4, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    .line 1151
    .local v18, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v21, "updatePhoneState()"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1154
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v13

    .line 1167
    .local v13, newState:Lcom/android/internal/telephony/Phone$State;
    const-string v21, "PhoneState: mPhoneState = %d, newState = %d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v24, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v24 .. v24}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v21

    move-object/from16 v0, v21

    if-eq v13, v0, :cond_1

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0, v13}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;

    .line 1172
    sget-object v21, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1184
    :cond_1
    :goto_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    .line 1185
    .local v12, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v21, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_1

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1227
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    .line 1228
    .local v19, ringingCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v21, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_2

    .line 1244
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1245
    .local v5, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v21, Lcom/android/phone/BluetoothHandsfree$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_3

    .line 1265
    :goto_3
    :pswitch_0
    const-string v21, "CallState: foregroundCallState = %d, backgroundCallState = %d, ringingCallState = %d"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v6, :cond_3

    .line 1270
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_2

    .line 1273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1276
    :cond_2
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1277
    if-eqz p1, :cond_3

    .line 1278
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "+CIEV: 2,"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1281
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v9, :cond_6

    .line 1282
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1283
    if-eqz p1, :cond_5

    .line 1295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1297
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "+CIEV: 3,"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1305
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpConnected()Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v21

    if-eqz v21, :cond_6

    if-eqz p1, :cond_6

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1309
    const-string v21, "suspending A2DP stream for incoming call after HFP SLC connection"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v22

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1316
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 1317
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 1318
    .local v3, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1319
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    .line 1321
    .local v10, currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v16

    .line 1324
    .local v16, prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CDMA call state: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " prev state:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1326
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I

    move-result v7

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-eq v0, v10, :cond_9

    .line 1334
    sget-object v21, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_8

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1338
    if-eqz p1, :cond_7

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v21

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_7

    .line 1340
    const-string v21, "+CIEV: 3,2"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1342
    const-string v21, "+CIEV: 4,1"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1343
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1344
    const-string v21, "+CIEV: 3,3"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1345
    const-string v21, "+CIEV: 3,0"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1352
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1360
    :cond_8
    sget-object v21, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_9

    sget-object v21, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1365
    if-eqz p1, :cond_9

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v21

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_9

    .line 1367
    const-string v21, "+CIEV: 2,1"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1368
    const-string v21, "+CIEV: 3,0"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1373
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v10, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 1379
    .end local v3           #app:Lcom/android/phone/PhoneApp;
    .end local v10           #currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v16           #prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v8

    .line 1390
    .local v8, callsSwitched:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v7, :cond_b

    if-eqz v8, :cond_c

    .line 1391
    :cond_b
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1392
    if-eqz p1, :cond_c

    .line 1393
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "+CIEV: 4,"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1397
    :cond_c
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_11

    if-eq v9, v15, :cond_11

    .line 1399
    const/4 v14, 0x0

    .line 1400
    .local v14, number:Ljava/lang/String;
    const/16 v20, 0x80

    .line 1402
    .local v20, type:I
    if-nez p2, :cond_d

    .line 1403
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p2

    .line 1404
    if-nez p2, :cond_d

    .line 1405
    const-string v21, "Could not get a handle on Connection object for new incoming call"

    #calls: Lcom/android/phone/BluetoothHandsfree;->logErr(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$900(Ljava/lang/String;)V

    .line 1409
    :cond_d
    if-eqz p2, :cond_e

    .line 1410
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 1411
    if-eqz v14, :cond_e

    .line 1412
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v20

    .line 1415
    :cond_e
    if-nez v14, :cond_f

    .line 1416
    const-string v14, ""

    .line 1418
    :cond_f
    if-nez v6, :cond_10

    if-eqz v7, :cond_18

    :cond_10
    if-eqz p1, :cond_18

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v21

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_11

    .line 1421
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "+CCWA: \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1422
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "+CIEV: 3,"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1440
    .end local v14           #number:Ljava/lang/String;
    .end local v20           #type:I
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v22

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1447
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_13

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v21

    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v21, v0

    if-nez v21, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v21, v0

    if-nez v21, :cond_13

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1453
    const-string v21, "resuming A2DP stream after call setup failure"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1456
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$2002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    :cond_13
    monitor-exit p0

    return-void

    .line 1174
    .end local v5           #backgroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v8           #callsSwitched:Z
    .end local v12           #foregroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v19           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1135
    .end local v4           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v11           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v13           #newState:Lcom/android/internal/telephony/Phone$State;
    .end local v15           #prevCallsetup:I
    .end local v17           #result:Landroid/bluetooth/AtCommandResult;
    .end local v18           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 1188
    .restart local v4       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v11       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v12       #foregroundCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v13       #newState:Lcom/android/internal/telephony/Phone$State;
    .restart local v15       #prevCallsetup:I
    .restart local v17       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v18       #ringingCall:Lcom/android/internal/telephony/Call;
    :pswitch_2
    :try_start_2
    const-string v21, "Forground call active"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1189
    const/4 v6, 0x1

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    .line 1193
    :pswitch_3
    const-string v21, "Forground call dialing"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1194
    const/4 v9, 0x2

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1205
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    goto/16 :goto_1

    .line 1208
    :pswitch_4
    const-string v21, "Forground call alerting"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1209
    const/4 v9, 0x3

    .line 1211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    .line 1218
    :pswitch_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1219
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1220
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1221
    goto/16 :goto_1

    .line 1232
    .restart local v19       #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :pswitch_6
    const/4 v9, 0x1

    .line 1233
    goto/16 :goto_2

    .line 1237
    :pswitch_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1238
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1239
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    goto/16 :goto_2

    .line 1248
    .restart local v5       #backgroundCallState:Lcom/android/internal/telephony/Call$State;
    :pswitch_8
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_15

    .line 1249
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 1251
    :cond_15
    const/4 v6, 0x1

    .line 1252
    const/4 v7, 0x2

    .line 1254
    goto/16 :goto_3

    .line 1258
    :pswitch_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1259
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1260
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    goto/16 :goto_3

    .line 1383
    :cond_16
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_17

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v23 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-eqz v21, :cond_17

    const/4 v8, 0x1

    .line 1386
    .restart local v8       #callsSwitched:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v22

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v21 .. v23}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;J)J

    goto/16 :goto_4

    .line 1383
    .end local v8           #callsSwitched:Z
    :cond_17
    const/4 v8, 0x0

    goto :goto_6

    .line 1426
    .restart local v8       #callsSwitched:Z
    .restart local v14       #number:Ljava/lang/String;
    .restart local v20       #type:I
    :cond_18
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    .line 1427
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    .line 1428
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 1429
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v21

    and-int/lit8 v21, v21, 0x8

    if-eqz v21, :cond_11

    .line 1432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1185
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1228
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1245
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private declared-synchronized ignoreRing()V
    .locals 3

    .prologue
    .line 1570
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 1572
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CIEV: 3,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    :cond_0
    monitor-exit p0

    return-void

    .line 1570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerPhoneEvents(Z)V
    .locals 4
    .parameter "register"

    .prologue
    const/4 v3, 0x0

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerPhoneEvents("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1579
    if-eqz p1, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1605
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1607
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1609
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1646
    :goto_0
    return-void

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1637
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1638
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1639
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private restrictDualTalkStatus(Z)V
    .locals 18
    .parameter "mIsNewHFPConnection"

    .prologue
    .line 1661
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "restrictDualTalkStatus("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1662
    new-instance v11, Landroid/bluetooth/AtCommandResult;

    const/4 v14, 0x2

    invoke-direct {v11, v14}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1663
    .local v11, result:Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1664
    .local v4, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1665
    .local v1, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 1666
    .local v12, ringingCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v13

    .line 1667
    .local v13, ringingCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 1668
    .local v2, backgroundCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v7, 0x0

    .line 1669
    .local v7, hasOutgoingCall:Z
    const/4 v8, 0x0

    .line 1670
    .local v8, hasRingingCall:Z
    const/4 v6, 0x0

    .line 1673
    .local v6, hasHoldingCall:Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v14, v15, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_1

    .line 1674
    :cond_0
    const/4 v7, 0x1

    .line 1677
    :cond_1
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v14, v15, :cond_2

    .line 1678
    const/4 v8, 0x1

    .line 1681
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_3

    .line 1682
    const/4 v6, 0x1

    .line 1685
    :cond_3
    if-eqz v8, :cond_b

    .line 1686
    if-eqz v7, :cond_6

    .line 1687
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    if-lez v14, :cond_4

    if-nez p1, :cond_4

    .line 1688
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1689
    const-string v14, "+CIEV: 3,0"

    invoke-virtual {v11, v14}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v11}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1694
    :cond_4
    :try_start_0
    const-string v14, "hangup outgoing call when (I, O)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/CallManager;->hangupActiveCall(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    :cond_5
    :goto_0
    return-void

    .line 1696
    :catch_0
    move-exception v3

    .line 1697
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    const-string v14, "mCM.hangupActiveCall failed"

    #calls: Lcom/android/phone/BluetoothHandsfree;->logErr(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$900(Ljava/lang/String;)V

    goto :goto_0

    .line 1702
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_6
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Call;

    .line 1703
    .local v10, rCall:Lcom/android/internal/telephony/Call;
    if-eq v10, v12, :cond_7

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v14, v15, :cond_7

    .line 1704
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_9

    .line 1706
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    if-eqz v14, :cond_8

    .line 1708
    const-string v14, "hangup background incoming call when (I, I)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v14}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1713
    :cond_8
    const-string v14, "fail to hangup background incoming call when (I, I), mDualTalk == null"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 1717
    :cond_9
    const-string v14, "hangup new incoming call when (I, I)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v14

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_a

    .line 1721
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1725
    :cond_a
    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1733
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #rCall:Lcom/android/internal/telephony/Call;
    :cond_b
    if-eqz v6, :cond_5

    .line 1734
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 1735
    .local v5, hCall:Lcom/android/internal/telephony/Call;
    if-eq v5, v1, :cond_c

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_c

    .line 1737
    const-string v14, "hangup hold call which hold first when (H, H)"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v14

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_d

    .line 1741
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 1745
    :cond_d
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0
.end method

.method private ring()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 1485
    const-string v1, "[API] ring"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1486
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendRingUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1487
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1488
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    const-string v1, "RING"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1489
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendClipUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CLIP: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1498
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scoClosed()V
    .locals 7

    .prologue
    .line 1650
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1651
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    .line 1653
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1654
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1656
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit v2

    .line 1657
    return-void

    .line 1656
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendClipUpdate()Z
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mClip:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendRingUpdate()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 856
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 858
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 859
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 863
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 859
    goto :goto_0

    :cond_2
    move v0, v1

    .line 863
    goto :goto_0
.end method

.method private sendUpdate()Z
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private signalToRssi(I)I
    .locals 1
    .parameter "signal"

    .prologue
    const/4 v0, 0x0

    .line 957
    packed-switch p1, :pswitch_data_0

    .line 965
    :goto_0
    :pswitch_0
    return v0

    .line 959
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 960
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 961
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 962
    :pswitch_4
    const/16 v0, 0x13

    goto :goto_0

    .line 963
    :pswitch_5
    const/16 v0, 0x1f

    goto :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private stopRing()V
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 868
    return-void
.end method

.method private declared-synchronized toCindResult()Landroid/bluetooth/AtCommandResult;
    .locals 7

    .prologue
    .line 1513
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1518
    .local v2, result:Landroid/bluetooth/AtCommandResult;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1519
    const/4 v0, 0x1

    .line 1520
    .local v0, call:I
    const/4 v1, 0x0

    .line 1531
    .local v1, call_setup:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpConnected()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1533
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1535
    const-string v4, "suspending A2DP stream for incoming call before HFP SLC connection"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1536
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$2002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1541
    :cond_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v4

    iput v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1545
    .local v3, status:Ljava/lang/String;
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-nez v4, :cond_1

    .line 1546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[toCindResult] mService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSignal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1551
    :cond_1
    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1552
    monitor-exit p0

    return-object v2

    .line 1523
    .end local v0           #call:I
    .end local v1           #call_setup:I
    .end local v3           #status:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1524
    .restart local v0       #call:I
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #call_setup:I
    goto/16 :goto_0

    .line 1513
    .end local v0           #call:I
    .end local v1           #call_setup:I
    .end local v2           #result:Landroid/bluetooth/AtCommandResult;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized toCregString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1502
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CREG: 1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized toCsqResult()Landroid/bluetooth/AtCommandResult;
    .locals 4

    .prologue
    .line 1556
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1557
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CSQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",99"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1558
    .local v1, status:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    monitor-exit p0

    return-object v0

    .line 1556
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #status:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateBatteryState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 1051
    monitor-enter p0

    :try_start_0
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1052
    .local v0, batteryLevel:I
    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1053
    .local v1, scale:I
    const-string v2, "[API] updateBatteryState"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 1064
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1057
    :cond_1
    mul-int/lit8 v2, v0, 0x5

    :try_start_1
    div-int v0, v2, v1

    .line 1058
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    if-eq v2, v0, :cond_0

    .line 1059
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 1060
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 7,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1051
    .end local v0           #batteryLevel:I
    .end local v1           #scale:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 1

    .prologue
    .line 838
    const-string v0, "updateBtPhoneStateAfterRadioTechnologyChange..."

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 840
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->registerPhoneEvents(Z)V

    .line 842
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->registerPhoneEvents(Z)V

    .line 843
    return-void
.end method

.method private declared-synchronized updateCallHeld()V
    .locals 2

    .prologue
    .line 1506
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    if-eqz v0, :cond_0

    .line 1507
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1508
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CIEV: 4,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    :cond_0
    monitor-exit p0

    return-void

    .line 1506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateServiceState(ZLandroid/telephony/ServiceState;)V
    .locals 7
    .parameter "sendUpdate"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1091
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_4

    move v2, v4

    .line 1092
    .local v2, service:I
    :goto_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 1094
    .local v1, roam:I
    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1095
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v5, p2}, Lcom/android/phone/BluetoothHandsfree;->access$1602(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 1096
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[API] updateServiceState service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mService="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", roam="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRoam="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1098
    if-nez v2, :cond_5

    .line 1099
    const/4 v3, 0x0

    .line 1104
    .local v3, stat:I
    :goto_1
    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-eq v2, v5, :cond_1

    .line 1105
    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    .line 1106
    if-eqz p1, :cond_1

    .line 1107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CIEV: 1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1109
    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-ne v4, v5, :cond_1

    .line 1110
    const-string v4, "[API] updateServiceState service change from 0 -> 1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[API] updateServiceState mService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSignal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 5,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1117
    :cond_1
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    if-eq v1, v4, :cond_2

    .line 1118
    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    .line 1119
    if-eqz p1, :cond_2

    .line 1120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 6,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1123
    :cond_2
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    if-eq v3, v4, :cond_3

    .line 1124
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    .line 1125
    if-eqz p1, :cond_3

    .line 1126
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1130
    :cond_3
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    monitor-exit p0

    return-void

    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    .end local v3           #stat:I
    :cond_4
    move v2, v1

    .line 1091
    goto/16 :goto_0

    .line 1101
    .restart local v0       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v1       #roam:I
    .restart local v2       #service:I
    :cond_5
    if-ne v1, v4, :cond_6

    const/4 v3, 0x5

    .restart local v3       #stat:I
    :goto_2
    goto/16 :goto_1

    .end local v3           #stat:I
    :cond_6
    move v3, v4

    goto :goto_2

    .line 1091
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized updateSignalState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1088
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1073
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 1075
    .local v1, signalStrength:Landroid/telephony/SignalStrength;
    const-string v2, "[API] updateSignalState"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 1076
    if-eqz v1, :cond_2

    .line 1077
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 1078
    .local v0, signal:I
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    .line 1079
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    if-eq v0, v2, :cond_0

    .line 1080
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1081
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 5,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1069
    .end local v0           #signal:I
    .end local v1           #signalStrength:Landroid/telephony/SignalStrength;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1086
    .restart local v1       #signalStrength:Landroid/telephony/SignalStrength;
    :cond_2
    :try_start_2
    const-string v2, "Signal Strength null"

    #calls: Lcom/android/phone/BluetoothHandsfree;->logErr(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$900(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
