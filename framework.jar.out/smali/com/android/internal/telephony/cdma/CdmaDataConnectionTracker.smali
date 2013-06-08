.class public final Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "CdmaDataConnectionTracker.java"


# static fields
.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final DATA_CONNECTION_POOL_SIZE:I = 0x1

.field private static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-data-stall"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-reconnect"

.field private static final TIME_DELAYED_TO_RESTART_RADIO:I

.field private static final mDefaultApnId:I

.field private static final mDefaultApnTypes:[Ljava/lang/String;

.field private static final mSupportedApnTypes:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDunApnTypes:[Ljava/lang/String;

.field private mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

.field private mPendingRestartRadio:Z

.field private mPollNetStat:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const-string/jumbo v0, "ro.cdma.timetoradiorestart"

    const v1, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v2

    const-string/jumbo v1, "mms"

    aput-object v1, v0, v3

    const-string v1, "dun"

    aput-object v1, v0, v4

    const-string v1, "hipri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .line 98
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v2

    const-string/jumbo v1, "mms"

    aput-object v1, v0, v3

    const-string v1, "hipri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDefaultApnTypes:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 60
    const-string v4, "CDMA"

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 68
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 103
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "dun"

    aput-object v5, v4, v8

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDunApnTypes:[Ljava/lang/String;

    .line 442
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 114
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v5, 0x42001

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 115
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v5, 0x42006

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const v5, 0x42002

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 117
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v5, 0x42004

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v5, 0x42008

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v5, 0x42007

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v5, 0x42003

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v5, 0x42014

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v5, 0x4200b

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v5, 0x4200c

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v5, 0x42019

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v6, 0x42015

    invoke-static {v4, v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 128
    iput-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllDataConnectionList()V

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastMessenger()V

    .line 133
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, c:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, t:[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v3, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 139
    const-string v4, "dun"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const-string v4, "dun"

    invoke-virtual {v3, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 144
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDunApnTypes:[Ljava/lang/String;

    .line 147
    .end local v1           #i:I
    .end local v3           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mTxPkts:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRxPkts:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mTxPkts:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$2508(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$3002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRxPkts:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollPeriod:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mTxPkts:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRxPkts:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$914(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method private cleanUpConnection(ZLjava/lang/String;Z)V
    .locals 9
    .parameter "tearDown"
    .parameter "reason"
    .parameter "doAll"

    .prologue
    const v8, 0x4200f

    const/4 v7, 0x0

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 313
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 314
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 316
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 317
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 320
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 321
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 323
    const/4 v4, 0x0

    .line 324
    .local v4, notificationDeferred:Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 325
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v1, :cond_1

    .line 326
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 328
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_3

    .line 329
    if-eqz p3, :cond_2

    .line 330
    const-string v5, "cleanUpConnection: teardown, conn.tearDownAll"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {p0, v8, v5, v7, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 338
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 334
    :cond_2
    const-string v5, "cleanUpConnection: teardown, conn.tearDown"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {p0, v8, v5, v7, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 340
    :cond_3
    const-string v5, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 341
    if-eqz v2, :cond_4

    .line 342
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 344
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 349
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 351
    if-nez v4, :cond_6

    .line 352
    const-string v5, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 355
    :cond_6
    return-void
.end method

.method private createAllDataConnectionList()V
    .locals 10

    .prologue
    .line 825
    const-string/jumbo v7, "ro.cdma.data_retry_config"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, retryConfig:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x1

    if-ge v2, v7, :cond_2

    .line 827
    new-instance v5, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v5}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 828
    .local v5, rm:Lcom/android/internal/telephony/RetryManager;
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 829
    const-string v7, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 831
    const-string v7, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 833
    const/16 v7, 0x14

    const/16 v8, 0x7d0

    const/16 v9, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 837
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 838
    .local v3, id:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v7, v3, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->makeDataConnection(Lcom/android/internal/telephony/cdma/CDMAPhone;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 839
    .local v0, dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v7, "CDMA"

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 841
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v7, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v6

    .line 842
    .local v6, status:I
    if-nez v6, :cond_1

    .line 843
    const-string v7, "Fully connected"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 844
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 846
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not connect to dcac.dataConnection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 851
    .end local v0           #dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #id:I
    .end local v5           #rm:Lcom/android/internal/telephony/RetryManager;
    .end local v6           #status:I
    :cond_2
    return-void
.end method

.method private destroyAllDataConnectionList()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 857
    :cond_0
    return-void
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 3

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 359
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    const-string v2, "found free GsmDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 361
    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 365
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 364
    :cond_1
    const-string v2, "NO free CdmaDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 365
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 402
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 406
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    .line 588
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method private onCdmaDataDetached()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 860
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 862
    const-string v1, "cdmaDataDetached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 875
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_1

    .line 865
    const-string v1, "cdmaDataDetached"

    invoke-direct {p0, v4, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 866
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 868
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 869
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3be

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 873
    .end local v0           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    const-string v1, "cdmaDataDetached"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 869
    .restart local v0       #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 878
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 880
    .local v0, otaPrivision:[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 881
    aget v1, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 891
    .end local v0           #otaPrivision:[I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 884
    .restart local v0       #otaPrivision:[I
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_0

    .line 881
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRestartRadio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 894
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v0, :cond_0

    .line 895
    const-string v0, "************TURN OFF RADIO**************"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 904
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 906
    :cond_0
    return-void
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V
    .locals 4
    .parameter "lastFailCauseCode"
    .parameter "reason"
    .parameter "retryOverride"

    .prologue
    const/4 v3, 0x0

    .line 548
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_1

    .line 555
    move v0, p3

    .line 556
    .local v0, nextReconnectDelay:I
    if-gez v0, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 560
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILjava/lang/String;)V

    .line 562
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 563
    const-string v1, "NOT Posting Data Connection Unavailable notification -- likely transient error"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 569
    .end local v0           #nextReconnectDelay:I
    :cond_1
    :goto_0
    return-void

    .line 566
    .restart local v0       #nextReconnectDelay:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_0
.end method

.method private resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 409
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mTxPkts:J

    .line 410
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRxPkts:J

    .line 411
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSentSinceLastRecv:J

    .line 412
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollPeriod:I

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    .line 414
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 539
    const/4 v0, 0x1

    .line 541
    .local v0, retry:Z
    const-string/jumbo v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 544
    :cond_0
    return v0
.end method

.method private setupData(Ljava/lang/String;)Z
    .locals 22
    .parameter "reason"

    .prologue
    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v20

    .line 371
    .local v20, conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-nez v20, :cond_0

    .line 372
    const-string/jumbo v2, "setupData: No free CdmaDataConnection found!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 373
    const/4 v2, 0x0

    .line 398
    :goto_0
    return v2

    .line 377
    :cond_0
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v4, "dun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDunApnTypes:[Ljava/lang/String;

    .line 382
    .local v15, types:[Ljava/lang/String;
    const/4 v3, 0x3

    .line 387
    .local v3, apnId:I
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x0

    const-string v16, "IP"

    const-string v17, "IP"

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call conn.bringUp mActiveApn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v21

    .line 392
    .local v21, msg:Landroid/os/Message;
    const v2, 0x42000

    move-object/from16 v0, v21

    iput v2, v0, Landroid/os/Message;->what:I

    .line 393
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 396
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 397
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 398
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 384
    .end local v3           #apnId:I
    .end local v15           #types:[Ljava/lang/String;
    .end local v21           #msg:Landroid/os/Message;
    :cond_1
    sget-object v15, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .line 385
    .restart local v15       #types:[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #apnId:I
    goto :goto_1
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 528
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAlarmForReconnect(ILjava/lang/String;)V
    .locals 7
    .parameter "delay"
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Connection activate failed. Scheduling next attempt for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p1, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 578
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma-reconnect"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v2, "reconnect_alarm_extra_reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 582
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 585
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V
    .locals 0
    .parameter "cause"
    .parameter "reason"
    .parameter "retryOverride"

    .prologue
    .line 974
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 975
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V

    .line 976
    return-void
.end method

.method private trySetupData(Ljava/lang/String;)Z
    .locals 6
    .parameter "reason"

    .prologue
    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***trySetupData due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_0

    const-string v4, "(unspecified)"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 280
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 284
    const-string v4, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 285
    const/4 v2, 0x1

    .line 299
    :goto_1
    return v2

    :cond_0
    move-object v4, p1

    .line 275
    goto :goto_0

    .line 288
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    .line 289
    .local v1, psState:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    .line 290
    .local v3, roaming:Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 292
    .local v0, desiredPowerState:Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isEmergency()Z

    move-result v4

    if-nez v4, :cond_3

    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupData(Ljava/lang/String;)Z

    move-result v2

    .line 295
    .local v2, retValue:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_1

    .line 298
    .end local v2           #retValue:Z
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private writeEventLogCdmaDataDrop()V
    .locals 5

    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 910
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3bf

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 913
    return-void

    .line 910
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public checkSameOrSupportedApnTypeDisabling(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1066
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->destroyAllDataConnectionList()V

    .line 170
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1030
    const-string v0, "CdmaDataConnectionTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/DataConnectionTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingDataConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRestartRadio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportedApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDunApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDunApnTypes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    const-string v0, " mDefaultApnId=0"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 174
    const-string v0, "CdmaDataConnectionTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected getActionIntentDataStallAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "com.android.internal.telephony.cdma-data-stall"

    return-object v0
.end method

.method protected getActionIntentReconnectAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "com.android.internal.telephony.cdma-reconnect"

    return-object v0
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    return-object v0
.end method

.method protected getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getActiveApnString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "type"

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 594
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 595
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 597
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaDCT handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsDisposed:Z

    if-eqz v0, :cond_2

    .line 983
    :cond_0
    const-string v0, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1021
    :cond_1
    :goto_0
    return-void

    .line 987
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1018
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 989
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 993
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 995
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onNVReady()V

    goto :goto_0

    .line 1000
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaDataDetached()V

    goto :goto_0

    .line 1004
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1008
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1012
    :sswitch_5
    const-string v0, "EVENT_RESTART_RADIO"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1013
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    goto :goto_0

    .line 987
    nop

    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42004 -> :sswitch_3
        0x42014 -> :sswitch_2
        0x42015 -> :sswitch_1
        0x42019 -> :sswitch_4
        0x4201a -> :sswitch_5
    .end sparse-switch
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 207
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 208
    .local v3, s:Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    const/4 v4, 0x1

    .line 212
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 207
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected isDataAllowed()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 218
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v9

    .line 219
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInternalDataEnabled:Z

    .line 220
    .local v2, internalDataEnabled:Z
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v3

    .line 223
    .local v3, psState:I
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v9

    if-nez v9, :cond_d

    move v5, v7

    .line 224
    .local v5, roaming:Z
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 225
    .local v1, desiredPowerState:Z
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v9

    if-ne v9, v7, :cond_e

    move v6, v7

    .line 228
    .local v6, subscriptionFromNv:Z
    :goto_1
    if-eqz v3, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAutoAttachOnCreation:Z

    if-eqz v9, :cond_f

    :cond_0
    if-nez v6, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_f

    :cond_2
    if-nez v5, :cond_f

    if-eqz v2, :cond_f

    if-eqz v1, :cond_f

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v9

    if-eq v9, v7, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v9

    if-nez v9, :cond_f

    :cond_3
    move v0, v7

    .line 241
    .local v0, allowed:Z
    :goto_2
    if-nez v0, :cond_c

    .line 242
    const-string v4, ""

    .line 243
    .local v4, reason:Ljava/lang/String;
    if-eqz v3, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mAutoAttachOnCreation:Z

    if-nez v7, :cond_4

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - psState= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    :cond_4
    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v7

    if-nez v7, :cond_5

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - RUIM not loaded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v7, v8, :cond_6

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - concurrentVoiceAndData not allowed and state= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    :cond_6
    if-eqz v5, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Roaming"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    :cond_7
    if-nez v2, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - mInternalDataEnabled= false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    :cond_8
    if-nez v1, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - desiredPowerState= false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    :cond_9
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - mPendingRestartRadio= true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 258
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - needs Provisioning"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data not allowed due to"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 261
    .end local v4           #reason:Ljava/lang/String;
    :cond_c
    return v0

    .line 220
    .end local v0           #allowed:Z
    .end local v1           #desiredPowerState:Z
    .end local v2           #internalDataEnabled:Z
    .end local v3           #psState:I
    .end local v5           #roaming:Z
    .end local v6           #subscriptionFromNv:Z
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v2       #internalDataEnabled:Z
    .restart local v3       #psState:I
    :cond_d
    move v5, v8

    .line 223
    goto/16 :goto_0

    .restart local v1       #desiredPowerState:Z
    .restart local v5       #roaming:Z
    :cond_e
    move v6, v8

    .line 225
    goto/16 :goto_1

    .restart local v6       #subscriptionFromNv:Z
    :cond_f
    move v0, v8

    .line 228
    goto/16 :goto_2
.end method

.method protected isDataPossible(Ljava/lang/String;)Z
    .locals 3
    .parameter "apnType"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 268
    .local v0, possible:Z
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data not possible.  No coverage: dataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 271
    :cond_1
    return v0

    .line 266
    .end local v0           #possible:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordsLoaded()Z
    .locals 1

    .prologue
    .line 1045
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecordsLoaded:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1082
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1089
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1113
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1097
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1105
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return-void
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 819
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 820
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 1
    .parameter "tearDown"
    .parameter "apnId"
    .parameter "reason"

    .prologue
    .line 813
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 814
    return-void

    .line 813
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 714
    .local v1, reason:Ljava/lang/String;
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 715
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1           #reason:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 718
    .restart local v1       #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 720
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V

    .line 742
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 723
    .local v0, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Connection setup failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 727
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_0

    .line 731
    :cond_2
    const/4 v2, -0x1

    .line 732
    .local v2, retryOverride:I
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    if-eqz v3, :cond_3

    .line 733
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection$CallSetupException;->getRetryOverride()I

    move-result v2

    .line 736
    :cond_3
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4

    .line 737
    const-string v3, "No retry is suggested."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 739
    :cond_4
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    .line 916
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 918
    .local v1, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 971
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_4

    .line 926
    const/4 v3, 0x0

    .line 927
    .local v3, isActiveOrDormantConnectionPresent:Z
    const/4 v0, 0x0

    .line 931
    .local v0, connectionState:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 932
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataCallState;

    iget v0, v4, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 933
    if-eqz v0, :cond_2

    .line 934
    const/4 v3, 0x1

    .line 939
    :cond_1
    if-nez v3, :cond_3

    .line 941
    const-string/jumbo v4, "onDataStateChanged: No active connectionstate is CONNECTED, disconnecting/cleanup"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 943
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->writeEventLogCdmaDataDrop()V

    .line 944
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 931
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 948
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 964
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDataStateChanged: IGNORE unexpected DataCallState.active="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :pswitch_0
    const-string/jumbo v4, "onDataStateChanged: active=LINK_ACTIVE && CONNECTED, ignore"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 951
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 952
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 953
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 957
    :pswitch_1
    const-string/jumbo v4, "onDataStateChanged active=LINK_DOWN && CONNECTED, dormant"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 958
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 959
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 960
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    goto :goto_0

    .line 969
    .end local v0           #connectionState:I
    .end local v2           #index:I
    .end local v3           #isActiveOrDormantConnectionPresent:Z
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDataStateChanged: not connected, state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 4
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_DISCONNECT_DONE connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, reason:Ljava/lang/String;
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 752
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 754
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 758
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v2, :cond_1

    const v2, 0x4201a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeMessages(I)V

    .line 762
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 763
    .local v1, ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 764
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 769
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 770
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 771
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 773
    sget v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILjava/lang/String;)V

    .line 775
    :cond_2
    return-void

    .line 766
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    goto :goto_0
.end method

.method protected onEnableNewApn(I)V
    .locals 3
    .parameter "apnID"

    .prologue
    .line 623
    const/4 v0, 0x1

    const-string v1, "apnSwitched"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 624
    return-void
.end method

.method protected onNVReady()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 613
    :cond_0
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 614
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 679
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 681
    const-string v0, "We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 684
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    .line 687
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 689
    :cond_1
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 706
    :goto_0
    return-void

    .line 703
    :cond_0
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 704
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordsLoaded()V
    .locals 2

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecordsLoaded:Z

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 606
    :cond_0
    const v0, 0x42003

    const-string/jumbo v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 607
    return-void
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 651
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    const-string/jumbo v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 647
    const-string/jumbo v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 649
    :cond_1
    const-string/jumbo v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 668
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    const-string/jumbo v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 662
    const-string/jumbo v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_1
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 666
    const-string/jumbo v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 797
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 802
    :goto_0
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 808
    :goto_1
    return-void

    .line 800
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->resetPollStats()V

    goto :goto_0

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 806
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method protected onVoiceCallStarted()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 784
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 785
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 787
    :cond_0
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method protected restartRadio()V
    .locals 3

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup connection and wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s to restart radio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 438
    const v0, 0x4201a

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 440
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, p1, :cond_0

    .line 194
    const v0, 0xc3c3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 196
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 198
    :cond_0
    return-void
.end method

.method public setWaitingSetupMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1078
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 419
    const-string v0, "[DataConnection] Start poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->resetPollStats()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 424
    :cond_0
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNetStatPollEnabled:Z

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    const-string v0, "[DataConnection] Stop poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 431
    return-void
.end method
