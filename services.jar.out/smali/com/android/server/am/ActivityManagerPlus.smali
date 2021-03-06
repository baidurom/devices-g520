.class public final Lcom/android/server/am/ActivityManagerPlus;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"


# static fields
.field static final BOOST_DOWNLOADING_ADJ:I = 0x7

.field private static final DEBUG_OOM:Z = false

.field private static final DEBUG_OOM_BOOST:Z = false

.field static final OTHER_SERVER_ADJ:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ActivityManagerPlus"

.field static final THIRD_PARTY_HIGHEST_SERVER_ADJ:I = 0x6

.field static final THIRD_PARTY_SERVER_ADJ:I = 0x7

.field static final mInHouseAppWhiteList:[Ljava/lang/String;

.field public static final mProcessList:[Ljava/lang/String;

.field static final mThirdPartyAppWhiteList:[Ljava/lang/String;

.field private static view:Landroid/view/View;


# instance fields
.field final mBoostDownloadingAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field private mHasInHouseWL:Z

.field private mHasThirdPartyWL:Z

.field private mOomAdjEnabled:Z

.field final mProcessWL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mTarget:Lcom/android/server/am/ActivityRecord;

.field private mThirdParyAppWinner:Ljava/lang/String;

.field private mThirdParyAppWinnerTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.aol.mobile.aim"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v4

    const-string v1, "cn.com.fetion7"

    aput-object v1, v0, v5

    const-string v1, "com.fring"

    aput-object v1, v0, v6

    const-string v1, "android.process.hiyahoo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.process.msn.service"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.nimbuzz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mobi.qiss.plurq"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.tencent.qq"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.renren.mobile.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.kaixin001.activity"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.ebuddy.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mThirdPartyAppWhiteList:[Ljava/lang/String;

    .line 151
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.music"

    aput-object v1, v0, v3

    const-string v1, "android.process.media"

    aput-object v1, v0, v4

    const-string v1, "com.mediatek.FMRadio:remote"

    aput-object v1, v0, v5

    const-string v1, "com.mediatek.apst.target"

    aput-object v1, v0, v6

    const-string v1, "android.process.acore"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mInHouseAppWhiteList:[Ljava/lang/String;

    .line 162
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "system"

    aput-object v1, v0, v3

    const-string v1, "com.mediatek.bluetooth"

    aput-object v1, v0, v4

    const-string v1, "android.process.acore"

    aput-object v1, v0, v5

    const-string v1, "com.android.phone"

    aput-object v1, v0, v6

    const-string v1, "com.mediatek.engineermode"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.mediatek.mobilelog"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 10
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "AMPlus"

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    .line 88
    iput-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;

    .line 93
    iput-boolean v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 98
    iput-boolean v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 103
    iput-boolean v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 108
    iput-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 113
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    .line 174
    const-string v4, "ActivityManagerPlus"

    const-string v5, "start ActivityManagerPlus"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 178
    iput-boolean v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 179
    iput-boolean v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 180
    iput-boolean v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 181
    const-string v4, "ActivityManagerPlus"

    const-string v5, "support wl!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 183
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    .line 185
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPlus;->startHandler()V

    .line 187
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    sget-object v4, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    const-string v4, "persist.ipo.shutdown.process.wl"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, processList:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 195
    const-string v4, "ActivityManagerPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process whitelist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v4, "/"

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v2, v5}, Lcom/android/server/am/ActivityManagerPlus;->parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 199
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    .local v3, target:Ljava/lang/String;
    const-string v4, "ActivityManagerPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    .end local v3           #target:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "split"
    .parameter "strings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, str:[Ljava/lang/String;
    array-length v1, v2

    .line 348
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 349
    aget-object v3, v2, v0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public IPOBootCompletedLocked()V
    .locals 2

    .prologue
    .line 457
    const-string v0, "ActivityManagerPlus"

    const-string v1, "IPOBootCompletedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    const-string v0, "ActivityManagerPlus"

    const-string v1, "sys.boot_completed is not set"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v0, "sys.boot_completed"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->sendFullBootCompletedIntentLocked()V

    .line 517
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ActivityManagerPlus$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerPlus$2;-><init>(Lcom/android/server/am/ActivityManagerPlus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setBootingVal(Z)V
    .locals 1
    .parameter "val"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 522
    return-void
.end method

.method final startHandler()V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v0, itFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.intent.action.black.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 232
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "ActivityManagerPlus"

    const-string v2, "startHandler!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/ActivityManagerPlus$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityManagerPlus$1;-><init>(Lcom/android/server/am/ActivityManagerPlus;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    return-void
.end method

.method public updateOomAdjPlus(Lcom/android/server/am/ProcessRecord;)I
    .locals 12
    .parameter "app"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x7

    .line 384
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    if-nez v9, :cond_0

    .line 385
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 453
    :goto_0
    return v6

    .line 388
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 389
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 391
    .local v1, boostApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 392
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v7, v6, :cond_2

    .line 393
    iput v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 396
    :cond_2
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 403
    .end local v1           #boostApp:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget v9, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_b

    .line 406
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    if-eqz v9, :cond_5

    .line 407
    sget-object v0, Lcom/android/server/am/ActivityManagerPlus;->mInHouseAppWhiteList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v3, v0, v2

    .line 409
    .local v3, inHouseApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 410
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 407
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 414
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #inHouseApp:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_5
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    if-eqz v9, :cond_a

    .line 416
    sget-object v0, Lcom/android/server/am/ActivityManagerPlus;->mThirdPartyAppWhiteList:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v4, :cond_a

    aget-object v5, v0, v2

    .line 418
    .local v5, thirdPartyApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 423
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 424
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 425
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    .line 440
    :goto_3
    iput v7, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move v6, v7

    .line 441
    goto :goto_0

    .line 427
    :cond_6
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 429
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    goto :goto_3

    .line 430
    :cond_7
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iget-wide v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 432
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 433
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    goto :goto_3

    .line 436
    :cond_8
    iput v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto/16 :goto_0

    .line 416
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 448
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #thirdPartyApp:Ljava/lang/String;
    :cond_a
    iput v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move v6, v8

    .line 449
    goto/16 :goto_0

    .line 453
    :cond_b
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto/16 :goto_0
.end method

.method public updateRegisterReceivers(Ljava/util/List;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    const/4 v3, 0x0

    .line 356
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    const-string v5, "_mode"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 360
    const-string v5, "ActivityManagerPlus"

    const-string v6, "normal shutdown"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    return-void

    .line 364
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 365
    .local v3, size:I
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 366
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 367
    .local v0, curr:Lcom/android/server/am/BroadcastFilter;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 368
    .local v4, target:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 369
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 370
    add-int/lit8 v3, v3, -0x1

    .line 371
    add-int/lit8 v1, v1, -0x1

    .line 365
    .end local v4           #target:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
