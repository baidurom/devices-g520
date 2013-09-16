.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$QuickbootBroadcastReceiver;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final FLAG_MTKDU:I = 0x2

.field private static final FLAG_NORMAL:I = 0x1

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_REGISTER_GLOBAL_ALERT:I = 0x3

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field public static final USE_TRUESTED_TIME:Z


# instance fields
.field entryForUsedByte:Landroid/net/NetworkStats$Entry;

.field entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

.field private mActiveIface:Ljava/lang/String;

.field private mActiveIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIfacesForMtkDu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mAlarmManager:Landroid/app/IAlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDataActivedSimId:J

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mDevStatsCached:Lcom/android/server/net/NetworkStatsCollection;

.field private mGlobalAlertBytes:J

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLastPhoneNetworkType:I

.field private mLastPhoneState:I

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mQbReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId1:J

.field private mSimId2:J

.field private mSimIdCount:I

.field private final mStatsLock:Ljava/lang/Object;

.field private final mSystemDir:Ljava/io/File;

.field private mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    .locals 7
    .parameter "context"
    .parameter "networkManager"
    .parameter "alarmManager"

    .prologue
    .line 292
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v4

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v6, p1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V
    .locals 6
    .parameter "context"
    .parameter "networkManager"
    .parameter "alarmManager"
    .parameter "time"
    .parameter "systemDir"
    .parameter "settings"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 302
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 204
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    .line 205
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    .line 253
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 256
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    .line 258
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfacesForMtkDu:Ljava/util/HashMap;

    .line 262
    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 264
    new-instance v1, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    .line 278
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 281
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 287
    const-wide/32 v1, 0x200000

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 818
    new-instance v1, Lcom/android/server/net/NetworkStatsService$QuickbootBroadcastReceiver;
    
    invoke-direct {v1, p0, v5}, Lcom/android/server/net/NetworkStatsService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V
    
    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mQbReceiver:Landroid/content/BroadcastReceiver;
    
    new-instance v1, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 830
    new-instance v1, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 840
    new-instance v1, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 852
    new-instance v1, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 869
    new-instance v1, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 882
    new-instance v1, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 901
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    .line 902
    iput v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    .line 908
    new-instance v1, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 1349
    new-instance v1, Lcom/android/server/net/NetworkStatsService$9;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$9;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 303
    const-string v1, "missing Context"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 304
    const-string v1, "missing INetworkManagementService"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 305
    const-string v1, "missing IAlarmManager"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IAlarmManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    .line 306
    const-string v1, "missing TrustedTime"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TrustedTime;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    .line 307
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string v2, "missing TelephonyManager"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 308
    const-string v1, "missing NetworkStatsSettings"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 310
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 312
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 314
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetworkStats"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 315
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 316
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 318
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    .line 319
    new-instance v1, Ljava/io/File;

    const-string v2, "netstats"

    invoke-direct {v1, p5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    .line 320
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 321
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidLocked(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkStatsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/net/NetworkStatsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkStatsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/net/NetworkStatsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$301(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->qbShutdownLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsService;->internalSetUsedByte(Landroid/net/NetworkTemplate;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method private assertBandwidthControlEnabled()V
    .locals 2

    .prologue
    .line 1374
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bandwidth module disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1377
    :cond_0
    return-void
.end method

.method private bootstrapStatsLocked()V
    .locals 15

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1050
    .local v3, currentTime:J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v13

    .line 1051
    .local v13, uidSnapshot:Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v14

    .line 1052
    .local v14, xtSnapshot:Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v1

    .line 1054
    .local v1, devSnapshot:Landroid/net/NetworkStats;
    const-string v0, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bootstrapStatsLocked() entryForUsedByteUid +"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const-string v0, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bootstrapStatsLocked() entryForUsedByte +"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v13, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1058
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v14, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1059
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1063
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V

    .line 1064
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-wide v10, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-object v6, v14

    move-wide v8, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V

    .line 1065
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-wide v10, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-object v6, v13

    move-wide v8, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V

    .line 1066
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    iget-wide v10, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-object v6, v13

    move-wide v8, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1074
    .end local v1           #devSnapshot:Landroid/net/NetworkStats;
    .end local v13           #uidSnapshot:Landroid/net/NetworkStats;
    .end local v14           #xtSnapshot:Landroid/net/NetworkStats;
    :goto_0
    return-void

    .line 1069
    :catch_0
    move-exception v12

    .line 1070
    .local v12, e:Ljava/lang/IllegalStateException;
    const-string v0, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem reading network stats: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1071
    .end local v12           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 11
    .parameter "prefix"
    .parameter "config"
    .parameter "includeTags"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/DropBoxManager;

    .line 430
    .local v9, dropBox:Landroid/os/DropBoxManager;
    new-instance v10, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v0, Lcom/android/internal/util/FileRotator;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    iget-wide v3, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v5, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v1, v10

    move-object v2, v0

    move-object v4, v9

    move-object v5, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v10
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 297
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1332
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v1

    .line 1333
    .local v1, tetheredIfacePairs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering([Ljava/lang/String;)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1345
    .end local v1           #tetheredIfacePairs:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1334
    :catch_0
    move-exception v0

    .line 1343
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "NetworkStats"

    const-string v3, "problem reading network stats"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    new-instance v2, Landroid/net/NetworkStats;

    const-wide/16 v3, 0x0

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_0
.end method

.method private getNetworkStatsUidDetail()Landroid/net/NetworkStats;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1316
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1319
    .local v1, uidSnapshot:Landroid/net/NetworkStats;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v0

    .line 1320
    .local v0, tetherSnapshot:Landroid/net/NetworkStats;
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1321
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1323
    return-object v1
.end method

.method private initActiveInterface(Ljava/lang/String;)I
    .locals 9
    .parameter "subId"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1585
    const-string v3, "NetworkStats"

    const-string v4, "initActiveInterface() in "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const-string v7, "ccmni0"

    .line 1588
    .local v7, iface:Ljava/lang/String;
    new-instance v1, Landroid/net/NetworkInfo;

    const-string v3, "MOBILE"

    const-string v4, ""

    invoke-direct {v1, v8, v8, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1589
    .local v1, netinfo:Landroid/net/NetworkInfo;
    new-instance v0, Landroid/net/NetworkState;

    const-string v5, ""

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .local v0, state:Landroid/net/NetworkState;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfacesForMtkDu:Ljava/util/HashMap;

    const-string v3, "ccmni0"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/net/NetworkIdentitySet;

    .line 1608
    .local v6, ident2:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v6, :cond_0

    .line 1609
    const-string v2, "NetworkStats"

    const-string v3, "initActiveInterface new netIdent Daua Usage Enhancement for:ccmni0"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    new-instance v6, Lcom/android/server/net/NetworkIdentitySet;

    .end local v6           #ident2:Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v6}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1611
    .restart local v6       #ident2:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfacesForMtkDu:Ljava/util/HashMap;

    const-string v3, "ccmni0"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1615
    const-string v2, "NetworkStats"

    const-string v3, "initActiveInterface() out"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    return v8
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 14
    .parameter "template"
    .parameter "fields"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getReportXtOverDev()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, p1

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v13

    .line 672
    :goto_0
    return-object v13

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getFirstAtomicBucketMillis()J

    move-result-wide v8

    .line 666
    .local v8, firstAtomicBucket:J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-wide/high16 v6, -0x8000

    move-object v1, p1

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v12

    .line 668
    .local v12, dev:Landroid/net/NetworkStatsHistory;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-wide v10, 0x7fffffffffffffffL

    move-object v3, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v13

    .line 671
    .local v13, xt:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v13, v12}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getReportXtOverDev()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v9

    .line 650
    :goto_0
    return-object v9

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getFirstAtomicBucketMillis()J

    move-result-wide v7

    .line 644
    .local v7, firstAtomicBucket:J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {p4, p5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 646
    .local v6, dev:Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {p4, p5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v9

    .line 649
    .local v9, xt:Landroid/net/NetworkStats;
    invoke-virtual {v9, v6}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    goto :goto_0
.end method

.method private internalSetUsedByte(Landroid/net/NetworkTemplate;J)V
    .locals 27
    .parameter "template"
    .parameter "bytes"

    .prologue
    .line 1534
    const-string v4, "NetworkStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "internalSetUsedByte template: "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, " bytes="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v17

    .line 1538
    .local v17, policyManager:Landroid/net/NetworkPolicyManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v4}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1541
    .local v10, currentTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getSimId()J

    move-result-wide v23

    move-object/from16 v0, v17

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->getNetworkPolicyBySimId(J)Landroid/net/NetworkPolicy;

    move-result-object v16

    .line 1543
    .local v16, policy:Landroid/net/NetworkPolicy;
    if-nez v16, :cond_1

    .line 1544
    const-string v4, "NetworkStats"

    const-string v9, "internalSetUsedByte no policy return"

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :goto_0
    return-void

    .line 1548
    :cond_1
    move-object/from16 v0, v16

    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v5

    .line 1549
    .local v5, start:J
    move-wide v7, v10

    .local v7, end:J
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1550
    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v19

    .line 1552
    .local v19, totalBytes:J
    sub-long v12, p2, v19

    .line 1554
    .local v12, delta:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v23, v0

    add-long v23, v23, v12

    move-wide/from16 v0, v23

    iput-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    iput-wide v0, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1558
    const/16 v18, 0x0

    .line 1560
    .local v18, stats:Landroid/net/NetworkStats;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    .line 1561
    .local v3, mStatsSession:Landroid/net/INetworkStatsSession;
    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 1567
    .end local v3           #mStatsSession:Landroid/net/INetworkStatsSession;
    :goto_1
    if-nez v18, :cond_3

    const-wide/16 v21, 0x0

    .line 1568
    .local v21, totalBytesUid:J
    :goto_2
    sub-long v14, p2, v21

    .line 1570
    .local v14, deltaUid:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v23, v0

    add-long v23, v23, v14

    move-wide/from16 v0, v23

    iput-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    iput-wide v0, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1573
    const-string v4, "NetworkStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "internalSetUsedByte start="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, " end="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, " before total="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, " delta="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const-string v4, "NetworkStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "internalSetUsedByte start="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, " end="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, " before totaluid="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v23, " deltaUid="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->updateSimListInfo()V

    .line 1578
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkStatsService;->initActiveInterface(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1579
    const-string v4, "NetworkStats"

    const-string v9, "internalSetUsedByte initActiveInterface failed"

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_2
    const/16 v4, 0x100

    const/4 v9, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(II)V

    goto/16 :goto_0

    .line 1567
    .end local v14           #deltaUid:J
    .end local v21           #totalBytesUid:J
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v21

    goto/16 :goto_2

    .line 1563
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1382
    .local v1, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1387
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1385
    return v3

    .line 1383
    :catch_0
    move-exception v0

    .line 1385
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0

    .line 1387
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .locals 4

    .prologue
    .line 482
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string v3, "netstats.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 483
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    .line 485
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 488
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string v3, "netstats_xt.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 489
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 493
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string v3, "netstats_uid.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 494
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 496
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 497
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v1           #file:Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Ljava/io/IOException;
    const-string v2, "NetworkStats"

    const-string v3, "problem during legacy upgrade"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private performPoll(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1078
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1082
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1087
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1089
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1091
    monitor-exit v1

    .line 1092
    return-void

    .line 1089
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 1091
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private performPollLocked(II)V
    .locals 24
    .parameter "flags"
    .parameter "usecase"

    .prologue
    .line 1099
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1100
    :cond_0
    const-string v1, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performPollLocked(flags=0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "usecase="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 1104
    .local v19, startRealtime:J
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    const/16 v17, 0x1

    .line 1105
    .local v17, persistNetwork:Z
    :goto_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    const/16 v18, 0x1

    .line 1106
    .local v18, persistUid:Z
    :goto_2
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    const/16 v16, 0x1

    .line 1110
    .local v16, persistForce:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v1}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1116
    .local v4, currentTime:J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v21

    .line 1117
    .local v21, uidSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v23

    .line 1118
    .local v23, xtSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v2

    .line 1120
    .local v2, devSnapshot:Landroid/net/NetworkStats;
    const-string v1, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performPollLocked() entryForUsedByteUid +"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string v1, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performPollLocked() entryForUsedByte +"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v2, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1129
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    .line 1130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-object/from16 v7, v23

    move-wide v9, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-object/from16 v7, v21

    move-wide v9, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-object/from16 v7, v21

    move-wide v9, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1152
    :goto_4
    if-eqz v16, :cond_7

    .line 1153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1169
    :cond_2
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v6, v19

    .line 1170
    .local v13, duration:J
    const-string v1, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performPollLocked() took "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    new-instance v22, Landroid/content/Intent;

    const-string v1, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v22, updatedIntent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1104
    .end local v2           #devSnapshot:Landroid/net/NetworkStats;
    .end local v4           #currentTime:J
    .end local v13           #duration:J
    .end local v16           #persistForce:Z
    .end local v17           #persistNetwork:Z
    .end local v18           #persistUid:Z
    .end local v21           #uidSnapshot:Landroid/net/NetworkStats;
    .end local v22           #updatedIntent:Landroid/content/Intent;
    .end local v23           #xtSnapshot:Landroid/net/NetworkStats;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1105
    .restart local v17       #persistNetwork:Z
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1106
    .restart local v18       #persistUid:Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1135
    .restart local v2       #devSnapshot:Landroid/net/NetworkStats;
    .restart local v4       #currentTime:J
    .restart local v16       #persistForce:Z
    .restart local v21       #uidSnapshot:Landroid/net/NetworkStats;
    .restart local v23       #xtSnapshot:Landroid/net/NetworkStats;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfacesForMtkDu:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfacesForMtkDu:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-object/from16 v7, v23

    move-wide v9, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfacesForMtkDu:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-object/from16 v7, v21

    move-wide v9, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfacesForMtkDu:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    move-object/from16 v7, v21

    move-wide v9, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;JJ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 1142
    .end local v2           #devSnapshot:Landroid/net/NetworkStats;
    .end local v21           #uidSnapshot:Landroid/net/NetworkStats;
    .end local v23           #xtSnapshot:Landroid/net/NetworkStats;
    :catch_0
    move-exception v15

    .line 1144
    .local v15, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem reading network stats:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1146
    .end local v15           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v15

    .line 1148
    .local v15, e:Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 1158
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local v2       #devSnapshot:Landroid/net/NetworkStats;
    .restart local v21       #uidSnapshot:Landroid/net/NetworkStats;
    .restart local v23       #xtSnapshot:Landroid/net/NetworkStats;
    :cond_7
    if-eqz v17, :cond_8

    .line 1159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1162
    :cond_8
    if-eqz v18, :cond_2

    .line 1163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    goto/16 :goto_5
.end method

.method private performSampleLocked()V
    .locals 32

    .prologue
    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    const-wide/16 v26, -0x1

    .line 1202
    .local v26, trustedTime:J
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1203
    .local v29, template:Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1204
    .local v28, devTotal:Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1205
    .local v31, xtTotal:Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1207
    .local v30, uidTotal:Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    .line 1214
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1219
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    .line 1224
    return-void
.end method

.method private qbShutdownLocked()V
    .locals 3

    .prologue
    .line 353
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 356
    .local v0, currentTime:J
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 359
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 360
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 361
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 363
    :cond_0
    return-void

    .line 353
    .end local v0           #currentTime:J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private registerGlobalAlert()V
    .locals 4

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem registering for global alert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private registerPollAlarmLocked()V
    .locals 7

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 519
    .local v2, currentRealtime:J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/IAlarmManager;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v2           #currentRealtime:J
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private registerQbReceiver()V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, qbFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mQbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    return-void
.end method

.method private removeUidLocked(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 1231
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(II)V

    .line 1233
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidLocked(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidLocked(I)V

    .line 1237
    invoke-static {p1}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1238
    return-void
.end method

.method private shutdownLocked()V
    .locals 3

    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 456
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 457
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 458
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 459
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 477
    return-void
.end method

.method private updateIfaces()V
    .locals 3

    .prologue
    .line 931
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 932
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 935
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 939
    monitor-exit v1

    .line 940
    return-void

    .line 937
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 939
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private updateIfacesLocked()V
    .locals 15

    .prologue
    .line 949
    iget-boolean v12, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v12, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    const-string v12, "NetworkStats"

    const-string v13, "updateIfacesLocked()"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v12, 0x2

    new-array v7, v12, [Ljava/lang/String;

    .line 961
    .local v7, ifaces:[Ljava/lang/String;
    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(II)V

    .line 963
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateSimListInfo()V

    .line 968
    :try_start_0
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v12}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v11

    .line 969
    .local v11, states:[Landroid/net/NetworkState;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v12}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 975
    .local v0, activeLink:Landroid/net/LinkProperties;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    :goto_1
    iput-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    .line 978
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 980
    move-object v1, v11

    .local v1, arr$:[Landroid/net/NetworkState;
    array-length v8, v1

    .local v8, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v8, :cond_0

    aget-object v10, v1, v3

    .line 982
    .local v10, state:Landroid/net/NetworkState;
    iget-object v12, v10, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    .line 983
    .local v9, netType:I
    iget-object v12, v10, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 985
    iget-object v12, v10, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    .line 987
    .local v6, iface:Ljava/lang/String;
    const-string v12, "NetworkStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is connected"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkIdentitySet;

    .line 1010
    .local v4, ident:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v4, :cond_2

    .line 1011
    const-string v12, "NetworkStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new netIdent for:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    new-instance v4, Lcom/android/server/net/NetworkIdentitySet;

    .end local v4           #ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v4}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1013
    .restart local v4       #ident:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    invoke-virtual {v12, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :cond_2
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v12, v10}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfacesForMtkDu:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkIdentitySet;

    .line 1018
    .local v5, ident2:Lcom/android/server/net/NetworkIdentitySet;
    if-nez v5, :cond_3

    .line 1019
    const-string v12, "NetworkStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new netIdent MTK Daua Usage for:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    new-instance v5, Lcom/android/server/net/NetworkIdentitySet;

    .end local v5           #ident2:Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v5}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1021
    .restart local v5       #ident2:Lcom/android/server/net/NetworkIdentitySet;
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfacesForMtkDu:Ljava/util/HashMap;

    invoke-virtual {v12, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    :cond_3
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v12, v10}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1029
    iget-object v12, v10, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-static {v12}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1030
    iget-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v12, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1031
    const-class v12, Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    invoke-static {v12, v13, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    iput-object v12, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 980
    .end local v4           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v5           #ident2:Lcom/android/server/net/NetworkIdentitySet;
    .end local v6           #iface:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 970
    .end local v0           #activeLink:Landroid/net/LinkProperties;
    .end local v1           #arr$:[Landroid/net/NetworkState;
    .end local v3           #i$:I
    .end local v8           #len$:I
    .end local v9           #netType:I
    .end local v10           #state:Landroid/net/NetworkState;
    .end local v11           #states:[Landroid/net/NetworkState;
    :catch_0
    move-exception v2

    .line 972
    .local v2, e:Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 975
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #activeLink:Landroid/net/LinkProperties;
    .restart local v11       #states:[Landroid/net/NetworkState;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private updatePersistThresholds()V
    .locals 4

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 807
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 808
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 809
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 810
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    .line 811
    return-void
.end method

.method private updateSimListInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1496
    iput v8, p0, Lcom/android/server/net/NetworkStatsService;->mSimIdCount:I

    .line 1497
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1500
    .local v2, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    .line 1502
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 1503
    .local v1, info:Landroid/provider/Telephony$SIMInfo;
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v3, :cond_2

    .line 1504
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/provider/Telephony$SIMInfo;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimId1:J

    .line 1507
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v3

    if-ne v3, v7, :cond_0

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimId1:J

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    .line 1508
    :cond_0
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimListInfo: Slot GEMINI_SIM_1 insert Active ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1526
    :cond_1
    :goto_1
    iget v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimIdCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimIdCount:I

    goto :goto_0

    .line 1516
    :cond_2
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v3, v7, :cond_1

    .line 1517
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Landroid/provider/Telephony$SIMInfo;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimId2:J

    .line 1520
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v3

    if-ne v3, v7, :cond_3

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mSimId2:J

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    .line 1521
    :cond_3
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimListInfo: Slot GEMINI_SIM_2 insert Active ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1522
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1528
    .end local v1           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimListInfo - DataActivedSimId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsService;->mDataActivedSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    return-void

    .line 1511
    .restart local v1       #info:Landroid/provider/Telephony$SIMInfo;
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .locals 8
    .parameter "thresholdBytes"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 775
    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 777
    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advisePersistThreshold() given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clamped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 785
    .local v6, currentTime:J
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v0, :cond_1

    monitor-exit v1

    .line 798
    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    .line 790
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 791
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 792
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 793
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 794
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "connManager"

    .prologue
    .line 324
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 325
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "android.permission.DUMP"

    const-string v19, "NetworkStats"

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1245
    .local v4, argSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v5, p3

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v14, :cond_0

    aget-object v3, v5, v9

    .line 1246
    .local v3, arg:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1245
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1250
    .end local v3           #arg:Ljava/lang/String;
    :cond_0
    const-string v17, "--poll"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "poll"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_1
    const/4 v15, 0x1

    .line 1251
    .local v15, poll:Z
    :goto_1
    const-string v17, "--checkin"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 1252
    .local v6, checkin:Z
    const-string v17, "--full"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "full"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_2
    const/4 v8, 0x1

    .line 1253
    .local v8, fullHistory:Z
    :goto_2
    const-string v17, "--uid"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "detail"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_3
    const/4 v13, 0x1

    .line 1254
    .local v13, includeUid:Z
    :goto_3
    const-string v17, "--tag"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "detail"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_4
    const/4 v12, 0x1

    .line 1256
    .local v12, includeTag:Z
    :goto_4
    new-instance v16, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v17, "  "

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1258
    .local v16, pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1259
    if-eqz v15, :cond_9

    .line 1260
    const/16 v17, 0x103

    const/16 v19, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(II)V

    .line 1261
    const-string v17, "Forced poll"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    monitor-exit v18

    .line 1309
    .end local v9           #i$:I
    :goto_5
    return-void

    .line 1250
    .end local v6           #checkin:Z
    .end local v8           #fullHistory:Z
    .end local v12           #includeTag:Z
    .end local v13           #includeUid:Z
    .end local v15           #poll:Z
    .end local v16           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9       #i$:I
    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    .line 1252
    .restart local v6       #checkin:Z
    .restart local v15       #poll:Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 1253
    .restart local v8       #fullHistory:Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 1254
    .restart local v13       #includeUid:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 1265
    .restart local v12       #includeTag:Z
    .restart local v16       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :cond_9
    if-eqz v6, :cond_b

    .line 1267
    const-string v17, "Current files:"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v14, v5

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v14, :cond_a

    aget-object v7, v5, v9

    .line 1270
    .local v7, file:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1272
    .end local v7           #file:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1273
    monitor-exit v18

    goto :goto_5

    .line 1308
    .end local v9           #i$:I
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 1276
    .restart local v9       #i$:I
    :cond_b
    :try_start_1
    const-string v17, "Active interfaces:"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1279
    .local v11, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkIdentitySet;

    .line 1280
    .local v10, ident:Lcom/android/server/net/NetworkIdentitySet;
    const-string v17, "iface="

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1281
    const-string v17, " ident="

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 1283
    .end local v10           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v11           #iface:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1285
    const-string v17, "Dev stats:"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1288
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1290
    const-string v17, "Xt stats:"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1293
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1295
    if-eqz v13, :cond_d

    .line 1296
    const-string v17, "UID stats:"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1299
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1302
    :cond_d
    if-eqz v12, :cond_e

    .line 1303
    const-string v17, "UID tag stats:"

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1306
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1308
    :cond_e
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5
.end method

.method public forceUpdate()V
    .locals 5

    .prologue
    .line 758
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 761
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 763
    .local v0, token:J
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 767
    return-void

    .line 765
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 9
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 685
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    const-string v8, "NetworkStats"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 694
    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 696
    .local v3, networkLayer:Landroid/net/NetworkStats;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v3, v6}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 702
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 705
    .local v0, dataLayer:Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 706
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 707
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 708
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 709
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    .end local v0           #dataLayer:Landroid/net/NetworkStats;
    .end local v1           #entry:Landroid/net/NetworkStats$Entry;
    .end local v2           #i:I
    .end local v3           #networkLayer:Landroid/net/NetworkStats;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 712
    .restart local v0       #dataLayer:Landroid/net/NetworkStats;
    .restart local v1       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v2       #i:I
    .restart local v3       #networkLayer:Landroid/net/NetworkStats;
    :cond_1
    return-object v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 3
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 679
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementOperationCount(III)V
    .locals 17
    .parameter "uid"
    .parameter "tag"
    .parameter "operationCount"

    .prologue
    .line 722
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v0, p1

    if-eq v1, v0, :cond_0

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_0
    if-gez p3, :cond_1

    .line 727
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "operation count can only be incremented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :cond_1
    if-nez p2, :cond_2

    .line 730
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "operation count must have specific tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 733
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 734
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 735
    .local v4, set:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v0, p3

    int-to-long v14, v0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 737
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v0, p3

    int-to-long v14, v0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 739
    monitor-exit v16

    .line 740
    return-void

    .line 739
    .end local v4           #set:I
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 549
    new-instance v0, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    return-object v0
.end method

.method public setUidForeground(IZ)V
    .locals 5
    .parameter "uid"
    .parameter "uidForeground"

    .prologue
    const/4 v1, 0x0

    .line 744
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 747
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 748
    .local v1, set:I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 749
    .local v0, oldSet:I
    if-eq v0, v1, :cond_1

    .line 750
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 751
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 753
    :cond_1
    monitor-exit v3

    .line 754
    return-void

    .line 753
    .end local v0           #oldSet:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public systemReady()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 328
    iput-boolean v11, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 330
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 331
    const-string v5, "NetworkStats"

    const-string v6, "bandwidth controls disabled, unable to track stats"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-void

    .line 336
    :cond_0
    const-string v5, "dev"

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v6

    invoke-direct {p0, v5, v6, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 337
    const-string v5, "xt"

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v6

    invoke-direct {p0, v5, v6, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 338
    const-string v5, "uid"

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v6

    invoke-direct {p0, v5, v6, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 339
    const-string v5, "uid_tag"

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v6

    invoke-direct {p0, v5, v6, v11}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 342
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    .line 344
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    const-string v6, "ccmni0"

    iput-object v6, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 345
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    iput v9, v5, Landroid/net/NetworkStats$Entry;->tag:I

    .line 346
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    const/4 v6, -0x7

    iput v6, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 347
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    iput v9, v5, Landroid/net/NetworkStats$Entry;->set:I

    .line 348
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    iput-wide v7, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 349
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    iput-wide v7, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 350
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    iput-wide v7, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 351
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByteUid:Landroid/net/NetworkStats$Entry;

    iput-wide v7, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 353
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    .line 355
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    const-string v6, "ccmni0"

    iput-object v6, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 356
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    iput v10, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 357
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    iput v10, v5, Landroid/net/NetworkStats$Entry;->set:I

    .line 358
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    iput v9, v5, Landroid/net/NetworkStats$Entry;->tag:I

    .line 359
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    iput-wide v7, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 360
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    iput-wide v7, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 361
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    iput-wide v7, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 362
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->entryForUsedByte:Landroid/net/NetworkStats$Entry;

    iput-wide v7, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 364
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    .line 366
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 368
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    .line 372
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mDevStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 373
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 376
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V

    .line 377
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, connFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 384
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 385
    .local v4, tetherFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 388
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, pollFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 392
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 393
    .local v2, removedFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 396
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 398
    .local v3, shutdownFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerQbReceiver()V
    
    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    :goto_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 423
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    goto/16 :goto_0

    .line 377
    .end local v0           #connFilter:Landroid/content/IntentFilter;
    .end local v1           #pollFilter:Landroid/content/IntentFilter;
    .end local v2           #removedFilter:Landroid/content/IntentFilter;
    .end local v3           #shutdownFilter:Landroid/content/IntentFilter;
    .end local v4           #tetherFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 412
    .restart local v0       #connFilter:Landroid/content/IntentFilter;
    .restart local v1       #pollFilter:Landroid/content/IntentFilter;
    .restart local v2       #removedFilter:Landroid/content/IntentFilter;
    .restart local v3       #shutdownFilter:Landroid/content/IntentFilter;
    .restart local v4       #tetherFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
