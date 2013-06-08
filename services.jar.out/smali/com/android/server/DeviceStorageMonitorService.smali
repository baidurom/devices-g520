.class public Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "/cache"

.field private static final CRITICAL_LOW_THRESHOLD_BYTES:I = 0x400000

.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:I = 0x100000

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:I = 0x3200000

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field private static final DEVICE_MEMORY_CRITICAL_LOW:I = 0x2

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final EMAIL_CHECK_SIZE:I = 0x3200000

.field private static final EXCEPTION_LOW_THRESHOLD_BYTES:I = 0xa00000

.field private static final FULL_THRESHOLD_BYTES:I = 0x500000

.field private static final IPO_POWER_ON:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final LOW_THRESHOLD_BYTES:I = 0xa00000

.field private static final MONITOR_INTERVAL:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private final mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private mCacheFileStats:Landroid/os/StatFs;

.field private mCacheSize:J

.field private mCheckAppSize:Z

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mCodeSize:J

.field private mConfigChanged:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDataSize:J

.field private mDialog:Landroid/app/AlertDialog;

.field private mFreeMem:J

.field private mGetSize:Z

.field mHandler:Landroid/os/Handler;

.field private mIPOBootup:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mMemFullFlag:Z

.field private mMemFullThreshold:I

.field private mMemLowThreshold:J

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageNotFullIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mStrings:[Ljava/lang/String;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalMemory:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x800

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 454
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 95
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 105
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 106
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 118
    iput-object v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    .line 125
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z

    .line 130
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 131
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J

    .line 132
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J

    .line 133
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J

    .line 134
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J

    .line 135
    iput-object v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;

    .line 136
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    .line 148
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 393
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 620
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$3;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 455
    iput-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 456
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 457
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    .line 459
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 460
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/system"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 461
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/cache"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 463
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    .line 465
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 468
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 470
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 471
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 472
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 475
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 485
    const/high16 v1, 0x50

    iput v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    .line 487
    invoke-direct {p0, v7}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 489
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 490
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 491
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/DeviceStorageMonitorService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/DeviceStorageMonitorService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/DeviceStorageMonitorService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceStorageMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/DeviceStorageMonitorService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/DeviceStorageMonitorService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/DeviceStorageMonitorService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method private final cancelFullNotification()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 559
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 560
    return-void
.end method

.method private final cancelNotification()V
    .locals 3

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 537
    .local v0, mNotificationMgr:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 539
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 540
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 541
    return-void
.end method

.method private final checkMemory(Z)V
    .locals 9
    .parameter "checkCache"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 315
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v3, :cond_1

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v3, v5

    .line 320
    .local v0, diffTime:J
    const-wide/32 v3, 0x927c0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 321
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Thread that clears cache file seems to run for ever"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v0           #diffTime:J
    :cond_0
    :goto_0
    const-wide/16 v3, 0x7530

    invoke-direct {p0, v8, v3, v4}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 390
    return-void

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    .line 329
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    .line 331
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    if-eqz v3, :cond_2

    .line 332
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 333
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 334
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.android.email"

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 336
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v3, :cond_3

    .line 337
    if-eqz p1, :cond_5

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 343
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 344
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    .line 364
    :cond_3
    :goto_1
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 365
    const-string v3, "DeviceStorageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running on storage full,freeStorage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v3, :cond_4

    .line 367
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFullNotification()V

    .line 368
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 378
    :cond_4
    :goto_2
    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v5, 0x400000

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 379
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "now device into < 4M storage"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    if-eqz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 346
    :cond_5
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Running low on memory. Sending notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    .line 348
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 356
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v3, :cond_3

    .line 357
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckAppSize:Z

    .line 358
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z

    .line 359
    const-string v3, "DeviceStorageMonitorService"

    const-string v4, "Memory available. Cancelling notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    .line 361
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 371
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v3, :cond_4

    .line 372
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 373
    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_2
.end method

.method private final clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 292
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 296
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "CLEARCACHE"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 303
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private getMemFullThreshold()I
    .locals 4

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sys_storage_full_threshold_bytes"

    const/high16 v3, 0x10

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 447
    .local v0, value:I
    return v0
.end method

.method private getMemThreshold()J
    .locals 7

    .prologue
    .line 420
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_percentage"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    .line 426
    .local v2, value:J
    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    mul-long/2addr v2, v4

    .line 427
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "sys_storage_threshold_max_bytes"

    const/high16 v6, 0x320

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v0, v4

    .line 432
    .local v0, maxValue:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .end local v2           #value:J
    :goto_0
    return-wide v2

    .restart local v2       #value:J
    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method private postCheckMemoryMsg(ZJ)V
    .locals 5
    .parameter "clearCache"
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 409
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 413
    return-void

    :cond_0
    move v0, v2

    .line 410
    goto :goto_0
.end method

.method private final restatDataDir()V
    .locals 20

    .prologue
    .line 237
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    const-string v16, "/data"

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 244
    :goto_0
    const-string v15, "debug.freemem"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, debugFreeMem:Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 246
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "sys_free_storage_log_interval"

    const-wide/16 v17, 0x2d0

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v15

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v7, v15, v17

    .line 253
    .local v7, freeMemLogInterval:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 254
    .local v2, currTime:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    sub-long v15, v2, v15

    cmp-long v15, v15, v7

    if-ltz v15, :cond_2

    .line 256
    :cond_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 257
    const-wide/16 v11, -0x1

    .local v11, mFreeSystem:J
    const-wide/16 v9, -0x1

    .line 259
    .local v9, mFreeCache:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    const-string v16, "/system"

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v11, v15, v17

    .line 266
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    const-string v16, "/cache"

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v9, v15, v17

    .line 272
    :goto_2
    const/16 v15, 0xaba

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 276
    .end local v9           #mFreeCache:J
    .end local v11           #mFreeSystem:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "disk_free_change_reporting_threshold"

    const-wide/32 v17, 0x200000

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 280
    .local v13, threshold:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v17, v0

    sub-long v5, v15, v17

    .line 281
    .local v5, delta:J
    cmp-long v15, v5, v13

    if-gtz v15, :cond_3

    neg-long v15, v13

    cmp-long v15, v5, v15

    if-gez v15, :cond_4

    .line 282
    :cond_3
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 283
    const/16 v15, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 285
    :cond_4
    return-void

    .line 269
    .end local v5           #delta:J
    .end local v13           #threshold:J
    .restart local v9       #mFreeCache:J
    .restart local v11       #mFreeSystem:J
    :catch_0
    move-exception v15

    goto :goto_2

    .line 262
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .line 240
    .end local v2           #currTime:J
    .end local v4           #debugFreeMem:Ljava/lang/String;
    .end local v7           #freeMemLogInterval:J
    .end local v9           #mFreeCache:J
    .end local v11           #mFreeSystem:J
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method private final sendFullNotification()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 550
    return-void
.end method

.method private final sendNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 503
    const/16 v6, 0xab9

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v6, v7, v8}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 505
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_0
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v2, lowMemIntent:Landroid/content/Intent;
    const-string v6, "memory"

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 509
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 510
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 513
    .local v3, mNotificationMgr:Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v7, 0x10403c5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 515
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v7, 0x10403c6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 517
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 518
    .local v1, intent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 519
    .local v4, notification:Landroid/app/Notification;
    const v6, 0x1080507

    iput v6, v4, Landroid/app/Notification;->icon:I

    .line 520
    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 521
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 522
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v5, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 523
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 524
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 525
    return-void

    .line 505
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #intent:Landroid/app/PendingIntent;
    .end local v2           #lowMemIntent:Landroid/content/Intent;
    .end local v3           #mNotificationMgr:Landroid/app/NotificationManager;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_0
    const-string v6, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto :goto_0
.end method


# virtual methods
.method public getMemoryLowThreshold()J
    .locals 2

    .prologue
    .line 578
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryCriticalLow()Z
    .locals 4

    .prologue
    .line 609
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 610
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "Return the MemoryCriticalLow flag true"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemoryLow()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return v0
.end method

.method public updateMemory()V
    .locals 4

    .prologue
    .line 563
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    .line 564
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 568
    :cond_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0
.end method
