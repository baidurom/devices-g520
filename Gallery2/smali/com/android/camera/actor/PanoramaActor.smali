.class public Lcom/android/camera/actor/PanoramaActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "PanoramaActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;,
        Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;,
        Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;,
        Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;
    }
.end annotation


# static fields
.field public static final GUIDE_CAPTURE:I = 0x2

.field public static final GUIDE_MOVE:I = 0x1

.field public static final GUIDE_SHUTTER:I = 0x0

.field private static final IDLE:I = 0x0

.field private static final LOG:Z = true

.field private static final MERGING:I = 0x2

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x2

.field private static final MSG_FINAL_IMAGE_READY:I = 0x1

.field private static final NUM_AUTORAMA_CAPTURE:I = 0x9

.field private static final STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PanoramaActor"


# instance fields
.field public mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field private mCaptureState:I

.field private mCurrentNum:I

.field private mFalseShutterCallback:Ljava/lang/Runnable;

.field private mFileSaverListener:Lcom/android/camera/FileSaver$FileSaverListener;

.field private mLock:Ljava/lang/Object;

.field public mOkOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnHardwareStop:Ljava/lang/Runnable;

.field private mPanoramaCallback:Landroid/hardware/Camera$AUTORAMACallback;

.field private mPanoramaErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected final mPanoramaHandler:Landroid/os/Handler;

.field private mPanoramaMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

.field private mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

.field private mRestartCaptureView:Ljava/lang/Runnable;

.field private mSaveRequest:Lcom/android/camera/SaveRequest;

.field private mShowingCollimatedDrawable:Z

.field private mStopProcess:Z

.field private mStopping:Z

.field private mTimeTaken:J

.field private mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 34
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;-><init>(Lcom/android/camera/actor/PanoramaActor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;-><init>(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/actor/PanoramaActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaCallback:Landroid/hardware/Camera$AUTORAMACallback;

    .line 36
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/actor/PanoramaActor$PanoramaMVCallback;-><init>(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/actor/PanoramaActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    .line 40
    iput-boolean v2, p0, Lcom/android/camera/actor/PanoramaActor;->mStopProcess:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    .line 55
    iput v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    .line 129
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$1;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mFileSaverListener:Lcom/android/camera/FileSaver$FileSaverListener;

    .line 136
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$2;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 150
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$3;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mFalseShutterCallback:Ljava/lang/Runnable;

    .line 166
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$4;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mOkOnClickListener:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$5;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$5;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$6;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$6;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    .line 98
    const-string v0, "PanoramaActor"

    const-string v1, "PanoramaActor initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 101
    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/actor/PanoramaActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/actor/PanoramaActor;->mStopProcess:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/actor/PanoramaActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/camera/actor/PanoramaActor;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/actor/PanoramaActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/actor/PanoramaActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/manager/PanoramaViewManager;)Lcom/android/camera/manager/PanoramaViewManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/actor/PanoramaActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/actor/PanoramaActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mRestartCaptureView:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/actor/PanoramaActor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor;->mRestartCaptureView:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->resetCapture()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->showCaptureError()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/actor/PanoramaActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/actor/PanoramaActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->doStop(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/actor/PanoramaActor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/camera/actor/PanoramaActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/actor/PanoramaActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->onHardwareStopped(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private doStart()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "PanoramaActor"

    const-string v1, "doStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->getPanoramaCallback()Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    .line 250
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->getPanoramaMVCallback()Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->startAUTORAMA(I)V

    .line 252
    return-void
.end method

.method private doStop(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    .line 341
    const-string v1, "PanoramaActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStop isMerge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    .line 346
    .local v0, holder:Lcom/android/camera/CameraHolder;
    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->isSameCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopAUTORAMA(I)V

    .line 354
    :goto_1
    monitor-exit v0

    .line 356
    .end local v0           #holder:Lcom/android/camera/CameraHolder;
    :cond_0
    return-void

    .line 350
    .restart local v0       #holder:Lcom/android/camera/CameraHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 352
    :cond_2
    const-string v1, "PanoramaActor"

    const-string v2, "doStop device is release? "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCaptureDone(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 408
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureDone isMerge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->addRequest()V

    .line 413
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor;->mFileSaverListener:Lcom/android/camera/FileSaver$FileSaverListener;

    invoke-interface {v0, v1}, Lcom/android/camera/SaveRequest;->setListener(Lcom/android/camera/FileSaver$FileSaverListener;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->resetCapture()V

    goto :goto_0
.end method

.method private onHardwareStopped(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    const/4 v3, 0x0

    .line 360
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHardwareStopped isMerge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 368
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->onCaptureDone(Z)V

    .line 369
    return-void
.end method

.method private resetCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCapture mCamera.getCameraState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->unlockAeAwb()V

    .line 463
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 466
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 467
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 469
    invoke-virtual {p0, v3}, Lcom/android/camera/actor/PanoramaActor;->showGuideString(I)V

    .line 471
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->startFaceDetection()V

    .line 475
    :cond_1
    return-void
.end method

.method private safeStop()V
    .locals 3

    .prologue
    .line 327
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    .line 329
    .local v0, holder:Lcom/android/camera/CameraHolder;
    const-string v1, "PanoramaActor"

    const-string v2, "check stopAsync thread state, if running,we must wait"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->checkStopProcess()V

    .line 332
    monitor-enter v0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->stopPreview()V

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/actor/PanoramaActor;->stopCapture(Z)V

    .line 337
    return-void

    .line 334
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private showCaptureError()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 564
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissAlertDialog()V

    .line 565
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v5, 0x7f0c012d

    invoke-virtual {v0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, dialogTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v5, 0x7f0c011e

    invoke-virtual {v0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, dialogOk:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v5, 0x7f0c012c

    invoke-virtual {v0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, dialogPanoramaFailedString:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 571
    .end local v1           #dialogTitle:Ljava/lang/String;
    .end local v2           #dialogPanoramaFailedString:Ljava/lang/String;
    .end local v3           #dialogOk:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startCapture()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    if-nez v2, :cond_0

    .line 187
    iput v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    .line 188
    iput v1, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    .line 189
    iput-boolean v1, p0, Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z

    .line 191
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->doStart()V

    .line 192
    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/PanoramaViewManager;->showCaptureView()V

    .line 198
    :goto_0
    return v0

    .line 196
    :cond_0
    const-string v0, "PanoramaActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start mCaptureState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 198
    goto :goto_0
.end method

.method private stopAsync(Z)V
    .locals 5
    .parameter "isMerge"

    .prologue
    const/4 v4, 0x1

    .line 210
    const-string v1, "PanoramaActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAsync mStopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v1, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    if-eqz v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 217
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/actor/PanoramaActor;->mStopping:Z

    .line 218
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/actor/PanoramaActor$7;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/actor/PanoramaActor$7;-><init>(Lcom/android/camera/actor/PanoramaActor;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    .local v0, stopThread:Ljava/lang/Thread;
    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 240
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/actor/PanoramaActor;->mStopProcess:Z

    .line 241
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private stopCapture(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    const/4 v3, 0x0

    .line 437
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture isMerge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->hasCaptured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    const/4 p1, 0x0

    .line 444
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->stop(Z)V

    .line 445
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    if-eqz v0, :cond_1

    .line 446
    iput v3, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    .line 447
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PanoramaViewManager;->resetController()V

    .line 449
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/actor/PanoramaActor;->updateSavingHint(ZZ)V

    .line 450
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 451
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 453
    :cond_1
    return-void
.end method

.method private unlockAeAwb()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setAeLock(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 481
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->setFocusParameters()V

    .line 483
    :cond_0
    return-void
.end method

.method private waitLock()V
    .locals 3

    .prologue
    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 400
    monitor-exit v2

    .line 404
    :goto_0
    return-void

    .line 400
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "PanoramaActor"

    const-string v2, "InterruptedException in waitLock"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public capture()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 505
    const-string v2, "PanoramaActor"

    const-string v3, "capture begin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/Camera;->preparePhotoRequest(II)Lcom/android/camera/SaveRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actor/PanoramaActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    .line 515
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->setFocusParameters()V

    .line 518
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 520
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->startCapture()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 524
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 526
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->stopFaceDetection()V

    .line 527
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->clearFocusOnContinuous()V

    .line 530
    invoke-virtual {p0, v1}, Lcom/android/camera/actor/PanoramaActor;->showGuideString(I)V

    .line 531
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 532
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor;->mFalseShutterCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 533
    goto :goto_0
.end method

.method public checkStopProcess()V
    .locals 1

    .prologue
    .line 391
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/actor/PanoramaActor;->mStopProcess:Z

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->waitLock()V

    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getErrorCallback()Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaErrorCallback:Lcom/android/camera/CameraErrorCallback;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x3

    return v0
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mOkOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPanoramaCallback()Landroid/hardware/Camera$AUTORAMACallback;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaCallback:Landroid/hardware/Camera$AUTORAMACallback;

    return-object v0
.end method

.method public getPanoramaMVCallback()Landroid/hardware/Camera$AUTORAMAMVCallback;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    return-object v0
.end method

.method public handleFocus()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public hasCaptured()Z
    .locals 3

    .prologue
    .line 161
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCaptured mCaptureState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraClose()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 320
    invoke-direct {p0}, Lcom/android/camera/actor/PanoramaActor;->safeStop()V

    .line 321
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->onCameraClose()V

    .line 322
    return-void
.end method

.method public onCameraOpenDone()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->onCameraOpenDone()V

    .line 121
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setLockAeNeeded(Z)V

    .line 127
    return-void
.end method

.method public onKeyPressed(Z)V
    .locals 3
    .parameter "ok"

    .prologue
    .line 428
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyPressed ok = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 431
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->stopCapture(Z)V

    .line 433
    :cond_0
    return-void
.end method

.method public onMediaEject()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/actor/PanoramaActor;->stopCapture(Z)V

    .line 305
    :cond_0
    return-void
.end method

.method public onMergeStarted()V
    .locals 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actor/PanoramaActor;->updateSavingHint(ZZ)V

    .line 422
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissInfo()V

    .line 424
    :cond_0
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 497
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PanoramaActor.onShutterButtonClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    .line 501
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 488
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PanoramaActor.onShutterButtonLongPressed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c012d

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c00b5

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 574
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->release()V

    .line 575
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PanoramaViewManager;->release()V

    .line 576
    return-void
.end method

.method public showGuideString(I)V
    .locals 3
    .parameter "step"

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, guideId:I
    packed-switch p1, :pswitch_data_0

    .line 558
    :goto_0
    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 561
    :cond_0
    return-void

    .line 545
    :pswitch_0
    const v0, 0x7f0c009d

    .line 546
    goto :goto_0

    .line 548
    :pswitch_1
    const v0, 0x7f0c009a

    .line 549
    goto :goto_0

    .line 551
    :pswitch_2
    const v0, 0x7f0c009e

    .line 552
    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    const/4 v3, 0x0

    .line 373
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 377
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I

    .line 378
    if-nez p1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    .line 380
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 385
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor;->stopAsync(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PanoramaViewManager;->resetController()V

    .line 388
    :cond_0
    return-void

    .line 377
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/PanoramaActor;->onMergeStarted()V

    goto :goto_1
.end method
