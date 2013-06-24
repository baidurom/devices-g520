.class public Lcom/mediatek/vt/VTManager;
.super Ljava/lang/Object;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vt/VTManager$TelMsgHandler;,
        Lcom/mediatek/vt/VTManager$VTHanlder;,
        Lcom/mediatek/vt/VTManager$State;
    }
.end annotation


# static fields
.field public static final QUIT_THREAD:I = 0x8000000

.field public static final RECORD_TYPE_AUDIO_ONLY:I = 0x2

.field public static final RECORD_TYPE_VIDEO_AUDIO:I = 0x1

.field public static final RECORD_TYPE_VIDEO_ONLY:I = 0x3

.field public static final SET_VT_CLOSE:I = 0x0

.field public static final SET_VT_OPEN:I = 0x1

.field public static final SET_VT_READY:I = 0x2

.field static final TAG:Ljava/lang/String; = "VTManager"

.field private static final VIDEO_TYPE_CAMERA:I = 0x0

.field private static final VIDEO_TYPE_IMAGE:I = 0x1

.field private static final VIDEO_TYPE_LAST_SHOT:I = 0x2

.field public static final VT_ERROR_CALL_DISCONNECT:I = 0x8001

.field public static final VT_ERROR_CAMERA:I = 0x8003

.field public static final VT_ERROR_MEDIA_RECORDER_COMPLETE:I = 0x8007

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_ERROR:I = 0x8006

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_INFO:I = 0x8005

.field public static final VT_ERROR_MEDIA_SERVER_DIED:I = 0x8004

.field public static final VT_ERROR_START_VTS_FAIL:I = 0x8002

.field public static final VT_MSG_CAM_BEGIN:I = 0x1000

.field public static final VT_MSG_CLOSE:I = 0x1

.field public static final VT_MSG_CONNECTED:I = 0x4

.field public static final VT_MSG_DISCONNECTED:I = 0x5

.field public static final VT_MSG_EM_INDICATION:I = 0x6

.field public static final VT_MSG_OPEN:I = 0x2

.field public static final VT_MSG_PEER_CAMERA_CLOSE:I = 0x10

.field public static final VT_MSG_PEER_CAMERA_OPEN:I = 0x9

.field public static final VT_MSG_READY:I = 0x3

.field public static final VT_MSG_RECEIVE_FIRSTFRAME:I = 0x8

.field public static final VT_MSG_RING:I = 0x7

.field public static final VT_MSG_START_COUNTER:I = 0x7

.field public static final VT_MSG_VTSTATUS:I = 0x6

.field public static final VT_NORMAL_END_SESSION_COMMAND:I = 0x8101

.field public static final VT_RET_FROM_JNI_FALSE:I = 0x1

.field public static final VT_RET_FROM_JNI_TRUE:I = 0x0

.field public static final VT_VQ_NORMAL:I = 0x1

.field public static final VT_VQ_SHARP:I = 0x0

.field public static final VT_VQ_SMOOTH:I = 0x2

.field private static sVTManager:Lcom/mediatek/vt/VTManager;


# instance fields
.field mCallManager:Ljava/lang/Object;

.field private mClosingVTService:Z

.field mContext:Landroid/content/Context;

.field private mDateTakenRecording:J

.field private mEnableReplacePeerVideo:I

.field private mEndCallLock:Ljava/lang/Integer;

.field private mInvokeHideMeBeforeOpen:Z

.field private mInvokeLockPeerVideoBeforeOpen:Z

.field private mRecordedFileName:Ljava/lang/String;

.field private mRecordedFilePath:Ljava/lang/String;

.field private mReplacePeerVideoPicturePath:Ljava/lang/String;

.field mSettings:Lcom/mediatek/vt/VTSettings;

.field private mStartVTSMALFail:Z

.field mState:Lcom/mediatek/vt/VTManager$State;

.field mTelMsgHandler:Landroid/os/Handler;

.field mTelMsgThread:Ljava/lang/Thread;

.field mVTListener:Landroid/os/Handler;

.field private mVTListenerLock:Ljava/lang/Integer;

.field mVTThread:Ljava/lang/Thread;

.field mVtHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/mediatek/vt/VTManager;

    invoke-direct {v0}, Lcom/mediatek/vt/VTManager;-><init>()V

    sput-object v0, Lcom/mediatek/vt/VTManager;->sVTManager:Lcom/mediatek/vt/VTManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 303
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 140
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 143
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    .line 145
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    .line 148
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    .line 150
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    .line 151
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mInvokeLockPeerVideoBeforeOpen:Z

    .line 152
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    .line 153
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    .line 160
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    .line 304
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 305
    new-instance v0, Lcom/mediatek/vt/VTSettings;

    invoke-direct {v0}, Lcom/mediatek/vt/VTSettings;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    .line 306
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTCloseImpl()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTOpenImpl()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTReadyImpl()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/vt/VTManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    return v0
.end method

.method public static getInstance()Lcom/mediatek/vt/VTManager;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/mediatek/vt/VTManager;->sVTManager:Lcom/mediatek/vt/VTManager;

    return-object v0
.end method

.method public static setEM(III)V
    .locals 0
    .parameter "item"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 912
    invoke-static {p0, p1, p2}, Lcom/mediatek/vt/VTelProvider;->setEM(III)V

    .line 913
    return-void
.end method

.method private setInvokeHideMeBeforeOpen(Z)V
    .locals 0
    .parameter "invokeHideMeBeforeOpen"

    .prologue
    .line 1147
    iput-boolean p1, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    .line 1148
    return-void
.end method

.method private setInvokeLockPeerVideoBeforeOpen(Z)V
    .locals 0
    .parameter "invokeLockPeerVideoBeforeOpen"

    .prologue
    .line 1185
    iput-boolean p1, p0, Lcom/mediatek/vt/VTManager;->mInvokeLockPeerVideoBeforeOpen:Z

    .line 1186
    return-void
.end method

.method private declared-synchronized setVTCloseImpl()V
    .locals 6

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    const-string v2, "VTManager"

    const-string v3, "setVTCloseImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v2, v3, :cond_0

    .line 428
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "VTManager"

    const-string v3, "createThreads, wait error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 439
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 442
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    .line 444
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 445
    :try_start_3
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->closeVTService()I

    move-result v1

    .line 446
    .local v1, ret:I
    if-eqz v1, :cond_1

    .line 447
    const-string v2, "VTManager"

    const-string v4, "setVTCloseImpl, error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :goto_1
    monitor-exit p0

    return-void

    .line 450
    :cond_1
    :try_start_4
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 451
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    .line 452
    const-string v2, "VTManager"

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v4}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    monitor-exit v3

    goto :goto_1

    .end local v1           #ret:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 425
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized setVTOpenImpl()V
    .locals 5

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->openVTSerice()I

    move-result v0

    .line 337
    .local v0, ret:I
    if-eqz v0, :cond_0

    .line 338
    const-string v1, "VTManager"

    const-string v2, "setVTOpenImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 344
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v1, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-boolean v1, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getVideoType()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 349
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    .end local v0           #ret:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setVTReadyImpl()V
    .locals 6

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    const-string v2, "VTManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVTReadyImpl, mTelMsgHandler = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v1, 0x0

    .line 374
    .local v1, ret:I
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vt/VTelProvider;->initVTService(Landroid/view/Surface;Landroid/view/Surface;)I

    move-result v1

    .line 382
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 383
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    :try_start_1
    const-string v2, "VTManager"

    const-string v4, "setVTReadyImpl mTelMsgThread wait "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    :cond_0
    if-eqz v1, :cond_2

    .line 394
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z

    .line 395
    const-string v2, "VTManager"

    const-string v3, "setVTReadyImpl, error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 398
    :try_start_4
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 399
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 409
    :goto_2
    monitor-exit p0

    return-void

    .line 378
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vt/VTelProvider;->initVTService(Landroid/view/Surface;Landroid/view/Surface;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v2, "VTManager"

    const-string v4, "setVTReadyImpl, wait error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 391
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 372
    .end local v1           #ret:I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 399
    .restart local v1       #ret:I
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2

    .line 402
    :cond_2
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 403
    const-string v2, "VTManager"

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getCameraSettings()V

    .line 405
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 406
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 407
    :try_start_a
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 408
    monitor-exit v3

    goto :goto_2

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method


# virtual methods
.method public canDecBrightness()Z
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecBrightness()Z

    move-result v0

    return v0
.end method

.method public canDecContrast()Z
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecContrast()Z

    move-result v0

    return v0
.end method

.method public canDecZoom()Z
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecZoom()Z

    move-result v0

    return v0
.end method

.method public canIncBrightness()Z
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncBrightness()Z

    move-result v0

    return v0
.end method

.method public canIncContrast()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncContrast()Z

    move-result v0

    return v0
.end method

.method public canIncZoom()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncZoom()Z

    move-result v0

    return v0
.end method

.method createThreads()V
    .locals 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    const-string v1, "VTManager"

    const-string v2, "init error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 179
    :cond_1
    new-instance v1, Lcom/mediatek/vt/VTManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/vt/VTManager$1;-><init>(Lcom/mediatek/vt/VTManager;)V

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    .line 193
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 195
    new-instance v1, Lcom/mediatek/vt/VTManager$2;

    invoke-direct {v1, p0}, Lcom/mediatek/vt/VTManager$2;-><init>(Lcom/mediatek/vt/VTManager;)V

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    .line 227
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 230
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    const-string v1, "VTManager"

    const-string v2, "mVtHandler.sendEmptyMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "VTManager"

    const-string v3, "createThreads, wait error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 236
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public decBrightness()Z
    .locals 2

    .prologue
    .line 769
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decBrightness()Z

    move-result v0

    .line 770
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 773
    :cond_0
    return v0
.end method

.method public decContrast()Z
    .locals 2

    .prologue
    .line 817
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decContrast()Z

    move-result v0

    .line 818
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 821
    :cond_0
    return v0
.end method

.method public decZoom()Z
    .locals 2

    .prologue
    .line 793
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decZoom()Z

    move-result v0

    .line 794
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 797
    :cond_0
    return v0
.end method

.method public deinit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->joinThreads()V

    .line 317
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->deinit()V

    .line 318
    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    .line 319
    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    .line 320
    return-void
.end method

.method public enableAlwaysAskSettings(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1155
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAlwaysAskSettings in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->enableAlwaysAskSettings(I)I

    .line 1157
    return-void
.end method

.method public enableHideMe(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1170
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHideMe in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->enableHideMe(I)I

    .line 1172
    return-void
.end method

.method public enableHideYou(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1165
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHideYou in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->enableHideYou(I)I

    .line 1167
    return-void
.end method

.method public enlargeDisplaySurface(Z)V
    .locals 0
    .parameter "isEnlarge"

    .prologue
    .line 643
    return-void
.end method

.method public getCameraSensorCount()I
    .locals 5

    .prologue
    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, ret:I
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v3

    .line 883
    :try_start_0
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v2, v4, :cond_0

    .line 884
    monitor-exit v3

    move v1, v0

    .line 888
    .end local v0           #ret:I
    .local v1, ret:I
    :goto_0
    return v1

    .line 886
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getCameraSensorCount()I

    move-result v0

    .line 887
    monitor-exit v3

    move v1, v0

    .line 888
    .end local v0           #ret:I
    .restart local v1       #ret:I
    goto :goto_0

    .line 887
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 877
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->isMicrophoneOn()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNightMode()Z
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getNightMode()Z

    move-result v0

    return v0
.end method

.method getParameters()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getParameters()Lcom/mediatek/vt/CameraParamters;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 750
    return-void
.end method

.method public getState()Lcom/mediatek/vt/VTManager$State;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    return-object v0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getVideoQuality()I

    move-result v0

    return v0
.end method

.method public getmVTListener()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    return-object v0
.end method

.method public incBrightness()Z
    .locals 2

    .prologue
    .line 777
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incBrightness()Z

    move-result v0

    .line 778
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 781
    :cond_0
    return v0
.end method

.method public incContrast()Z
    .locals 2

    .prologue
    .line 825
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incContrast()Z

    move-result v0

    .line 826
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 829
    :cond_0
    return v0
.end method

.method public incZoom()Z
    .locals 2

    .prologue
    .line 801
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incZoom()Z

    move-result v0

    .line 802
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 805
    :cond_0
    return v0
.end method

.method public incomingVTCall(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1180
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomingVTCall in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->incomingVTCall(I)I

    .line 1182
    return-void
.end method

.method public incomingVideoDispaly(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1175
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomingVideoDispaly in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->incomingVideoDispaly(I)I

    .line 1177
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "callManager"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    .line 310
    iput-object p2, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->init(Landroid/content/Context;)V

    .line 312
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->createThreads()V

    .line 313
    return-void
.end method

.method public isInvokeHideMeBeforeOpen()Z
    .locals 1

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mInvokeHideMeBeforeOpen:Z

    return v0
.end method

.method public isInvokeLockPeerVideoBeforeOpenn()Z
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mInvokeLockPeerVideoBeforeOpen:Z

    return v0
.end method

.method public isSpeakerOn(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, result:Z
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 903
    :try_start_0
    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v3, v4, :cond_0

    .line 904
    monitor-exit v2

    .line 908
    :goto_0
    return v1

    .line 906
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->isSpeakerOn()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 907
    :goto_1
    monitor-exit v2

    move v1, v0

    .line 908
    goto :goto_0

    .line 906
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 907
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSupportNightMode()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->isSupportNightMode()Z

    move-result v0

    return v0
.end method

.method joinThreads()V
    .locals 5

    .prologue
    const/high16 v3, 0x800

    const/4 v4, 0x0

    .line 256
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 257
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 260
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 263
    const-string v1, "VTManager"

    const-string v2, "null == mTelMsgHandler in joinThreads()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 274
    :try_start_0
    const-string v1, "VTManager"

    const-string v3, "mTelMsgHandler notify in joinThreads()"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 284
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    :goto_2
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    .line 290
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    .line 292
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    .line 293
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 295
    return-void

    .line 265
    :cond_0
    const-string v1, "VTManager"

    const-string v2, "null != mTelMsgHandler in joinThreads()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/IllegalMonitorStateException;
    :try_start_3
    const-string v1, "VTManager"

    const-string v3, "mTelMsgHandler notify in joinThreads(), wait error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->printStackTrace()V

    goto :goto_1

    .line 280
    .end local v0           #e:Ljava/lang/IllegalMonitorStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 285
    :catch_1
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "VTManager"

    const-string v2, "joinThreads error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public lockPeerVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 988
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 989
    const-string v0, "VTManager"

    const-string v1, "lockPeerVideo, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-direct {p0, v2}, Lcom/mediatek/vt/VTManager;->setInvokeLockPeerVideoBeforeOpen(Z)V

    .line 991
    invoke-static {v2}, Lcom/mediatek/vt/VTelProvider;->setInvokeLockPeerVideoBeforeOpen(I)I

    .line 995
    :goto_0
    return-void

    .line 994
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->lockPeerVideo()I

    goto :goto_0
.end method

.method public declared-synchronized onConnected()V
    .locals 5

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    const-string v1, "VTManager"

    const-string v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 480
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v1, v2, :cond_1

    .line 462
    const-string v1, "VTManager"

    const-string v2, "onConnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 472
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->startVTService()I

    move-result v0

    .line 473
    .local v0, ret:I
    if-eqz v0, :cond_2

    .line 474
    const-string v1, "VTManager"

    const-string v2, "onConnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    :cond_2
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 478
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 483
    const-string v0, "VTManager"

    const-string v1, "pre-onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->setEndCallFlag()V

    .line 485
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->onDisconnectedActual()V

    .line 486
    return-void
.end method

.method public declared-synchronized onDisconnectedActual()V
    .locals 5

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    const-string v1, "VTManager"

    const-string v2, "onDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v1, v2, :cond_0

    .line 491
    const-string v1, "VTManager"

    const-string v2, "onDisconnected, VT Manager state error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :goto_0
    monitor-exit p0

    return-void

    .line 494
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->stopVTService()I

    move-result v0

    .line 495
    .local v0, ret:I
    if-eqz v0, :cond_1

    .line 496
    const-string v1, "VTManager"

    const-string v2, "onDisconnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    .end local v0           #ret:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 499
    .restart local v0       #ret:I
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 500
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 501
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onUserInput(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 975
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 976
    const-string v0, "VTManager"

    const-string v1, "onUserInput, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :goto_0
    return-void

    .line 979
    :cond_0
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->onUserInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method postEventFromNative(IIILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 965
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNative ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 967
    return-void
.end method

.method postEventToMMI(IIILjava/lang/Object;)V
    .locals 4
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    if-eqz v0, :cond_0

    const v0, 0x8001

    if-ne v0, p1, :cond_0

    .line 962
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 955
    :try_start_0
    const-string v0, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEventToMMI ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 957
    const-string v0, "VTManager"

    const-string v2, "error postEventToMMI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 959
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public registerVTListener(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 529
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 530
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 531
    monitor-exit v1

    .line 532
    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replacePeerVideoSettings(ILjava/lang/String;)V
    .locals 2
    .parameter "bEnableReplacePeerVideo"
    .parameter "sReplacePeerVideoPicturePath"

    .prologue
    .line 166
    const-string v0, "VTManager"

    const-string v1, "replacePeerVideoSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput p1, p0, Lcom/mediatek/vt/VTManager;->mEnableReplacePeerVideo:I

    .line 168
    iput-object p2, p0, Lcom/mediatek/vt/VTManager;->mReplacePeerVideoPicturePath:Ljava/lang/String;

    .line 169
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->replacePeerVideoSettings(ILjava/lang/String;)I

    .line 171
    return-void
.end method

.method public savePeerPhoto()Z
    .locals 15

    .prologue
    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 700
    .local v2, dateTaken:J
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd kk.mm.ss.SSS"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 701
    .local v8, name:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 702
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, cameraImageBucketName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/DCIM/Camera/IMG_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 706
    .local v9, path:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/DCIM/Camera/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .local v6, imageDirectory:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 710
    const/4 v13, 0x0

    invoke-static {v13, v9}, Lcom/mediatek/vt/VTelProvider;->snapshot(ILjava/lang/String;)I

    move-result v5

    .line 711
    .local v5, flag:I
    if-eqz v5, :cond_0

    .line 712
    const-string v13, "VTManager"

    const-string v14, "***snapshot() fail in Manager layer***"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v13, 0x0

    .line 741
    :goto_0
    return v13

    .line 717
    :cond_0
    iget-object v13, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 718
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 719
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "title"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v13, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 722
    const-string v13, "mime_type"

    const-string v14, "image/png"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v13, "orientation"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v7, imageFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 727
    const-string v13, "VTManager"

    const-string v14, "***image_File does not exist in Manager layer***"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v13, 0x0

    goto :goto_0

    .line 730
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 731
    .local v10, size:J
    const-string v13, "_size"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 732
    const-string v13, "_data"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v13, "VTManager"

    invoke-virtual {v12}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :try_start_0
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    const/4 v13, 0x1

    goto :goto_0

    .line 737
    :catch_0
    move-exception v4

    .line 738
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "VTManager"

    const-string v14, "insert fail in savePeerPhoto()"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setColorEffect(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 839
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "local"
    .parameter "peer"

    .prologue
    .line 622
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setLocalSurface(Landroid/view/SurfaceHolder;)V

    .line 624
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setPeerSurface(Landroid/view/SurfaceHolder;)V

    .line 625
    return-void
.end method

.method public setLocalVideoType(ILjava/lang/String;)V
    .locals 4
    .parameter "videoType"
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    .line 668
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalVideoType, closingVTService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " videoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-nez p2, :cond_0

    .line 670
    const-string v0, "VTManager"

    const-string v1, "setLocalVideoType, path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    if-eqz v0, :cond_2

    .line 673
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoType(I)V

    .line 675
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setImagePath(Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_1

    .line 677
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/vt/VTManager;->setInvokeHideMeBeforeOpen(Z)V

    .line 678
    monitor-exit v1

    .line 691
    :goto_0
    return-void

    .line 680
    :cond_1
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->setLocalVideoType(ILjava/lang/String;)V

    .line 681
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoType(I)V

    .line 684
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setImagePath(Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_3

    .line 686
    invoke-direct {p0, v3}, Lcom/mediatek/vt/VTManager;->setInvokeHideMeBeforeOpen(Z)V

    goto :goto_0

    .line 689
    :cond_3
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setMute(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .parameter "phone"
    .parameter "muted"

    .prologue
    .line 873
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->turnOnMicrophone(I)V

    .line 874
    return-void

    .line 873
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNightMode(Z)V
    .locals 1
    .parameter "isOn"

    .prologue
    .line 854
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setNightMode(Z)V

    .line 855
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 856
    return-void
.end method

.method setParameters()V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->setParameters(Lcom/mediatek/vt/CameraParamters;)V

    .line 755
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->updateParameters(Lcom/mediatek/vt/CameraParamters;)Lcom/mediatek/vt/CameraParamters;

    .line 758
    return-void
.end method

.method public setVTClose()V
    .locals 2

    .prologue
    .line 415
    const-string v0, "VTManager"

    const-string v1, "setVTClose"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 417
    const-string v0, "VTManager"

    const-string v1, "setVTCloseImpl, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 421
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->deinit()V

    goto :goto_0
.end method

.method public declared-synchronized setVTDisconnect()V
    .locals 2

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 507
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 508
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 510
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 511
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 512
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 506
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setVTOpen(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "callManager"

    .prologue
    .line 326
    const-string v0, "VTManager"

    const-string v1, "setVTOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 328
    const-string v0, "VTManager"

    const-string v1, "setVTOpen, mState != State.CLOSE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/vt/VTManager;->init(Landroid/content/Context;Ljava/lang/Object;)V

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vt/VTManager;->mClosingVTService:Z

    goto :goto_0
.end method

.method public declared-synchronized setVTReady()V
    .locals 3

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTReady, mVtHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_1

    .line 363
    const-string v0, "VTManager"

    const-string v1, "setVTReadyImpl, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 366
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVTVisible(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 920
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_0

    .line 948
    :goto_0
    return-void

    .line 923
    :cond_0
    if-nez p1, :cond_1

    .line 924
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, Landroid/view/Surface;

    check-cast v1, Landroid/view/Surface;

    invoke-static {v2, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_0

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    if-nez v0, :cond_2

    .line 927
    const-string v0, "VTManager"

    const-string v1, "error setVTVisible, null == mSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 931
    const-string v0, "VTManager"

    const-string v1, "error setVTVisible, null == getPeerSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 934
    :cond_3
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_4

    .line 935
    const-string v0, "VTManager"

    const-string v1, "error setVTVisible, null == getSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 939
    :cond_4
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 940
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_0

    .line 943
    :cond_5
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_0
.end method

.method public setVideoQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoQuality(I)V

    .line 865
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->setPeerVideo(I)V

    .line 866
    return-void
.end method

.method public startRecording(IJ)I
    .locals 12
    .parameter "type"
    .parameter "maxSize"

    .prologue
    const/4 v11, 0x1

    .line 1015
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startRecording() in VTManager.java, type is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "maxSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v2, 0x0

    .line 1019
    .local v2, ret:I
    sget-object v8, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v8, v9, :cond_0

    .line 1020
    const-string v8, "VTManager"

    const-string v9, "startRecording() in VTManager.java, State=CLOSE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1080
    .end local v2           #ret:I
    .local v3, ret:I
    :goto_0
    return v3

    .line 1025
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, cameraImageBucketName:Ljava/lang/String;
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cameraImageBucketName is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    .line 1031
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd kk.mm.ss.SSS"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1035
    .local v7, timeSuffix:Ljava/lang/String;
    if-ne v11, p1, :cond_1

    .line 1036
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Video_and_Audio_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    .line 1047
    :goto_1
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    const-string v9, "storage"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 1049
    .local v6, storageManager:Landroid/os/storage/StorageManager;
    if-nez v6, :cond_4

    .line 1050
    const-string v8, "VTManager"

    const-string v9, "-----story manager is null----"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1051
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 1037
    .end local v3           #ret:I
    .end local v6           #storageManager:Landroid/os/storage/StorageManager;
    .restart local v2       #ret:I
    :cond_1
    const/4 v8, 0x2

    if-ne v8, p1, :cond_2

    .line 1038
    const-string v8, "VTManager"

    const-string v9, "type is wrong in startRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1039
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 1040
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_2
    const/4 v8, 0x3

    if-ne v8, p1, :cond_3

    .line 1041
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only_Peer_Video_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    goto :goto_1

    .line 1043
    :cond_3
    const-string v8, "VTManager"

    const-string v9, "type is wrong in startRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1044
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto/16 :goto_0

    .line 1053
    .end local v3           #ret:I
    .restart local v2       #ret:I
    .restart local v6       #storageManager:Landroid/os/storage/StorageManager;
    :cond_4
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v4, sampleDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1056
    const-string v8, "VTManager"

    const-string v9, "----- file can\'t write!! ---"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PhoneRecord/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".3gp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    .line 1059
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recordedFileName is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PhoneRecord/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v1, recordDirectory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1074
    .end local v1           #recordDirectory:Ljava/io/File;
    :goto_2
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-static {p1, v8, p2, p3}, Lcom/mediatek/vt/VTelProvider;->startRecording(ILjava/lang/String;J)I

    move-result v2

    .line 1075
    if-ne v11, v2, :cond_7

    .line 1076
    const-string v8, "VTManager"

    const-string v9, "VT_RET_FROM_JNI_FALSE == ret in startRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1077
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto/16 :goto_0

    .line 1065
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_5
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PhoneRecord"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .end local v4           #sampleDir:Ljava/io/File;
    .local v5, sampleDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1067
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1069
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".3gp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    .line 1070
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recordedFileName is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #sampleDir:Ljava/io/File;
    .restart local v4       #sampleDir:Ljava/io/File;
    goto :goto_2

    :cond_7
    move v3, v2

    .line 1080
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto/16 :goto_0
.end method

.method public stopRecording(I)I
    .locals 12
    .parameter "type"

    .prologue
    const/4 v11, 0x1

    .line 1084
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopRecording() in VTManager.java, type is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/4 v2, 0x0

    .line 1087
    .local v2, ret:I
    sget-object v8, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v8, v9, :cond_0

    .line 1088
    const-string v8, "VTManager"

    const-string v9, "stopRecording() in VTManager.java, State=CLOSE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1139
    .end local v2           #ret:I
    .local v3, ret:I
    :goto_0
    return v3

    .line 1092
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_0
    if-eq v11, p1, :cond_1

    const/4 v8, 0x3

    if-eq v8, p1, :cond_1

    .line 1093
    const-string v8, "VTManager"

    const-string v9, "stopRecording() in VTManager.java, type is wrong"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1094
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 1097
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_1
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->stopRecording(I)I

    move-result v2

    .line 1098
    if-ne v11, v2, :cond_2

    .line 1099
    const-string v8, "VTManager"

    const-string v9, "VT_RET_FROM_JNI_FALSE == ret in stopRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1100
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 1104
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_2
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1105
    const-string v8, "VTManager"

    const-string v9, "null == recordedFilePath in stopRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1106
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 1108
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_3
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v7, videoFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1110
    const-string v8, "VTManager"

    const-string v9, "***video_File does not exist in stopRecording()***"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1114
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1115
    .local v4, size:J
    const-string v8, "title"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v8, "_display_name"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v8, "datetaken"

    iget-wide v9, p0, Lcom/mediatek/vt/VTManager;->mDateTakenRecording:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1118
    const-string v8, "mime_type"

    const-string v9, "video/3gpp"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string v8, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1120
    const-string v8, "_data"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mRecordedFilePath:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1131
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1132
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v2

    .line 1139
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto/16 :goto_0

    .line 1134
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :catch_0
    move-exception v1

    .line 1135
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "VTManager"

    const-string v9, "insert fail in stopRecording()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public switchCamera()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, ret:I
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 652
    :try_start_0
    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v3, v4, :cond_1

    .line 653
    monitor-exit v2

    .line 658
    :cond_0
    :goto_0
    return v1

    .line 655
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->switchCamera()I

    move-result v0

    .line 656
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getCameraSettings()V

    .line 657
    monitor-exit v2

    .line 658
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchDisplaySurface()V
    .locals 2

    .prologue
    .line 631
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 632
    const-string v0, "VTManager"

    const-string v1, "switchDisplaySurface, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/mediatek/vt/VTSettings;->setIsSwitch(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public turnOnSpeaker(Z)V
    .locals 3
    .parameter "isOn"

    .prologue
    .line 892
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 893
    :try_start_0
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_0

    .line 894
    monitor-exit v1

    .line 898
    :goto_0
    return-void

    .line 896
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->turnOnSpeaker(I)V

    .line 897
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 896
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public unlockPeerVideo()V
    .locals 2

    .prologue
    .line 1003
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 1004
    const-string v0, "VTManager"

    const-string v1, "unlockPeerVideo, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :goto_0
    return-void

    .line 1007
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->unlockPeerVideo()I

    goto :goto_0
.end method

.method public unregisterVTListener()V
    .locals 2

    .prologue
    .line 535
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 536
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 537
    monitor-exit v1

    .line 538
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userSelectYes(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1160
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userSelectYes in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->userSelectYes(I)I

    .line 1162
    return-void
.end method
