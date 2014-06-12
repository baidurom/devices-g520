.class public Lcom/android/camera/manager/RemainingManager;
.super Lcom/android/camera/manager/ViewManager;
.source "RemainingManager.java"

# interfaces
.implements Lcom/android/camera/Camera$Resumable;
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;
.implements Lcom/android/camera/Camera$OnParametersReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/RemainingManager$Holder;,
        Lcom/android/camera/manager/RemainingManager$WorkerHandler;
    }
.end annotation


# static fields
.field private static final DELAY_MSG_MS:I = 0x5dc

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final MATRIX_REMAINING_TYPE:[I = null

.field private static final MSG_UPDATE_STORAGE:I = 0x0

.field private static final REMAIND_THRESHOLD:Ljava/lang/Long; = null

.field private static final TAG:Ljava/lang/String; = "RemainingManager"

.field private static final TYPE_COUNT:I = 0x0

.field private static final TYPE_TIME:I = 0x1


# instance fields
.field private mAvaliableSpace:Ljava/lang/Long;

.field private mMainHandler:Landroid/os/Handler;

.field private mParametersReady:Z

.field private mRemainingText:Ljava/lang/String;

.field private mRemainingView:Landroid/widget/TextView;

.field private mResumed:Z

.field private mStorageHint:Lcom/android/camera/manager/OnScreenHint;

.field private mType:I

.field private mWorkerHandler:Lcom/android/camera/manager/RemainingManager$WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    .line 30
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera/manager/RemainingManager;->REMAIND_THRESHOLD:Ljava/lang/Long;

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    .line 34
    sget-object v0, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    aput v2, v0, v2

    .line 35
    sget-object v0, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    aput v2, v0, v3

    .line 36
    sget-object v0, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 37
    sget-object v0, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 38
    sget-object v0, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 39
    sget-object v0, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 40
    sget-object v0, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 41
    sget-object v0, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 47
    iput v1, p0, Lcom/android/camera/manager/RemainingManager;->mType:I

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mMainHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addResumable(Lcom/android/camera/Camera$Resumable;)Z

    .line 85
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 86
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnParametersReadyListener(Lcom/android/camera/Camera$OnParametersReadyListener;)Z

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/manager/RemainingManager;->setAnimationEnabled(ZZ)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/manager/RemainingManager;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/manager/RemainingManager;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/manager/RemainingManager;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/manager/RemainingManager;->computeStorage(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/camera/manager/RemainingManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/manager/RemainingManager;->updateStorageHint(J)V

    return-void
.end method

.method private computeStorage(J)J
    .locals 4
    .parameter "avaliableSpace"

    .prologue
    const-wide/32 v1, 0x2faf080

    .line 201
    cmp-long v0, p1, v1

    if-lez v0, :cond_3

    .line 202
    sub-long v2, p1, v1

    iget v0, p0, Lcom/android/camera/manager/RemainingManager;->mType:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->pictureSize()J

    move-result-wide v0

    :goto_0
    div-long p1, v2, v0

    .line 207
    :cond_0
    :goto_1
    invoke-static {p1, p2}, Lcom/android/camera/Storage;->setLeftSpace(J)V

    .line 208
    sget-boolean v0, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v0, :cond_1

    .line 209
    const-string v0, "RemainingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeStorage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    return-wide p1

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->videoFrameRate()J

    move-result-wide v0

    goto :goto_0

    .line 204
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 205
    const-wide/16 p1, 0x0

    goto :goto_1
.end method

.method private static stringForCount(J)Ljava/lang/String;
    .locals 4
    .parameter "count"

    .prologue
    .line 307
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static stringForTime(J)Ljava/lang/String;
    .locals 11
    .parameter "millis"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 293
    long-to-int v4, p0

    div-int/lit16 v3, v4, 0x3e8

    .line 294
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 295
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 296
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 298
    .local v0, hours:I
    if-lez v0, :cond_0

    .line 299
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 301
    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateRemainingView(JJ)V
    .locals 4
    .parameter "threshold"
    .parameter "leftSpace"

    .prologue
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    .line 217
    iget v1, p0, Lcom/android/camera/manager/RemainingManager;->mType:I

    if-nez v1, :cond_0

    cmp-long v1, p3, p1

    if-gtz v1, :cond_3

    .line 218
    .local v0, needShow:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 219
    cmp-long v1, p3, v2

    if-gez v1, :cond_5

    .line 220
    iget v1, p0, Lcom/android/camera/manager/RemainingManager;->mType:I

    if-nez v1, :cond_4

    invoke-static {v2, v3}, Lcom/android/camera/manager/RemainingManager;->stringForCount(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mRemainingText:Ljava/lang/String;

    .line 224
    :goto_2
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 226
    :cond_1
    sget-boolean v1, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v1, :cond_2

    .line 227
    const-string v1, "RemainingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRemainingView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/manager/RemainingManager;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    return-void

    .line 217
    .end local v0           #needShow:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    .restart local v0       #needShow:Z
    :cond_4
    invoke-static {v2, v3}, Lcom/android/camera/manager/RemainingManager;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 222
    :cond_5
    iget v1, p0, Lcom/android/camera/manager/RemainingManager;->mType:I

    if-nez v1, :cond_6

    invoke-static {p3, p4}, Lcom/android/camera/manager/RemainingManager;->stringForCount(J)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mRemainingText:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-static {p3, p4}, Lcom/android/camera/manager/RemainingManager;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private updateStorageHint(J)V
    .locals 4
    .parameter "leftSpace"

    .prologue
    .line 234
    sget-boolean v1, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "RemainingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStorageHint("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") isFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    const/4 v0, 0x0

    .line 238
    .local v0, message:Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const v2, 0x7f0c00d5

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 249
    iget-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    if-nez v1, :cond_6

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/camera/manager/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/manager/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    .line 254
    :goto_1
    iget-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/manager/OnScreenHint;->show()V

    .line 259
    :cond_2
    :goto_2
    return-void

    .line 240
    :cond_3
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const v2, 0x7f0c00d7

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_4
    const-wide/16 v1, -0x3

    cmp-long v1, p1, v1

    if-nez v1, :cond_5

    .line 243
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const v2, 0x7f0c00d8

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_5
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Util;->getNotEnoughSpaceAlertMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_6
    iget-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/manager/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 255
    :cond_7
    iget-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/manager/OnScreenHint;->cancel()V

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    goto :goto_2
.end method


# virtual methods
.method public begin()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mWorkerHandler:Lcom/android/camera/manager/RemainingManager$WorkerHandler;

    if-nez v1, :cond_0

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thumbnail-creation-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, t:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v1, Lcom/android/camera/manager/RemainingManager$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/manager/RemainingManager$WorkerHandler;-><init>(Lcom/android/camera/manager/RemainingManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mWorkerHandler:Lcom/android/camera/manager/RemainingManager$WorkerHandler;

    .line 98
    iget-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mWorkerHandler:Lcom/android/camera/manager/RemainingManager$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/RemainingManager$WorkerHandler;->sendEmptyMessage(I)Z

    .line 101
    .end local v0           #t:Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mWorkerHandler:Lcom/android/camera/manager/RemainingManager$WorkerHandler;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mWorkerHandler:Lcom/android/camera/manager/RemainingManager$WorkerHandler;

    invoke-virtual {v0}, Lcom/android/camera/manager/RemainingManager$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 129
    :cond_0
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 133
    const v1, 0x7f040046

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/RemainingManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mRemainingView:Landroid/widget/TextView;

    .line 135
    return-object v0
.end method

.method public onCameraParameterReady()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/RemainingManager;->mParametersReady:Z

    .line 327
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 313
    sget-boolean v0, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "RemainingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFullScreenChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    if-eqz p1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->resume()V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->pause()V

    goto :goto_0
.end method

.method protected onRefresh()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->onRefresh()V

    .line 141
    iget-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mRemainingView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mRemainingView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RemainingManager;->mRemainingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "RemainingManager"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/RemainingManager;->mResumed:Z

    .line 118
    iget-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/manager/OnScreenHint;->cancel()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mStorageHint:Lcom/android/camera/manager/OnScreenHint;

    .line 122
    :cond_1
    return-void
.end method

.method public pictureSize()J
    .locals 8

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraActor()Lcom/android/camera/actor/CameraActor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 272
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 273
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    if-le v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, pictureSize:Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "superfine"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .end local v1           #pictureSize:Ljava/lang/String;
    .end local v4           #size:Landroid/hardware/Camera$Size;
    .local v0, pictureFormat:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/android/camera/Storage;->getSize(Ljava/lang/String;)I

    move-result v5

    int-to-long v2, v5

    .line 280
    .local v2, psize:J
    sget-boolean v5, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v5, :cond_0

    .line 281
    const-string v5, "RemainingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pictureSize() pictureFormat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    return-wide v2

    .line 266
    .end local v0           #pictureFormat:Ljava/lang/String;
    .end local v2           #psize:J
    :pswitch_0
    const-string v0, "autorama"

    .line 267
    .restart local v0       #pictureFormat:Ljava/lang/String;
    goto :goto_1

    .line 269
    .end local v0           #pictureFormat:Ljava/lang/String;
    :pswitch_1
    const-string v0, "mav"

    .line 270
    .restart local v0       #pictureFormat:Ljava/lang/String;
    goto :goto_1

    .line 273
    .end local v0           #pictureFormat:Ljava/lang/String;
    .restart local v4       #size:Landroid/hardware/Camera$Size;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "RemainingManager"

    const-string v1, "resume()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/RemainingManager;->mResumed:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    .line 110
    return-void
.end method

.method public showAways()Z
    .locals 5

    .prologue
    .line 165
    iget-boolean v2, p0, Lcom/android/camera/manager/RemainingManager;->mParametersReady:Z

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 167
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 170
    .local v0, leftSpace:J
    sget-object v2, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v3

    aget v2, v2, v3

    iput v2, p0, Lcom/android/camera/manager/RemainingManager;->mType:I

    .line 171
    invoke-direct {p0, v0, v1}, Lcom/android/camera/manager/RemainingManager;->computeStorage(J)J

    move-result-wide v0

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/android/camera/manager/RemainingManager;->updateStorageHint(J)V

    .line 173
    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/camera/manager/RemainingManager;->updateRemainingView(JJ)V

    .line 175
    .end local v0           #leftSpace:J
    :cond_1
    sget-boolean v2, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v2, :cond_2

    .line 176
    const-string v2, "RemainingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAways() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->isShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mParametersReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/manager/RemainingManager;->mParametersReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->isShowing()Z

    move-result v2

    return v2
.end method

.method public showHint()V
    .locals 3

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "RemainingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHint() mAvaliableSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mParametersReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/RemainingManager;->mParametersReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/RemainingManager;->mParametersReady:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/camera/manager/RemainingManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/manager/RemainingManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/manager/RemainingManager$1;-><init>(Lcom/android/camera/manager/RemainingManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :cond_1
    return-void
.end method

.method public showIfNeed()Z
    .locals 5

    .prologue
    .line 148
    iget-boolean v2, p0, Lcom/android/camera/manager/RemainingManager;->mParametersReady:Z

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 150
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 153
    .local v0, leftSpace:J
    sget-object v2, Lcom/android/camera/manager/RemainingManager;->MATRIX_REMAINING_TYPE:[I

    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v3

    aget v2, v2, v3

    iput v2, p0, Lcom/android/camera/manager/RemainingManager;->mType:I

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/android/camera/manager/RemainingManager;->computeStorage(J)J

    move-result-wide v0

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/android/camera/manager/RemainingManager;->updateStorageHint(J)V

    .line 156
    sget-object v2, Lcom/android/camera/manager/RemainingManager;->REMAIND_THRESHOLD:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/camera/manager/RemainingManager;->updateRemainingView(JJ)V

    .line 158
    .end local v0           #leftSpace:J
    :cond_1
    sget-boolean v2, Lcom/android/camera/manager/RemainingManager;->LOG:Z

    if-eqz v2, :cond_2

    .line 159
    const-string v2, "RemainingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showIfNeed() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->isShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mParametersReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/manager/RemainingManager;->mParametersReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->isShowing()Z

    move-result v2

    return v2
.end method

.method public videoFrameRate()J
    .locals 5

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/camera/manager/RemainingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    .line 288
    .local v2, profile:Landroid/media/CamcorderProfile;
    iget v3, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v4, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x3

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    .line 289
    .local v0, bytePerMs:J
    return-wide v0
.end method
