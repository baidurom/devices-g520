.class public Lcom/android/camera/actor/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/EffectsRecorder$EffectsListener;,
        Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;
    }
.end annotation


# static fields
.field public static final EFFECT_BACKDROPPER:I = 0x2

.field public static final EFFECT_GF_BIG_EYES:I = 0x1

.field public static final EFFECT_GF_BIG_MOUTH:I = 0x2

.field public static final EFFECT_GF_BIG_NOSE:I = 0x4

.field public static final EFFECT_GF_SMALL_EYES:I = 0x5

.field public static final EFFECT_GF_SMALL_MOUTH:I = 0x3

.field public static final EFFECT_GF_SQUEEZE:I = 0x0

.field public static final EFFECT_GOOFY_FACE:I = 0x1

.field public static final EFFECT_MSG_DONE_LEARNING:I = 0x1

.field public static final EFFECT_MSG_EFFECTS_STOPPED:I = 0x3

.field public static final EFFECT_MSG_PREVIEW_RUNNING:I = 0x5

.field public static final EFFECT_MSG_RECORDING_DONE:I = 0x4

.field public static final EFFECT_MSG_STARTED_LEARNING:I = 0x0

.field public static final EFFECT_MSG_SWITCHING_EFFECT:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final NUM_OF_GF_EFFECTS:I = 0x6

.field private static final STATE_CONFIGURE:I = 0x0

.field private static final STATE_PREVIEW:I = 0x3

.field private static final STATE_RECORD:I = 0x4

.field private static final STATE_RELEASED:I = 0x5

.field private static final STATE_STARTING_PREVIEW:I = 0x2

.field private static final STATE_WAITING_FOR_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EffectsRecorder"


# instance fields
.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraDisplayOrientation:I

.field private mCameraFacing:I

.field private mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCaptureRate:D

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/android/camera/actor/EffectsRecorder$EffectsListener;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mGraphEnv:Landroid/filterfw/GraphEnvironment;

.field private mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

.field private mLogVerbose:Z

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mMuteAudio:Z

.field private mOldRunner:Landroid/filterfw/core/GraphRunner;

.field private mOrientationHint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPlayStopSound:Ljava/lang/Runnable;

.field private mPreviewHeight:I

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

.field private mReleased:Z

.field private mRunner:Landroid/filterfw/core/GraphRunner;

.field private mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

.field private mState:I

.field private mSurfaceStateListener:Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;

.field private mTextureSource:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCaptureRate:D

    .line 97
    iput v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mOrientationHint:I

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mMaxFileSize:J

    .line 99
    iput v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mMaxDurationMs:I

    .line 100
    iput v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraFacing:I

    .line 103
    iput v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffect:I

    .line 104
    iput v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    .line 111
    iput-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 112
    iput-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 122
    iput v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mMuteAudio:Z

    .line 584
    new-instance v0, Lcom/android/camera/actor/EffectsRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/EffectsRecorder$1;-><init>(Lcom/android/camera/actor/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    .line 659
    new-instance v0, Lcom/android/camera/actor/EffectsRecorder$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/EffectsRecorder$2;-><init>(Lcom/android/camera/actor/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 673
    new-instance v0, Lcom/android/camera/actor/EffectsRecorder$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/EffectsRecorder$3;-><init>(Lcom/android/camera/actor/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 915
    new-instance v0, Lcom/android/camera/actor/EffectsRecorder$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/EffectsRecorder$4;-><init>(Lcom/android/camera/actor/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    .line 1036
    new-instance v0, Lcom/android/camera/actor/EffectsRecorder$7;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/EffectsRecorder$7;-><init>(Lcom/android/camera/actor/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mPlayStopSound:Ljava/lang/Runnable;

    .line 145
    iget-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsRecorder created ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mContext:Landroid/content/Context;

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    .line 151
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actor/EffectsRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/actor/EffectsRecorder;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/actor/EffectsRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/actor/EffectsRecorder;)Lcom/android/camera/actor/EffectsRecorder$EffectsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffectsListener:Lcom/android/camera/actor/EffectsRecorder$EffectsListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/actor/EffectsRecorder;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/actor/EffectsRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/actor/EffectsRecorder;)Landroid/media/MediaActionSound;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/actor/EffectsRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/actor/EffectsRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/actor/EffectsRecorder;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/actor/EffectsRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/actor/EffectsRecorder;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/actor/EffectsRecorder;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/actor/EffectsRecorder;)Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mSurfaceStateListener:Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/actor/EffectsRecorder;Landroid/filterfw/core/GraphRunner;)Landroid/filterfw/core/GraphRunner;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/actor/EffectsRecorder;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/actor/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V

    return-void
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 13
    .parameter "forceReset"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 452
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    iget v7, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffect:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    if-ne v6, v10, :cond_5

    .line 454
    :cond_0
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurfaceTexture"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/camera/actor/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/android/camera/actor/EffectsRecorder;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/android/camera/actor/EffectsRecorder;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "orientation"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Lcom/android/camera/actor/EffectsRecorder;->mOrientationHint:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 456
    const-string v6, "VideoActor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EffectsRecorder--initializeEffect--,mState=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    if-eq v6, v12, :cond_1

    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    if-ne v6, v10, :cond_2

    .line 459
    :cond_1
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/camera/actor/EffectsRecorder;->sendMessage(II)V

    .line 462
    :cond_2
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffect:I

    packed-switch v6, :pswitch_data_0

    .line 471
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown effect ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 467
    :pswitch_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, v6, v7}, Lcom/android/camera/actor/EffectsRecorder;->sendMessage(II)V

    .line 468
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v7, p0, Lcom/android/camera/actor/EffectsRecorder;->mContext:Landroid/content/Context;

    const/high16 v8, 0x7f07

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphId:I

    .line 473
    :pswitch_1
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffect:I

    iput v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    .line 475
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 476
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget v7, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->getRunner(II)Landroid/filterfw/core/GraphRunner;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 477
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iget-object v7, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/GraphRunner;->setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V

    .line 478
    iget-boolean v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v6, :cond_3

    .line 479
    const-string v6, "EffectsRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New runner: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Old runner: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_3
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    if-eq v6, v12, :cond_4

    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    if-ne v6, v10, :cond_5

    .line 484
    :cond_4
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :try_start_2
    const-string v6, "EffectsRecorder"

    const-string v7, "setPreviewTexture = null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 491
    :try_start_3
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 495
    :cond_5
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    packed-switch v6, :pswitch_data_1

    .line 527
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/actor/EffectsRecorder;->setFaceDetectOrientation()V

    .line 528
    invoke-direct {p0}, Lcom/android/camera/actor/EffectsRecorder;->setRecordingOrientation()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    .line 488
    :catch_0
    move-exception v1

    .line 489
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unable to connect camera to effect input"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 497
    .end local v1           #e:Ljava/io/IOException;
    :pswitch_2
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/camera/actor/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 498
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "goofyrenderer"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 499
    .local v2, goofyFilter:Landroid/filterfw/core/Filter;
    const-string v7, "currentEffect"

    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    .end local v2           #goofyFilter:Landroid/filterfw/core/Filter;
    :pswitch_3
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/camera/actor/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 503
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "background"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 504
    .local v0, backgroundSrc:Landroid/filterfw/core/Filter;
    const-string v6, "sourceUrl"

    iget-object v7, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraFacing:I

    if-ne v6, v11, :cond_6

    .line 508
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "replacer"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v5

    .line 509
    .local v5, replacer:Landroid/filterfw/core/Filter;
    const-string v6, "mirrorBg"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    iget-boolean v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v6, :cond_6

    .line 511
    const-string v6, "EffectsRecorder"

    const-string v7, "Setting the background to be mirrored"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v5           #replacer:Landroid/filterfw/core/Filter;
    :cond_6
    const/4 v4, 0x7

    .line 518
    .local v4, maskWidthExp:I
    const/4 v3, 0x7

    .line 519
    .local v3, maskHeightExp:I
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "replacer"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v5

    .line 520
    .restart local v5       #replacer:Landroid/filterfw/core/Filter;
    const-string v6, "maskWidthExp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    const-string v6, "maskHeightExp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 495
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 426
    new-instance v3, Landroid/filterfw/GraphEnvironment;

    invoke-direct {v3}, Landroid/filterfw/GraphEnvironment;-><init>()V

    iput-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 427
    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v3}, Landroid/filterfw/MffEnvironment;->createGLEnvironment()V

    .line 429
    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 430
    .local v2, videoFrameWidth:I
    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 432
    .local v1, videoFrameHeight:I
    iget v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 434
    :cond_0
    if-le v2, v1, :cond_1

    .line 435
    move v0, v2

    .line 436
    .local v0, temp:I
    move v2, v1

    .line 437
    move v1, v0

    .line 440
    .end local v0           #temp:I
    :cond_1
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###frameWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " frameHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mGraphEnv.addReferences--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "textureSourceCallback"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "recordingWidth"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "recordingHeight"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "recordingProfile"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "learningDoneListener"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "recordingDoneListener"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 446
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 447
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphId:I

    .line 448
    iput v7, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    .line 449
    return-void
.end method

.method public static isEffectSupported(I)Z
    .locals 1
    .parameter "effectId"

    .prologue
    .line 134
    packed-switch p0, :pswitch_data_0

    .line 140
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    const-string v0, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 138
    :pswitch_1
    const-string v0, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffectsListener:Lcom/android/camera/actor/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/actor/EffectsRecorder$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/actor/EffectsRecorder$6;-><init>(Lcom/android/camera/actor/EffectsRecorder;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1034
    :cond_0
    return-void
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "effect"
    .parameter "msg"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffectsListener:Lcom/android/camera/actor/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/actor/EffectsRecorder$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/actor/EffectsRecorder$5;-><init>(Lcom/android/camera/actor/EffectsRecorder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1019
    :cond_0
    return-void
.end method

.method private setFaceDetectOrientation()V
    .locals 5

    .prologue
    .line 320
    iget v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 321
    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "rotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 322
    .local v2, rotateFilter:Landroid/filterfw/core/Filter;
    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "metarotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 323
    .local v0, metaRotateFilter:Landroid/filterfw/core/Filter;
    const-string v3, "rotation"

    iget v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mOrientationHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    iget v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mOrientationHint:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 325
    .local v1, reverseDegrees:I
    const-string v3, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    .end local v0           #metaRotateFilter:Landroid/filterfw/core/Filter;
    .end local v1           #reverseDegrees:I
    .end local v2           #rotateFilter:Landroid/filterfw/core/Filter;
    :cond_0
    return-void
.end method

.method private setRecordingOrientation()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 330
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v6, :cond_0

    .line 331
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 332
    .local v0, bl:Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 333
    .local v1, br:Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 334
    .local v4, tl:Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 336
    .local v5, tr:Landroid/filterfw/geometry/Point;
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraFacing:I

    if-nez v6, :cond_1

    .line 338
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 350
    .local v3, recordingRegion:Landroid/filterfw/geometry/Quad;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "recorder"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 351
    .local v2, recorder:Landroid/filterfw/core/Filter;
    const-string v6, "inputRegion"

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    .end local v0           #bl:Landroid/filterfw/geometry/Point;
    .end local v1           #br:Landroid/filterfw/geometry/Point;
    .end local v2           #recorder:Landroid/filterfw/core/Filter;
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    .end local v4           #tl:Landroid/filterfw/geometry/Point;
    .end local v5           #tr:Landroid/filterfw/geometry/Point;
    :cond_0
    return-void

    .line 342
    .restart local v0       #bl:Landroid/filterfw/geometry/Point;
    .restart local v1       #br:Landroid/filterfw/geometry/Point;
    .restart local v4       #tl:Landroid/filterfw/geometry/Point;
    .restart local v5       #tr:Landroid/filterfw/geometry/Point;
    :cond_1
    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mOrientationHint:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mOrientationHint:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 344
    :cond_2
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v1, v0, v5, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 347
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    :cond_3
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disconnectCamera()V
    .locals 2

    .prologue
    .line 792
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 793
    const-string v0, "EffectsRecorder"

    const-string v1, "Disconnecting the effects from Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actor/EffectsRecorder;->stopCameraPreview()V

    .line 796
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    monitor-exit p0

    return-void

    .line 792
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectDisplay()V
    .locals 3

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 776
    const-string v1, "EffectsRecorder"

    const-string v2, "Disconnecting the graph from the SurfaceTexture"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 783
    :goto_0
    monitor-exit p0

    return-void

    .line 781
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    check-cast v0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;

    .line 782
    .local v0, display:Landroid/filterpacks/videosrc/SurfaceTextureTarget;
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v1}, Landroid/filterfw/MffEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->disconnect(Landroid/filterfw/core/FilterContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 775
    .end local v0           #display:Landroid/filterpacks/videosrc/SurfaceTextureTarget;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized enable3ALocks(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 902
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 903
    const-string v1, "EffectsRecorder"

    const-string v2, "Enable3ALocks"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_2

    .line 906
    const-string v1, "EffectsRecorder"

    const-string v2, "Camera already null. Not enabling 3A locks."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :cond_1
    monitor-exit p0

    return-void

    .line 909
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 910
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, p1}, Lcom/android/camera/actor/EffectsRecorder;->tryEnable3ALocks(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 911
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 902
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 990
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 991
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 1008
    :goto_0
    monitor-exit p0

    return-void

    .line 998
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/actor/EffectsRecorder;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 994
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCamera(Landroid/hardware/Camera;)V
    .locals 2
    .parameter "cameraDevice"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 167
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 158
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while previewing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 371
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraDisplayOrientation called after configuration!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iput p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDisplayOrientation:I

    .line 375
    return-void
.end method

.method public setCameraFacing(I)V
    .locals 2
    .parameter "facing"

    .prologue
    .line 378
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 384
    iput p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraFacing:I

    .line 385
    invoke-direct {p0}, Lcom/android/camera/actor/EffectsRecorder;->setRecordingOrientation()V

    .line 386
    return-void

    .line 380
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraFacing called on alrady released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureRate(D)V
    .locals 3
    .parameter "fps"

    .prologue
    .line 243
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 252
    iget-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting time lapse capture rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCaptureRate:D

    .line 256
    return-void

    .line 245
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffect(ILjava/lang/Object;)V
    .locals 3
    .parameter "effect"
    .parameter "effectParameter"

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect: effect ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 301
    iput p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffect:I

    .line 302
    iput-object p2, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    .line 304
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 305
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/actor/EffectsRecorder;->initializeEffect(Z)V

    .line 307
    :cond_2
    return-void

    .line 294
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffectsListener(Lcom/android/camera/actor/EffectsRecorder$EffectsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffectsListener:Lcom/android/camera/actor/EffectsRecorder$EffectsListener;

    .line 317
    return-void
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 2
    .parameter "maxDurationMs"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 239
    iput p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mMaxDurationMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 233
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 235
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 2
    .parameter "maxFileSize"

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 223
    iput-wide p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mMaxFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 217
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMuteAudio(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 1049
    iput-boolean p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mMuteAudio:Z

    .line 1050
    return-void
.end method

.method public setOnCameraReleasedListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 2
    .parameter "infoListener"

    .prologue
    .line 390
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 398
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 399
    return-void

    .line 392
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnCameraReleasedListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnCameraReleasedListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 2
    .parameter "errorListener"

    .prologue
    .line 414
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 422
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 423
    return-void

    .line 416
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 2
    .parameter "infoListener"

    .prologue
    .line 402
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 410
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 411
    return-void

    .line 404
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 356
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 362
    iget-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting orientation hint to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iput p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mOrientationHint:I

    .line 366
    invoke-direct {p0}, Lcom/android/camera/actor/EffectsRecorder;->setFaceDetectOrientation()V

    .line 367
    invoke-direct {p0}, Lcom/android/camera/actor/EffectsRecorder;->setRecordingOrientation()V

    .line 368
    return-void

    .line 358
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOrientationHint called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 197
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 208
    return-void

    .line 199
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "outputFile"

    .prologue
    .line 183
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 192
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 194
    return-void

    .line 185
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter "previewSurfaceTexture"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSurfaceTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 271
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 272
    iput p2, p0, Lcom/android/camera/actor/EffectsRecorder;->mPreviewWidth:I

    .line 273
    iput p3, p0, Lcom/android/camera/actor/EffectsRecorder;->mPreviewHeight:I

    .line 275
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_1

    .line 286
    :goto_0
    return-void

    .line 264
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/actor/EffectsRecorder;->startPreview()V

    goto :goto_0

    .line 281
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/actor/EffectsRecorder;->initializeEffect(Z)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 275
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 171
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 179
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 180
    return-void

    .line 173
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSurfaceStateListener(Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder;->mSurfaceStateListener:Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;

    .line 1046
    return-void
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsRecorder--Starting preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mState=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mEffect=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mEffectParameter=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mProfile=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPreviewSurfaceTexture=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCameraDevice=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 551
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffect:I

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect selected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 541
    :pswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "startPreview called when already running preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :goto_0
    monitor-exit p0

    return-void

    .line 544
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot start preview when already recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 555
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect parameter provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_2

    .line 558
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recording profile provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_3

    .line 562
    const-string v0, "EffectsRecorder"

    const-string v1, "Passed a null surface; waiting for valid one"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    goto :goto_0

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    .line 567
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_4
    const-string v0, "EffectsRecorder"

    const-string v1, "Initializing filter framework and running the graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct {p0}, Lcom/android/camera/actor/EffectsRecorder;->initializeFilterFramework()V

    .line 574
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/actor/EffectsRecorder;->initializeEffect(Z)V

    .line 577
    const-string v0, "EffectsRecorder"

    const-string v1, "Starting filter graph"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    .line 580
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized startRecording()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 685
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_0

    .line 686
    const-string v4, "EffectsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting recording ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    iget v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 698
    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-nez v4, :cond_1

    .line 699
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No output file name or descriptor provided!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 691
    :pswitch_0
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Already recording, cannot begin anew!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 693
    :pswitch_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "startRecording called on an already released recorder!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 702
    :cond_1
    iget v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    if-nez v4, :cond_2

    .line 703
    invoke-virtual {p0}, Lcom/android/camera/actor/EffectsRecorder;->startPreview()V

    .line 706
    :cond_2
    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "recorder"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 707
    .local v1, recorder:Landroid/filterfw/core/Filter;
    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_7

    .line 708
    const-string v4, "outputFileDescriptor"

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    :goto_0
    const-string v4, "muteAudio"

    iget-boolean v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mMuteAudio:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    iget-boolean v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mMuteAudio:Z

    if-nez v4, :cond_3

    .line 716
    const-string v4, "audioSource"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 719
    :cond_3
    const-string v4, "recordingProfile"

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 720
    const-string v4, "orientationHint"

    iget v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mOrientationHint:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    iget-wide v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    .line 726
    .local v0, captureTimeLapse:Z
    :goto_1
    if-eqz v0, :cond_9

    .line 727
    const-wide/high16 v4, 0x3ff0

    iget-wide v6, p0, Lcom/android/camera/actor/EffectsRecorder;->mCaptureRate:D

    div-double v2, v4, v6

    .line 728
    .local v2, timeBetweenFrameCapture:D
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide v5, 0x412e848000000000L

    mul-double/2addr v5, v2

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    .end local v2           #timeBetweenFrameCapture:D
    :goto_2
    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v4, :cond_4

    .line 734
    const-string v4, "infoListener"

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 736
    :cond_4
    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v4, :cond_5

    .line 737
    const-string v4, "errorListener"

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    :cond_5
    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v4, :cond_6

    .line 740
    const-string v4, "releasedListener"

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 742
    :cond_6
    const-string v4, "maxFileSize"

    iget-wide v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 743
    const-string v4, "maxDurationMs"

    iget v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    const-string v4, "recording"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/MediaActionSound;->play(I)V

    .line 746
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    monitor-exit p0

    return-void

    .line 710
    .end local v0           #captureTimeLapse:Z
    :cond_7
    :try_start_2
    const-string v4, "outputFile"

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 725
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 730
    .restart local v0       #captureTimeLapse:Z
    :cond_9
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 689
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized stopCameraPreview()V
    .locals 3

    .prologue
    .line 803
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 804
    const-string v1, "EffectsRecorder"

    const-string v2, "Stopping camera preview."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 807
    const-string v1, "EffectsRecorder"

    const-string v2, "Camera already null. Nothing to disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    :goto_0
    monitor-exit p0

    return-void

    .line 810
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :try_start_2
    const-string v1, "EffectsRecorder"

    const-string v2, "stopCameraPreview, setPreviewTexture = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to disconnect camera"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 803
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 821
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 822
    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 834
    iget v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/android/camera/actor/EffectsRecorder;->stopRecording()V

    .line 838
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I

    .line 841
    invoke-virtual {p0}, Lcom/android/camera/actor/EffectsRecorder;->stopCameraPreview()V

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    .line 844
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 845
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mSurfaceStateListener:Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mSurfaceStateListener:Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;->onStateChange(Z)V

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    :goto_0
    monitor-exit p0

    return-void

    .line 826
    :sswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "StopPreview called when preview not active!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 829
    :sswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stopPreview called on released EffectsRecorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 824
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording()V
    .locals 5

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 751
    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop recording ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    iget v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 765
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    const-string v2, "recorder"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 766
    .local v0, recorder:Landroid/filterfw/core/Filter;
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 767
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mPlayStopSound:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 768
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mPlayStopSound:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 769
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    .end local v0           #recorder:Landroid/filterfw/core/Filter;
    :goto_0
    monitor-exit p0

    return-void

    .line 758
    :pswitch_1
    :try_start_1
    const-string v1, "EffectsRecorder"

    const-string v2, "StopRecording called when recording not active!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 761
    :pswitch_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method declared-synchronized tryEnable3ALocks(Z)Z
    .locals 4
    .parameter "toggle"

    .prologue
    const/4 v1, 0x0

    .line 882
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_0

    .line 883
    const-string v2, "EffectsRecorder"

    const-string v3, "tryEnable3ALocks"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 886
    const-string v2, "EffectsRecorder"

    const-string v3, "Camera already null. Not tryenabling 3A locks."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 889
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 890
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 891
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 892
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 893
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    const/4 v1, 0x1

    goto :goto_0

    .line 882
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .parameter "toggle"

    .prologue
    const/4 v2, 0x0

    .line 856
    iget-boolean v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 857
    const-string v3, "EffectsRecorder"

    const-string v4, "tryEnableVideoStabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_2

    .line 860
    const-string v3, "EffectsRecorder"

    const-string v4, "Camera already null. Not enabling video stabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_1
    :goto_0
    return v2

    .line 863
    :cond_2
    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 865
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v3, "video-stabilization-supported"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 867
    iget-boolean v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_3

    .line 868
    const-string v2, "EffectsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting video stabilization to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_3
    const-string v3, "video-stabilization"

    if-eqz p1, :cond_4

    const-string v2, "true"

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 872
    const/4 v2, 0x1

    goto :goto_0

    .line 870
    :cond_4
    const-string v2, "false"

    goto :goto_1

    .line 874
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_1

    .line 875
    const-string v3, "EffectsRecorder"

    const-string v4, "Video stabilization not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
