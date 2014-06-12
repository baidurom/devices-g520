.class public Lcom/android/camera/actor/VideoActor;
.super Lcom/android/camera/actor/CameraActor;
.source "VideoActor.java"

# interfaces
.implements Lcom/android/camera/actor/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/manager/LearningView$LearningListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/FocusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;,
        Lcom/android/camera/actor/VideoActor$AutoFocusCallback;,
        Lcom/android/camera/actor/VideoActor$SavingTask;,
        Lcom/android/camera/actor/VideoActor$MainHandler;
    }
.end annotation


# static fields
.field private static final ENABLE_SHUTTER_BUTTON:I = 0x12c

.field private static final ENABLE_SHUTTER_BUTTON_TIMER:J = 0x1f4L

.field private static final FOCUSED:I = 0x2

.field private static final FOCUSING:I = 0x1

.field private static final FOCUS_IDLE:I = 0x3

.field private static final INVALID_DURATION:J = -0x1L

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String; = null

.field private static final REQUEST_EFFECT_BACKDROPPER:I = 0x3e8

.field private static final START_FOCUSING:I = -0x1

.field private static final STOP_FAIL:I = 0x5

.field private static final STOP_NORMAL:I = 0x1

.field private static final STOP_RETURN:I = 0x2

.field private static final STOP_RETURN_UNVALID:I = 0x3

.field private static final STOP_SHOW_ALERT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VideoActor"

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final UPDATE_SNAP_THUMNAIL:I = 0xf


# instance fields
.field private final mAutoFocusCallback:Lcom/android/camera/actor/VideoActor$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

.field public mCancelListener:Landroid/view/View$OnClickListener;

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentShowIndicator:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mEffectActive:Z

.field private mEffectType:I

.field private mEffectsActive:Z

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

.field private mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mFocusStartTime:J

.field private mFocusState:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsAutoFocusCallback:Z

.field private mIsContinousFocusMode:Z

.field private mLearningView:Lcom/android/camera/manager/LearningView;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecoderRecordingPaused:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field public mOkListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordAudio:Z

.field private mRecordStartCalledTime:J

.field private volatile mRecorderBusy:Z

.field private mRecorderCameraReleased:Z

.field private mRecordingStartTime:J

.field private mRecordingView:Lcom/android/camera/manager/RecordingView;

.field private mRestoreRecordUI:Z

.field public mRetakeListener:Landroid/view/View$OnClickListener;

.field public mReviewPlay:Landroid/view/View$OnClickListener;

.field private mSingleAutoModeSupported:Z

.field private mSingleStartRecording:Z

.field private mStartRecordingFailed:Z

.field private mStartTimeLapse:J

.field private mStoppingAction:I

.field private mTapupListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mVideoCameraClosed:Z

.field private mVideoContext:Lcom/android/camera/Camera;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field public mVideoPauseResumeListner:Landroid/view/View$OnClickListener;

.field private mVideoRecordedDuration:J

.field private mVideoSaveRequest:Lcom/android/camera/SaveRequest;

.field private mVideoSavedRunnable:Ljava/lang/Runnable;

.field private mVideoSavingTask:Ljava/lang/Thread;

.field private mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

.field private mWfdListenerEnabled:Z

.field private mWfdManager:Lcom/android/camera/WfdManagerLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "indoor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/actor/VideoActor;->PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/camera/actor/CameraActor;-><init>(Lcom/android/camera/Camera;)V

    .line 68
    new-instance v0, Lcom/android/camera/actor/VideoActor$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/VideoActor$MainHandler;-><init>(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/actor/VideoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    .line 70
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    .line 75
    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 77
    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    .line 83
    iput-wide v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    .line 84
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRestoreRecordUI:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 86
    iput-wide v4, p0, Lcom/android/camera/actor/VideoActor;->mRecordStartCalledTime:J

    .line 87
    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentShowIndicator:I

    .line 88
    iput-wide v4, p0, Lcom/android/camera/actor/VideoActor;->mStartTimeLapse:J

    .line 89
    iput v3, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    .line 92
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 94
    new-instance v0, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;-><init>(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/actor/VideoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mAutoFocusCallback:Lcom/android/camera/actor/VideoActor$AutoFocusCallback;

    .line 108
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 111
    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mFocusState:I

    .line 117
    new-instance v0, Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;-><init>(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/actor/VideoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mAutoFocusMoveCallback:Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

    .line 120
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mEffectActive:Z

    .line 122
    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectType:I

    .line 130
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mWfdListenerEnabled:Z

    .line 140
    new-instance v0, Lcom/android/camera/actor/VideoActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$1;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 189
    new-instance v0, Lcom/android/camera/actor/VideoActor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$2;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 232
    new-instance v0, Lcom/android/camera/actor/VideoActor$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$3;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    .line 253
    new-instance v0, Lcom/android/camera/actor/VideoActor$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$4;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mTapupListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

    .line 968
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    .line 1114
    new-instance v0, Lcom/android/camera/actor/VideoActor$7;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$7;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavedRunnable:Ljava/lang/Runnable;

    .line 1187
    new-instance v0, Lcom/android/camera/actor/VideoActor$8;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$8;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoPauseResumeListner:Landroid/view/View$OnClickListener;

    .line 1474
    new-instance v0, Lcom/android/camera/actor/VideoActor$10;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$10;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mReviewPlay:Landroid/view/View$OnClickListener;

    .line 1479
    new-instance v0, Lcom/android/camera/actor/VideoActor$11;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$11;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    .line 1487
    new-instance v0, Lcom/android/camera/actor/VideoActor$12;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$12;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mOkListener:Landroid/view/View$OnClickListener;

    .line 1492
    new-instance v0, Lcom/android/camera/actor/VideoActor$13;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor$13;-><init>(Lcom/android/camera/actor/VideoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    .line 216
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 219
    :cond_0
    new-instance v0, Lcom/android/camera/manager/RecordingView;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/manager/RecordingView;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    .line 220
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoPauseResumeListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/RecordingView;->setListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Lcom/android/camera/manager/LearningView;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/manager/LearningView;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mLearningView:Lcom/android/camera/manager/LearningView;

    .line 223
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mLearningView:Lcom/android/camera/manager/LearningView;

    invoke-virtual {v0, p0}, Lcom/android/camera/manager/LearningView;->setListener(Lcom/android/camera/manager/LearningView$LearningListener;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isVssEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setPhotoShutterEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    .line 227
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/WfdManagerLocal;->addListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z

    .line 230
    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/camera/actor/VideoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoActor;->mWfdListenerEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/actor/VideoActor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor;->setFocusState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/actor/VideoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/actor/VideoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/actor/VideoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/actor/EffectsRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/actor/VideoActor;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/actor/VideoActor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/actor/VideoActor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/camera/actor/VideoActor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/actor/VideoActor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor;->deleteVideoFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/actor/VideoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/actor/VideoActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/actor/VideoActor;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/actor/VideoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->computeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/actor/VideoActor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/camera/actor/VideoActor;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/camera/actor/VideoActor;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/actor/VideoActor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/actor/VideoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsDisplayResult:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/actor/VideoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/actor/VideoActor;->mFocusState:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/actor/VideoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/actor/VideoActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->showAlert()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/actor/VideoActor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor;->doReturnToCaller(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->closeVideoFileDescriptor()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->changeFocusState()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/actor/VideoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/camera/actor/VideoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/manager/RecordingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/actor/VideoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/camera/actor/VideoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/camera/actor/VideoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/actor/VideoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/android/camera/actor/VideoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->pauseVideoRecording()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/actor/VideoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$4402(Lcom/android/camera/actor/VideoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->startPlayVideoActivity()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->deleteCurrentVideo()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->backToLastModeIfNeed()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/actor/VideoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->startVideoRecording()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/actor/VideoActor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private backToLastModeIfNeed()V
    .locals 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1226
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->releaseVideoActor()V

    .line 1227
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdManager:Lcom/android/camera/WfdManagerLocal;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/WfdManagerLocal;->removeListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setPhotoShutterEnabled(Z)V

    .line 1231
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->backToLastMode()V

    .line 1233
    :cond_1
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_2

    .line 1234
    const-string v0, "VideoActor"

    const-string v1, "backToLastModeIfNeed()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_2
    return-void
.end method

.method private backToLastTheseCase()V
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0}, Lcom/android/camera/manager/RecordingView;->hide()V

    .line 1928
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 1929
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->backToLastModeIfNeed()V

    .line 1930
    return-void
.end method

.method private changeFocusState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1428
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1429
    const-string v0, "VideoActor"

    const-string v1, "changeFocusState()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1434
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 1435
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 1436
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 1437
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->setFocusParameters()V

    .line 1438
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 1439
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1312
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    .line 1318
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1302
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1308
    :cond_0
    return-void

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, e:Ljava/io/IOException;
    const-string v1, "VideoActor"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private computeDuration()J
    .locals 5

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->getDuration()J

    move-result-wide v0

    .line 1255
    .local v0, duration:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1256
    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_0

    .line 1257
    invoke-direct {p0, v0, v1}, Lcom/android/camera/actor/VideoActor;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 1260
    :cond_0
    sget-boolean v2, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v2, :cond_1

    .line 1261
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeDuration() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_1
    return-wide v0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 1293
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1294
    const-string v0, "video/mp4"

    .line 1296
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private deleteCurrentVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1322
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1323
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCurrentVideo() mCurrentVideoFilename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/actor/VideoActor;->deleteVideoFile(Ljava/lang/String;)V

    .line 1327
    iput-object v3, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1328
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1330
    iput-object v3, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1333
    :cond_1
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 1336
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1337
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1338
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 1339
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 5
    .parameter "valid"

    .prologue
    .line 735
    sget-boolean v2, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v2, :cond_0

    .line 736
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doReturnToCaller("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 740
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 741
    const/4 v0, -0x1

    .line 742
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 743
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 744
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/camera/Util;->setLastUri(Landroid/net/Uri;)V

    .line 749
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 750
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    .line 751
    return-void

    .line 747
    .end local v0           #resultCode:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private getDuration()J
    .locals 4

    .prologue
    .line 1267
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1269
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1270
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1274
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_0
    return-wide v2

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v2, -0x1

    .line 1274
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method private getRecordMode(Ljava/lang/String;)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 1526
    const/4 v0, 0x0

    .line 1527
    .local v0, audioMode:I
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    if-eqz v1, :cond_3

    .line 1528
    sget-object v1, Lcom/android/camera/actor/VideoActor;->PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1529
    const/4 v0, 0x0

    .line 1538
    :goto_0
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 1539
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_0
    return v0

    .line 1530
    :cond_1
    sget-object v1, Lcom/android/camera/actor/VideoActor;->PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1531
    const/4 v0, 0x1

    goto :goto_0

    .line 1533
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1536
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 756
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 757
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hideOtherSettings(Z)V
    .locals 2
    .parameter "hide"

    .prologue
    .line 683
    if-eqz p1, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    goto :goto_0
.end method

.method private initVideoRecordingFirst()V
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mContentResolver:Landroid/content/ContentResolver;

    .line 367
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getContinousFocusSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mIsContinousFocusMode:Z

    .line 368
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getTimelapseMs()I

    move-result v1

    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 369
    iget v1, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    .line 370
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getMicrophone()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    .line 371
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isContinuousFocusEnabledWhenTouch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    .line 372
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getLimitedDuration()I

    move-result v0

    .line 373
    .local v0, seconds:I
    mul-int/lit16 v1, v0, 0x3e8

    iput v1, p0, Lcom/android/camera/actor/VideoActor;->mMaxVideoDurationInMs:I

    .line 374
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/actor/VideoActor$6;

    invoke-direct {v2, p0}, Lcom/android/camera/actor/VideoActor$6;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 381
    return-void

    .line 369
    .end local v0           #seconds:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeEffectsPreview()V
    .locals 6

    .prologue
    .line 1652
    sget-boolean v2, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v2, :cond_0

    .line 1653
    const-string v2, "VideoActor"

    const-string v3, "initializeEffectsPreview"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1706
    :goto_0
    return-void

    .line 1664
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v3

    aget-object v0, v2, v3

    .line 1667
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    new-instance v2, Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-direct {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    .line 1673
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraDisplayOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1674
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1675
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setCameraFacing(I)V

    .line 1676
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1677
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v2, p0}, Lcom/android/camera/actor/EffectsRecorder;->setEffectsListener(Lcom/android/camera/actor/EffectsRecorder$EffectsListener;)V

    .line 1678
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v2, p0}, Lcom/android/camera/actor/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1693
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNailWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNailHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/actor/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1702
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->readEffectParameter()Ljava/lang/Object;

    move-result-object v1

    .line 1704
    .local v1, mEffectParameter:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/actor/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1567
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 1568
    const-string v1, "VideoActor"

    const-string v2, "initializeEffectsRecording"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Lcom/android/camera/actor/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1582
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1, v3}, Lcom/android/camera/actor/EffectsRecorder;->setMuteAudio(Z)V

    .line 1583
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1, v3}, Lcom/android/camera/actor/EffectsRecorder;->setMuteAudio(Z)V

    .line 1589
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-eqz v1, :cond_1

    .line 1590
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    const-wide v2, 0x408f400000000000L

    iget v4, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setCaptureRate(D)V

    .line 1602
    :goto_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v0

    .line 1603
    .local v0, filesaver:Lcom/android/camera/FileSaver;
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FileSaver;->prepareVideoRequest(ILjava/lang/String;)Lcom/android/camera/SaveRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    .line 1605
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeEffectRecorder--mVideoSaveRequest=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mVideoSaveRequest.mFilePathTemp=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v3}, Lcom/android/camera/SaveRequest;->getTempFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v2}, Lcom/android/camera/SaveRequest;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/actor/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1617
    return-void

    .line 1592
    .end local v0           #filesaver:Lcom/android/camera/FileSaver;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/actor/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_0
.end method

.method private initializeNormalRecorder()V
    .locals 19

    .prologue
    .line 384
    sget-boolean v14, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v14, :cond_0

    .line 385
    const-string v14, "VideoActor"

    const-string v15, "initializeNormalRecorder()"

    invoke-static {v14, v15}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v14}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v14

    if-nez v14, :cond_1

    .line 497
    :goto_0
    return-void

    .line 390
    :cond_1
    const-wide/16 v10, 0x0

    .line 391
    .local v10, requestedSizeLimit:J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/actor/VideoActor;->closeVideoFileDescriptor()V

    .line 392
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v14}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v14

    if-nez v14, :cond_3

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v14}, Lcom/android/camera/Camera;->getSaveUri()Landroid/net/Uri;

    move-result-object v13

    .line 394
    .local v13, saveUri:Landroid/net/Uri;
    if-eqz v13, :cond_2

    .line 396
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mContentResolver:Landroid/content/ContentResolver;

    const-string v15, "rw"

    invoke-virtual {v14, v13, v15}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 397
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v14}, Lcom/android/camera/Camera;->getLimitedSize()J

    move-result-wide v10

    .line 404
    .end local v13           #saveUri:Landroid/net/Uri;
    :cond_3
    new-instance v14, Landroid/media/MediaRecorder;

    invoke-direct {v14}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v14}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 407
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    if-eqz v14, :cond_4

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 410
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 417
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/actor/VideoActor;->mRecordAudio:Z

    if-eqz v14, :cond_5

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 422
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isHdRecordingEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->getAudioMode()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/actor/VideoActor;->getRecordMode(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/media/MediaRecorder;->setHDRecordMode(IZ)V

    .line 426
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/actor/VideoActor;->mMaxVideoDurationInMs:I

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 427
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-eqz v14, :cond_6

    .line 428
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v15, 0x408f400000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14}, Landroid/media/MediaRecorder;->setTimeLapseEnable()V

    .line 432
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v14, :cond_9

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 443
    :goto_2
    const/4 v7, 0x0

    .line 444
    .local v7, loc:Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    if-eqz v14, :cond_a

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v14}, Lcom/android/camera/SaveRequest;->getLocation()Landroid/location/Location;

    move-result-object v7

    .line 449
    :goto_3
    if-eqz v7, :cond_7

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v15

    double-to-float v15, v15

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 453
    :cond_7
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v14

    const-wide/32 v16, 0x2dc6c00

    sub-long v8, v14, v16

    .line 454
    .local v8, maxFileSize:J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_8

    cmp-long v14, v10, v8

    if-gez v14, :cond_8

    .line 455
    move-wide v8, v10

    .line 458
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    :goto_4
    const/4 v12, 0x0

    .line 472
    .local v12, rotation:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v14}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    .line 473
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_c

    .line 474
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v15

    aget-object v6, v14, v15

    .line 475
    .local v6, info:Landroid/hardware/Camera$CameraInfo;
    iget v14, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 476
    iget v14, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    sub-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x168

    rem-int/lit16 v12, v14, 0x168

    .line 485
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v12}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/camera/Camera;->setReviewOrientationCompensation(I)V

    .line 488
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setOnCameraReleasedListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 398
    .end local v6           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v7           #loc:Landroid/location/Location;
    .end local v8           #maxFileSize:J
    .end local v12           #rotation:I
    .restart local v13       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 399
    .local v3, ex:Ljava/io/FileNotFoundException;
    const-string v14, "VideoActor"

    const-string v15, "initializeNormalRecorder()"

    invoke-static {v14, v15, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 435
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    .end local v13           #saveUri:Landroid/net/Uri;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v14}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v5

    .line 436
    .local v5, filesaver:Lcom/android/camera/FileSaver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->fileFormat:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lcom/android/camera/FileSaver;->prepareVideoRequest(ILjava/lang/String;)Lcom/android/camera/SaveRequest;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v15}, Lcom/android/camera/SaveRequest;->getTempFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v14}, Lcom/android/camera/SaveRequest;->getTempFilePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    goto/16 :goto_2

    .line 447
    .end local v5           #filesaver:Lcom/android/camera/FileSaver;
    .restart local v7       #loc:Landroid/location/Location;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v14}, Lcom/android/camera/Camera;->getLocationManager()Lcom/android/camera/LocationManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    goto/16 :goto_3

    .line 459
    .restart local v8       #maxFileSize:J
    :catch_1
    move-exception v4

    .line 464
    .local v4, exception:Ljava/lang/RuntimeException;
    const-string v14, "VideoActor"

    const-string v15, "initializeNormalRecorder()"

    invoke-static {v14, v15, v4}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 478
    .end local v4           #exception:Ljava/lang/RuntimeException;
    .restart local v6       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v12       #rotation:I
    :cond_b
    iget v14, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/actor/VideoActor;->mOrientation:I

    add-int/2addr v14, v15

    rem-int/lit16 v12, v14, 0x168

    goto/16 :goto_5

    .line 482
    .end local v6           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_c
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v15

    aget-object v6, v14, v15

    .line 483
    .restart local v6       #info:Landroid/hardware/Camera$CameraInfo;
    iget v12, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto/16 :goto_5

    .line 489
    :catch_2
    move-exception v2

    .line 490
    .local v2, e:Ljava/io/IOException;
    const-string v14, "VideoActor"

    const-string v15, "prepare failed"

    invoke-static {v14, v15, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 492
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14
.end method

.method private static isSupported(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 1549
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVideoProcessing()Z
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onStopVideoRecordingAsync()V
    .locals 2

    .prologue
    .line 601
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 602
    const-string v0, "VideoActor"

    const-string v1, "onStopVideoRecordingAsync"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsDisplayResult:Z

    .line 607
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 608
    return-void
.end method

.method private pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 612
    sget-boolean v2, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v2, :cond_0

    .line 613
    const-string v2, "VideoActor"

    const-string v3, "pauseAudioPlayback()"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 621
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mediacenter.mediaplayerservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v1, toHWmusic:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 625
    return-void
.end method

.method private pauseVideoRecording()V
    .locals 5

    .prologue
    .line 949
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 950
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseVideoRecording() mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/RecordingView;->showRecording(Z)V

    .line 955
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    .line 963
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    .line 966
    :cond_1
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Camera"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readEffectParameter()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1711
    const-string v1, "backdropper/file:///system/media/video/AndroidInSpace.480p.mp4"

    .line 1712
    .local v1, effectSelection:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 1740
    :goto_0
    return-object v0

    .line 1715
    :cond_0
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1716
    .local v2, separatorIndex:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1717
    .local v0, effectParameter:Ljava/lang/String;
    const-string v4, "goofy_face"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1718
    const-string v4, "squeeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1719
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1720
    :cond_1
    const-string v4, "big_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1721
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1722
    :cond_2
    const-string v4, "big_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1723
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1724
    :cond_3
    const-string v4, "small_mouth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1725
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1726
    :cond_4
    const-string v4, "big_nose"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1727
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1728
    :cond_5
    const-string v4, "small_eyes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1729
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1731
    :cond_6
    const-string v4, "backdropper"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1734
    const-string v3, "VideoActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEffectParameter--effectParameter=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1737
    :cond_7
    sget-boolean v4, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v4, :cond_8

    .line 1738
    const-string v4, "VideoActor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid effect selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v0, v3

    .line 1740
    goto/16 :goto_0
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1882
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1883
    const-string v0, "VideoActor"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1886
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->cleanupEmptyFile()V

    .line 1887
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->release()V

    .line 1888
    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    .line 1890
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectType:I

    .line 1891
    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    .line 1892
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1279
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1280
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaRecorder() mMediaRecorder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 1283
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->cleanupEmptyFile()V

    .line 1284
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1285
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1286
    iput-object v3, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 1289
    :cond_1
    iput-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    .line 1290
    return-void
.end method

.method private releaseVideoActor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1239
    iput-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 1240
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->disconnectCamera()V

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 1247
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 1248
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 1249
    iput-object v2, p0, Lcom/android/camera/actor/CameraActor;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 1250
    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    .line 1251
    return-void
.end method

.method private setAutoFocusMode()V
    .locals 3

    .prologue
    .line 1412
    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/actor/VideoActor;->isSupported(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    const-string v0, "auto"

    .line 1414
    .local v0, focusMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/actor/VideoActor$9;

    invoke-direct {v2, p0}, Lcom/android/camera/actor/VideoActor$9;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 1422
    .end local v0           #focusMode:Ljava/lang/String;
    :cond_0
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_1

    .line 1423
    const-string v1, "VideoActor"

    const-string v2, "set focus mode is auto"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_1
    return-void
.end method

.method private setFocusState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1442
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1443
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mMediaRecorderRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoCameraClosed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_0
    iput p1, p0, Lcom/android/camera/actor/VideoActor;->mFocusState:I

    .line 1447
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v0, :cond_2

    .line 1461
    :cond_1
    :goto_0
    return-void

    .line 1450
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1452
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    goto :goto_0

    .line 1456
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    goto :goto_0

    .line 1450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showAlert()V
    .locals 4

    .prologue
    .line 761
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 762
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAlert() Storage.isStorageReady()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, mFileDescriptor:Ljava/io/FileDescriptor;
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_3

    .line 767
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showReview(Ljava/io/FileDescriptor;)V

    .line 772
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 774
    .end local v0           #mFileDescriptor:Ljava/io/FileDescriptor;
    :cond_2
    return-void

    .line 769
    .restart local v0       #mFileDescriptor:Ljava/io/FileDescriptor;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showReview(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startEffectRecording()V
    .locals 3

    .prologue
    .line 1554
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 1555
    const-string v1, "VideoActor"

    const-string v2, "startEffectRecording()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/actor/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    :goto_0
    return-void

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "VideoActor"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1561
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    .line 1562
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->releaseEffectsRecorder()V

    goto :goto_0
.end method

.method private startNormalRecording()V
    .locals 3

    .prologue
    .line 586
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 587
    const-string v1, "VideoActor"

    const-string v2, "startNormalRecording()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "VideoActor"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    .line 594
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 596
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 1516
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/actor/VideoActor;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    :goto_0
    return-void

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/actor/VideoActor$5;

    invoke-direct {v2, p0}, Lcom/android/camera/actor/VideoActor$5;-><init>(Lcom/android/camera/actor/VideoActor;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopPreview()V

    .line 319
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/actor/EffectsRecorder;->release()V

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->applyContinousCallback()V

    .line 328
    :cond_1
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_2

    .line 329
    const-string v1, "VideoActor"

    const-string v2, "startPreview()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z

    if-nez v1, :cond_3

    .line 336
    const-string v1, "VideoActor"

    const-string v2, "surface api is ready for camera now"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 351
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 352
    :goto_1
    return-void

    .line 342
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->initializeEffectsPreview()V

    .line 343
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/actor/EffectsRecorder;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->releaseVideoActor()V

    .line 347
    const-string v1, "VideoActor"

    const-string v2, "startPreview()"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private startVideoRecording()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 501
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 502
    const-string v1, "VideoActor"

    const-string v2, "startVideoRecording()"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mIsContinousFocusMode:Z

    if-eqz v1, :cond_1

    .line 505
    iput-boolean v5, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 506
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->setAutoFocusMode()V

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 511
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 512
    invoke-direct {p0, v5}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    .line 513
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v1, v5}, Lcom/android/camera/manager/RecordingView;->showRecording(Z)V

    .line 515
    iget-object v1, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    const v2, 0x7f0b00b6

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 516
    .local v0, GpsIndicator:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 517
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;

    .line 521
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 522
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->initializeEffectsRecording()V

    .line 523
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-nez v1, :cond_4

    .line 524
    const-string v1, "VideoActor"

    const-string v2, "Fail to initialize effect recorder."

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    :goto_0
    return-void

    .line 528
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->initializeNormalRecorder()V

    .line 529
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_4

    .line 530
    const-string v1, "VideoActor"

    const-string v2, "Fail to initialize media recorder."

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v1}, Lcom/android/camera/manager/RecordingView;->hide()V

    .line 533
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 534
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->backToLastModeIfNeed()V

    .line 535
    invoke-direct {p0, v4}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    goto :goto_0

    .line 540
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->pauseAudioPlayback()V

    .line 541
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 542
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->startEffectRecording()V

    .line 547
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    if-eqz v1, :cond_6

    .line 548
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_5

    .line 549
    const-string v1, "VideoActor"

    const-string v2, "mStartRecordingFailed."

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoActor;->mStartRecordingFailed:Z

    .line 552
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c00c8

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showToast(I)V

    .line 553
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->backToLastTheseCase()V

    .line 558
    :cond_6
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->fetchParametersFromServer()Landroid/hardware/Camera$Parameters;

    .line 560
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    .line 561
    iput-wide v6, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    .line 562
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 563
    iput v5, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 564
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mWfdListenerEnabled:Z

    if-eqz v1, :cond_7

    .line 565
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z

    if-nez v1, :cond_a

    .line 566
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 570
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->backToLastTheseCase()V

    .line 572
    :cond_7
    iput-boolean v5, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    .line 573
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    .line 575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/actor/VideoActor;->mRecordStartCalledTime:J

    .line 576
    iput-wide v6, p0, Lcom/android/camera/actor/VideoActor;->mStartTimeLapse:J

    .line 577
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->updateRecordingTime()V

    .line 578
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v1, :cond_8

    .line 580
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    :cond_8
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->keepScreenOn()V

    goto/16 :goto_0

    .line 544
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->startNormalRecording()V

    goto :goto_1

    .line 568
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->releaseEffectsRecorder()V

    goto :goto_2
.end method

.method private stopEffectVideoRecording()V
    .locals 2

    .prologue
    .line 1875
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1876
    const-string v0, "VideoActor"

    const-string v1, "stopEffectVideoRecording---"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->stopRecording()V

    .line 1879
    return-void
.end method

.method private stopVideoRecordingAsync()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 970
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 971
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecordingAsync() mMediaRecorderRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 974
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 975
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    :cond_1
    :goto_0
    return-void

    .line 978
    :cond_2
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_3

    .line 979
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecordingAsync() mMediaRecorderRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRecorderBusy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    if-nez v0, :cond_1

    .line 985
    iput-boolean v4, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    .line 986
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v0}, Lcom/android/camera/manager/RecordingView;->hide()V

    .line 987
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_4

    .line 988
    const-string v0, "VideoActor"

    const-string v1, "stopVideoRecordingAsync(),mRecordingView.hide()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_4
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z

    .line 991
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_6

    .line 992
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 993
    iget v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    if-eq v0, v5, :cond_5

    .line 994
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showProgress(Ljava/lang/String;)V

    .line 996
    :cond_5
    new-instance v0, Lcom/android/camera/actor/VideoActor$SavingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/VideoActor$SavingTask;-><init>(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/actor/VideoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    .line 997
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 999
    :cond_6
    iput-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    .line 1000
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z

    if-nez v0, :cond_7

    .line 1001
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    .line 1003
    :cond_7
    iget v0, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    if-ne v0, v5, :cond_1

    .line 1004
    invoke-direct {p0, v3}, Lcom/android/camera/actor/VideoActor;->doReturnToCaller(Z)V

    goto/16 :goto_0
.end method

.method private trainingEffects()V
    .locals 2

    .prologue
    .line 1744
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1745
    const-string v0, "VideoActor"

    const-string v1, "trainingEffects---updateEffectSelection"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->updateEffectSelection()Z

    .line 1748
    return-void
.end method

.method private updateEffectSelection()Z
    .locals 2

    .prologue
    .line 1643
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->initializeEffectsPreview()V

    .line 1644
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1645
    const-string v0, "VideoActor"

    const-string v1, "updateEffectSelection--mEffectsRecorder.startPreview()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->startPreview()V

    .line 1648
    const/4 v0, 0x1

    return v0
.end method

.method private updateRecordingTime()V
    .locals 15

    .prologue
    .line 691
    iget-boolean v11, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-nez v11, :cond_0

    .line 732
    :goto_0
    return-void

    .line 694
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 695
    .local v7, now:J
    iget-wide v11, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    sub-long v3, v7, v11

    .line 696
    .local v3, delta:J
    iget-boolean v11, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    if-eqz v11, :cond_1

    .line 697
    iget-wide v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J

    .line 701
    :cond_1
    iget v11, p0, Lcom/android/camera/actor/VideoActor;->mMaxVideoDurationInMs:I

    if-eqz v11, :cond_5

    iget v11, p0, Lcom/android/camera/actor/VideoActor;->mMaxVideoDurationInMs:I

    const v12, 0xea60

    sub-int/2addr v11, v12

    int-to-long v11, v11

    cmp-long v11, v3, v11

    if-ltz v11, :cond_5

    const/4 v2, 0x1

    .line 703
    .local v2, countdownRemainingTime:Z
    :goto_1
    move-wide v5, v3

    .line 704
    .local v5, deltaAdjusted:J
    if-eqz v2, :cond_2

    .line 705
    const-wide/16 v11, 0x0

    iget v13, p0, Lcom/android/camera/actor/VideoActor;->mMaxVideoDurationInMs:I

    int-to-long v13, v13

    sub-long/2addr v13, v5

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    const-wide/16 v13, 0x3e7

    add-long v5, v11, v13

    .line 708
    :cond_2
    iget-boolean v11, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v11, :cond_6

    .line 709
    iget-object v11, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v6, v12}, Lcom/android/camera/manager/RecordingView;->showTime(JZ)V

    .line 710
    const-wide/16 v9, 0x3e8

    .line 718
    .local v9, targetNextUpdateDelay:J
    :goto_2
    sget-boolean v11, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v11, :cond_3

    .line 719
    const-string v11, "VideoActor"

    const-string v12, "updateRecordingTime,mRecordingView.showTime"

    invoke-static {v11, v12}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_3
    iget v11, p0, Lcom/android/camera/actor/VideoActor;->mCurrentShowIndicator:I

    rsub-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/camera/actor/VideoActor;->mCurrentShowIndicator:I

    .line 722
    iget-boolean v11, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/camera/actor/VideoActor;->mCurrentShowIndicator:I

    if-ne v11, v12, :cond_7

    .line 723
    iget-object v11, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/camera/manager/RecordingView;->hideTimeView(Z)V

    .line 727
    :goto_3
    const-wide/16 v0, 0x1f4

    .line 728
    .local v0, actualNextUpdateDelay:J
    iget-boolean v11, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    if-nez v11, :cond_4

    .line 729
    rem-long v11, v3, v9

    sub-long v0, v9, v11

    .line 731
    :cond_4
    iget-object v11, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 701
    .end local v0           #actualNextUpdateDelay:J
    .end local v2           #countdownRemainingTime:Z
    .end local v5           #deltaAdjusted:J
    .end local v9           #targetNextUpdateDelay:J
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 715
    .restart local v2       #countdownRemainingTime:Z
    .restart local v5       #deltaAdjusted:J
    :cond_6
    iget-object v11, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/actor/VideoActor;->getTimeLapseVideoLength(J)J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/camera/manager/RecordingView;->showTime(JZ)V

    .line 716
    iget v11, p0, Lcom/android/camera/actor/VideoActor;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v9, v11

    .restart local v9       #targetNextUpdateDelay:J
    goto :goto_2

    .line 725
    :cond_7
    iget-object v11, p0, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/manager/RecordingView;->hideTimeView(Z)V

    goto :goto_3
.end method

.method private waitForRecorder()V
    .locals 4

    .prologue
    .line 1172
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    monitor-enter v2

    .line 1173
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1175
    :try_start_1
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 1176
    const-string v1, "VideoActor"

    const-string v3, "Wait for releasing camera done in MediaRecorder"

    invoke-static {v1, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1183
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1184
    return-void

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "VideoActor"

    const-string v3, "Got notify from Media recorder()"

    invoke-static {v1, v3, v0}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1183
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 1360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mFocusStartTime:J

    .line 1361
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1362
    const-string v0, "VideoActor"

    const-string v1, "autoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mAutoFocusCallback:Lcom/android/camera/actor/VideoActor$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/actor/VideoActor;->setFocusState(I)V

    .line 1366
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1369
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1370
    const-string v0, "VideoActor"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1375
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/actor/VideoActor;->setFocusState(I)V

    .line 1376
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    if-nez v0, :cond_3

    .line 1377
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->setFocusParameters()V

    .line 1379
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 1380
    return-void
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 1387
    const/4 v0, 0x0

    return v0
.end method

.method public doSmileShutter()Z
    .locals 1

    .prologue
    .line 1408
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->getAutoFocusMoveCallback()Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

    move-result-object v0

    return-object v0
.end method

.method public getAutoFocusMoveCallback()Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mAutoFocusMoveCallback:Lcom/android/camera/actor/VideoActor$AutoFocusMoveCallback;

    return-object v0
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getErrorCallback()Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    return-object v0
.end method

.method public getFocusManagerListener()Lcom/android/camera/FocusManager$Listener;
    .locals 0

    .prologue
    .line 1383
    return-object p0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x7

    return v0
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mOkListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 3

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhotoShutterButtonListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    return-object v0
.end method

.method public getPlayListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mReviewPlay:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getRetakeListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 3

    .prologue
    .line 284
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoShutterButtonListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    return-object v0
.end method

.method public getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mTapupListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 847
    sget-boolean v1, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 848
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed() isFinishing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mVideoCameraClosed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isVideoProcessing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 858
    :cond_1
    :goto_0
    return v0

    .line 854
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_3

    .line 855
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    goto :goto_0

    .line 858
    :cond_3
    invoke-super {p0}, Lcom/android/camera/actor/CameraActor;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 807
    const-string v0, "VideoActor"

    const-string v1, "onCameraClose()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 810
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    .line 812
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mSingleStartRecording:Z

    .line 813
    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    .line 822
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 828
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoOnPause()V

    .line 829
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    if-eqz v0, :cond_3

    .line 832
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/actor/EffectsRecorder;->disconnectDisplay()V

    .line 834
    :cond_3
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 3
    .parameter "startPreview"

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraParameterReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") getCameraState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    .line 304
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    .line 305
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mProfile:Landroid/media/CamcorderProfile;

    invoke-static {v0}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    if-eqz p1, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->startPreview()V

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->initVideoRecordingFirst()V

    .line 310
    return-void
.end method

.method public onCancelBgTraining()V
    .locals 0

    .prologue
    .line 1897
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 1756
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1757
    const-string v0, "VideoActor"

    const-string v1, "onEffectsError"

    invoke-static {v0, v1, p1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    :cond_0
    monitor-exit p0

    return-void

    .line 1756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 3
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    .line 1770
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1771
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 1787
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mLearningView:Lcom/android/camera/manager/LearningView;

    invoke-virtual {v0}, Lcom/android/camera/manager/LearningView;->hide()V

    .line 1789
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->trainingEffects()V

    .line 1853
    :cond_1
    :goto_0
    return-void

    .line 1793
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1795
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_3

    .line 1796
    const-string v0, "VideoActor"

    const-string v1, "effectMsg = EFFECT_MSG_RECORDING_DONE"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mEffectsDisplayResult:Z

    .line 1819
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v0, :cond_1

    .line 1820
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->closeVideoFileDescriptor()V

    goto :goto_0

    .line 1823
    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 1826
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_1

    .line 1827
    const-string v0, "VideoActor"

    const-string v1, "effectMsg = EFFECT_MSG_PREVIEW_RUNNING"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1829
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1837
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_1

    .line 1838
    const-string v0, "VideoActor"

    const-string v1, "effectMsg = EFFECT_MSG_DONE_LEARNING"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 7
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v4, 0x0

    .line 630
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 633
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    const/16 v0, -0x44f

    if-ne p3, v0, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 636
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c00cd

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v3, 0x7f0c0087

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v5, 0x7f0c011e

    invoke-virtual {v3, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 645
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 646
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 647
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_2

    .line 650
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 652
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v1, 0x7f0c0123

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showToast(I)V

    goto :goto_0

    .line 654
    :cond_2
    const/16 v0, 0x7cf

    if-ne p2, v0, :cond_3

    .line 655
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    monitor-enter v1

    .line 657
    :try_start_0
    const-string v0, "VideoActor"

    const-string v2, "MediaRecorder camera released, notify job wait for camera release"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 659
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 660
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 662
    :cond_3
    const/16 v0, 0x7ce

    if-ne p2, v0, :cond_5

    .line 663
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mCaptureTimeLapse:Z

    if-nez v0, :cond_0

    .line 664
    const-string v0, "VideoActor"

    const-string v1, "MEDIA_RECORDER_INFO_START_TIMER--updateRecordingTime"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mWfdListenerEnabled:Z

    if-eqz v0, :cond_4

    .line 666
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->backToLastTheseCase()V

    .line 668
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J

    .line 671
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->updateRecordingTime()V

    goto :goto_0

    .line 673
    :cond_5
    const/16 v0, 0x381

    if-eq p2, v0, :cond_6

    const/16 v0, 0x382

    if-ne p2, v0, :cond_7

    .line 675
    :cond_6
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v1, 0x7f0c00b4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showToast(I)V

    goto :goto_0

    .line 676
    :cond_7
    const/16 v0, 0x383

    if-ne p2, v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showToast(I)V

    .line 678
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 865
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return v0

    .line 868
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 896
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/actor/CameraActor;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 870
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 871
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ReviewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mLearningView:Lcom/android/camera/manager/LearningView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mLearningView:Lcom/android/camera/manager/LearningView;

    invoke-virtual {v1}, Lcom/android/camera/manager/LearningView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 873
    :cond_3
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, v2}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    goto :goto_0

    .line 879
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 880
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ReviewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mLearningView:Lcom/android/camera/manager/LearningView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mLearningView:Lcom/android/camera/manager/LearningView;

    invoke-virtual {v1}, Lcom/android/camera/manager/LearningView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    :cond_4
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, v2}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    goto :goto_0

    .line 888
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 868
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 901
    packed-switch p1, :pswitch_data_0

    .line 908
    invoke-super {p0, p1, p2}, Lcom/android/camera/actor/CameraActor;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 903
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ShutterManager;->getVideoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButton;->setPressed(Z)V

    .line 904
    const/4 v0, 0x1

    goto :goto_0

    .line 901
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaEject()V
    .locals 0

    .prologue
    .line 1923
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 1924
    return-void
.end method

.method public onProtectiveCurtainClick()V
    .locals 0

    .prologue
    .line 1902
    return-void
.end method

.method public onUserInteraction()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 840
    const/4 v0, 0x1

    .line 842
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 0
    .parameter "soundId"

    .prologue
    .line 1401
    return-void
.end method

.method public readyToCapture()Z
    .locals 1

    .prologue
    .line 1404
    const/4 v0, 0x0

    return v0
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 1391
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-boolean v0, p0, Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->applyParameterForFocus(Z)V

    .line 1392
    return-void

    .line 1391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 0

    .prologue
    .line 1395
    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    .prologue
    .line 1398
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    .line 356
    sget-boolean v0, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview() mVideoContext.getCameraState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 361
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 363
    :cond_1
    return-void
.end method

.method public stopVideoOnPause()V
    .locals 5

    .prologue
    .line 912
    sget-boolean v2, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v2, :cond_0

    .line 913
    const-string v2, "VideoActor"

    const-string v3, "stopVideoOnPause()"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v0

    .line 916
    .local v0, effectsActive:Z
    const/4 v1, 0x0

    .line 917
    .local v1, videoSaving:Z
    iget-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_5

    .line 918
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/actor/VideoActor;->mEffectsDisplayResult:Z

    .line 919
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 920
    if-nez v0, :cond_1

    .line 921
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 924
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 925
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v1

    .line 930
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 931
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    .line 932
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->waitForRecorder()V

    .line 942
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/android/camera/actor/VideoActor;->LOG:Z

    if-eqz v2, :cond_4

    .line 943
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoOnPause() effectsActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", videoSaving="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mVideoSavingTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMediaRecorderRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_4
    return-void

    .line 926
    :cond_5
    if-nez v0, :cond_2

    .line 928
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    goto :goto_0

    .line 935
    :cond_6
    if-eqz v1, :cond_7

    .line 936
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->waitForRecorder()V

    goto :goto_1

    .line 939
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/actor/VideoActor;->closeVideoFileDescriptor()V

    goto :goto_1
.end method
