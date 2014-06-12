.class public Lcom/android/camera/manager/ThumbnailManager;
.super Lcom/android/camera/manager/ViewManager;
.source "ThumbnailManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/FileSaver$FileSaverListener;
.implements Lcom/android/camera/Camera$Resumable;
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;,
        Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;,
        Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_PICTURE:Ljava/lang/String; = "com.android.gallery3d.action.DELETE_PICTURE"

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final MSG_CHECK_THUMBNAIL:I = 0x2

.field private static final MSG_SAVE_THUMBNAIL:I = 0x0

.field private static final MSG_UPDATE_THUMBNAIL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailManager"


# instance fields
.field private mCurrentSaveRequest:Lcom/android/camera/SaveRequest;

.field private mCurrentSaveUri:Landroid/net/Uri;

.field private mDeletePictureFilter:Landroid/content/IntentFilter;

.field private mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRefreshTime:J

.field private mLastSaveRequest:Lcom/android/camera/SaveRequest;

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mRefreshInterval:J

.field private mResumed:Z

.field private mThumbnail:Lcom/android/camera/Thumbnail;

.field private mThumbnailView:Lcom/android/camera/ui/RotateImageView;

.field private mUpdateThumbnailDelayed:Z

.field private mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mDeletePictureFilter:Landroid/content/IntentFilter;

    .line 56
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ThumbnailManager$1;-><init>(Lcom/android/camera/manager/ThumbnailManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ThumbnailManager$2;-><init>(Lcom/android/camera/manager/ThumbnailManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mMainHandler:Landroid/os/Handler;

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/ThumbnailManager;->setFileter(Z)V

    .line 86
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addResumable(Lcom/android/camera/Camera$Resumable;)Z

    .line 87
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 88
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnailUncached()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/manager/ThumbnailManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/camera/manager/ThumbnailManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/camera/manager/ThumbnailManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->saveThumbnailToFile()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->sendUpdateThumbnail()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/manager/ThumbnailManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdateThumbnailDelayed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->updateThumbnailView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/manager/ThumbnailManager;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mCurrentSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLastSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/manager/ThumbnailManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J

    return-wide v0
.end method

.method private getLastThumbnail()V
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 263
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->updateThumbnailView()V

    .line 264
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;-><init>(Lcom/android/camera/manager/ThumbnailManager;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 265
    sget-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastThumbnail() mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    return-void
.end method

.method private getLastThumbnailUncached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 274
    :cond_0
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;-><init>(Lcom/android/camera/manager/ThumbnailManager;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 275
    return-void
.end method

.method private saveThumbnailToFile()V
    .locals 4

    .prologue
    .line 278
    sget-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveThumbnailToFile() mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;-><init>(Lcom/android/camera/manager/ThumbnailManager;Lcom/android/camera/manager/ThumbnailManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/Thumbnail;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 284
    :cond_1
    return-void
.end method

.method private sendUpdateThumbnail()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 312
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 315
    return-void
.end method

.method private updateThumbnailView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 167
    sget-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnailView() mThumbnailView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 183
    :goto_0
    sget-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnailView() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    return-void

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    if-nez v1, :cond_0

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thumbnail-creation-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, t:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v1, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;-><init>(Lcom/android/camera/manager/ThumbnailManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    .line 111
    .end local v0           #t:Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    invoke-virtual {v0}, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 151
    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnail()V

    .line 409
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 155
    const v1, 0x7f040052

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ThumbnailManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 157
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 381
    sget-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " really="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isUIEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FileSaver;->waitDone()V

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    #invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    
    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    
    .line 392
    :cond_2
    return-void
.end method

.method public onFileSaved(Lcom/android/camera/SaveRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    const/4 v3, 0x0

    .line 300
    sget-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileSaved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ignore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/SaveRequest;->isIgnoreThumbnail()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    invoke-interface {p1}, Lcom/android/camera/SaveRequest;->isIgnoreThumbnail()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/camera/SaveRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    iput-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mCurrentSaveUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/camera/manager/ThumbnailManager;->mCurrentSaveRequest:Lcom/android/camera/SaveRequest;

    .line 306
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->removeMessages(I)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->sendEmptyMessage(I)Z

    .line 309
    :cond_1
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 396
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdateThumbnailDelayed:Z

    if-eqz v0, :cond_1

    .line 397
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnailUncached()V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mUpdateThumbnailDelayed:Z

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->updateThumbnailView()V

    .line 401
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mWorkerHandler:Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onRefresh()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->updateThumbnailView()V

    .line 164
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 124
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->saveThumbnailToFile()V

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    .line 131
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 116
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/camera/manager/ThumbnailManager;->mDeletePictureFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 117
    invoke-direct {p0}, Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnail()V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z

    .line 119
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isenable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setClickable(Z)V

    .line 144
    :cond_1
    return-void
.end method

.method public setFileSaver(Lcom/android/camera/FileSaver;)V
    .locals 0
    .parameter "saver"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1, p0}, Lcom/android/camera/FileSaver;->addListener(Lcom/android/camera/FileSaver$FileSaverListener;)Z

    .line 94
    :cond_0
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 3
    .parameter "ms"

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/camera/manager/ThumbnailManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRefreshInterval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J

    .line 102
    return-void
.end method
