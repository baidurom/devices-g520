.class public Lcom/android/camera/actor/PhotoActor;
.super Lcom/android/camera/actor/CameraActor;
.source "PhotoActor.java"

# interfaces
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
.implements Landroid/hardware/Camera$ContinuousShotDone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/PhotoActor$MemoryManager;,
        Lcom/android/camera/actor/PhotoActor$CameraCategory;,
        Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;,
        Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;,
        Lcom/android/camera/actor/PhotoActor$MainHandler;,
        Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;,
        Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    }
.end annotation


# static fields
.field private static final BURST_SAVING_DONE:I = 0x65

.field private static final IMAGE_DISPLAY_DURATION:I = 0x4b0

.field private static final IMAGE_PICK_SAVING_DONE:I = 0x66

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final PARAMETER_CHANGE_DONE:I = 0x67

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final SKIP_FOCUS_ON_CAPTURE:Z = true

.field private static final START_PREVIEW_DONE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PhotoActor"

.field private static final TEMP_CROP_FILE_NAME:Ljava/lang/String; = "crop-temp"

.field private static final THUMBNAIL_REFRESH_CONTINUOUS:I = 0x1f4

.field private static final THUMBNAIL_REFRESH_NORMAL:I = 0x0

.field private static final UPDATE_DELAY_TAKEPICTURE_TIME:I = 0xc8

.field protected static sFaceDetectionStarted:Z

.field private static sIsAutoFocusCallback:Z


# instance fields
.field private final mAutoFocusCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mBurstSound:Landroid/media/SoundPool;

.field protected mCamera:Lcom/android/camera/Camera;

.field protected mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

.field protected mCameraClosed:Z

.field private mCameraKeyLongPressed:Z

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mCancelTimer:Z

.field public mCaptureStartTime:J

.field protected mCapturing:Z

.field private mContinuousJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mContinuousShotPerformed:Z

.field private mContinuousShotStartTime:J

.field private mCounterDownView:Lcom/android/camera/ui/RotateTextView;

.field private mCurrentShotsNum:I

.field private mDelayTimeRemaining:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mFocusStartTime:J

.field protected final mHandler:Landroid/os/Handler;

.field private mIgnoreClick:Z

.field private mInitialized:Z

.field public mJpegCallbackFinishTime:J

.field protected mJpegImageData:[B

.field private mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mJpegPictureCallbackTime:J

.field private mKeyHalfPressed:Z

.field private mMaxCaptureNum:I

.field private mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;

.field private mOkListener:Landroid/view/View$OnClickListener;

.field private mOnSingleTapListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPostViewPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field protected mPostViewPictureCallbackTime:J

.field private mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

.field private mRetakeListener:Landroid/view/View$OnClickListener;

.field protected mSaveRequest:Lcom/android/camera/SaveRequest;

.field private mSavingPictures:Z

.field private mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

.field private mSelftimerCounting:Z

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field protected mSnapshotOnIdle:Z

.field private mSoundID:I

.field private mStartPreview:Z

.field private mStreamID:I

.field private mSupportContinuous:Z

.field private mTimerPlayer:Lcom/android/camera/SoundPlayer;

.field private mTimerValue:I

.field private mWaitSavingDoneThread:Ljava/lang/Thread;

.field protected mZSDEnabled:Z

.field private mZSDPreviewDone:Landroid/hardware/Camera$ZSDPreviewDone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    .line 116
    sput-boolean v1, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 134
    sput-boolean v1, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/camera/actor/CameraActor;-><init>(Lcom/android/camera/Camera;)V

    .line 84
    const-string v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I

    .line 100
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCapturing:Z

    .line 106
    new-instance v0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mAutoFocusCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;

    .line 107
    new-instance v0, Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mAutoFocusMoveCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;

    .line 115
    new-instance v0, Lcom/android/camera/actor/PhotoActor$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/PhotoActor$MainHandler;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    .line 117
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mStartPreview:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    .line 125
    new-instance v0, Lcom/android/camera/actor/PhotoActor$MemoryManager;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/actor/PhotoActor$MemoryManager;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;

    .line 126
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z

    .line 128
    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    .line 133
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSupportContinuous:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    .line 140
    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mTimerValue:I

    .line 141
    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    .line 143
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCancelTimer:Z

    .line 146
    iput-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    .line 223
    new-instance v0, Lcom/android/camera/actor/PhotoActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$1;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 230
    new-instance v0, Lcom/android/camera/actor/PhotoActor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$2;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOkListener:Landroid/view/View$OnClickListener;

    .line 240
    new-instance v0, Lcom/android/camera/actor/PhotoActor$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$3;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Lcom/android/camera/actor/PhotoActor$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$4;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    .line 267
    new-instance v0, Lcom/android/camera/actor/PhotoActor$5;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$5;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mZSDPreviewDone:Landroid/hardware/Camera$ZSDPreviewDone;

    .line 278
    new-instance v0, Lcom/android/camera/actor/PhotoActor$6;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$6;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOnSingleTapListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

    .line 461
    new-instance v0, Lcom/android/camera/actor/PhotoActor$7;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$7;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 470
    new-instance v0, Lcom/android/camera/actor/PhotoActor$8;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$8;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelfTimerListener:Lcom/android/camera/manager/SelfTimerManager$SelfTimerListener;

    .line 489
    new-instance v0, Lcom/android/camera/actor/PhotoActor$9;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$9;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 516
    new-instance v0, Lcom/android/camera/actor/PhotoActor$10;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$10;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 528
    new-instance v0, Lcom/android/camera/actor/PhotoActor$11;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$11;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 607
    new-instance v0, Lcom/android/camera/actor/PhotoActor$12;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$12;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 648
    new-instance v0, Lcom/android/camera/actor/PhotoActor$13;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$13;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    .line 153
    new-instance v0, Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 155
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/actor/PhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/actor/PhotoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mStreamID:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/actor/PhotoActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/camera/actor/PhotoActor;->mStreamID:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotStartTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/camera/actor/PhotoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotStartTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/camera/actor/PhotoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mSoundID:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/camera/actor/PhotoActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/camera/actor/PhotoActor;->mSoundID:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/actor/PhotoActor;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/camera/actor/PhotoActor;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/camera/actor/PhotoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/android/camera/actor/PhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/actor/PhotoActor;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;->setSaveRequest([B)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/actor/PhotoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    return v0
.end method

.method static synthetic access$1908(Lcom/android/camera/actor/PhotoActor;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/actor/PhotoActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/actor/PhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/camera/actor/PhotoActor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/camera/actor/PhotoActor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-boolean p0, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$RenderInCapture;)Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/camera/actor/PhotoActor;)Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mZSDPreviewDone:Landroid/hardware/Camera$ZSDPreviewDone;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/camera/actor/PhotoActor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->cancelContinuousShot()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/actor/PhotoActor;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/camera/actor/PhotoActor;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->updateDelayTakePictureTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->doAttach()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->doCancel()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->restartPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/actor/PhotoActor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    return v0
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1140
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelContinuousShot()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelContinuousShot()V

    .line 355
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/actor/PhotoActor;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 356
    return-void
.end method

.method private doAttach()V
    .locals 19

    .prologue
    .line 1162
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-eqz v15, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1166
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/actor/PhotoActor;->mJpegImageData:[B

    .line 1167
    .local v5, data:[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->getSaveUri()Landroid/net/Uri;

    move-result-object v12

    .line 1168
    .local v12, saveUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->getCropValue()Ljava/lang/String;

    move-result-object v4

    .line 1170
    .local v4, cropValue:Ljava/lang/String;
    if-nez v4, :cond_5

    .line 1175
    if-eqz v12, :cond_3

    .line 1176
    const/4 v10, 0x0

    .line 1178
    .local v10, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v10

    .line 1179
    if-eqz v10, :cond_1

    .line 1180
    invoke-virtual {v10, v5}, Ljava/io/OutputStream;->write([B)V

    .line 1181
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 1184
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/Camera;->setResultExAndFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    invoke-static {v10}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1185
    :catch_0
    move-exception v6

    .line 1186
    .local v6, ex:Ljava/io/IOException;
    :try_start_1
    sget-boolean v15, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v15, :cond_2

    .line 1187
    const-string v15, "PhotoActor"

    const-string v16, "IOException, when doAttach"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    :cond_2
    invoke-static {v10}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v6           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    invoke-static {v10}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v15

    .line 1194
    .end local v10           #outputStream:Ljava/io/OutputStream;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1195
    .local v7, intent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v9

    .line 1196
    .local v9, orientation:I
    const-string v15, "OP01"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1197
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/camera/actor/PhotoActor;->setSaveRequest([B)V

    .line 1198
    new-instance v15, Lcom/android/camera/actor/PhotoActor$15;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/camera/actor/PhotoActor$15;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    invoke-virtual {v15}, Lcom/android/camera/actor/PhotoActor$15;->start()V

    .line 1205
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v15}, Lcom/android/camera/Camera;->hideReview()V

    .line 1206
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    goto/16 :goto_0

    .line 1208
    :cond_4
    const v15, 0xc800

    invoke-static {v5, v15}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1209
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v9}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v16, -0x1

    new-instance v17, Landroid/content/Intent;

    const-string v18, "inline-data"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/Camera;->setResultExAndFinish(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 1216
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #orientation:I
    :cond_5
    const/4 v14, 0x0

    .line 1217
    .local v14, tempUri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 1219
    .local v13, tempStream:Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const-string v16, "crop-temp"

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 1220
    .local v11, path:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const-string v16, "crop-temp"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v13

    .line 1222
    invoke-virtual {v13, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1223
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 1224
    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    .line 1232
    invoke-static {v13}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1235
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1236
    .local v8, newExtras:Landroid/os/Bundle;
    const-string v15, "circle"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1237
    const-string v15, "circleCrop"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :cond_6
    if-eqz v12, :cond_7

    .line 1240
    const-string v15, "output"

    invoke-virtual {v8, v15, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1245
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v15, "com.android.camera.action.CROP"

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v3, cropIntent:Landroid/content/Intent;
    invoke-virtual {v3, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1248
    invoke-virtual {v3, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1225
    .end local v3           #cropIntent:Landroid/content/Intent;
    .end local v8           #newExtras:Landroid/os/Bundle;
    .end local v11           #path:Ljava/io/File;
    :catch_1
    move-exception v6

    .line 1226
    .local v6, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/Camera;->setResultExAndFinish(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1232
    invoke-static {v13}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1228
    .end local v6           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 1229
    .local v6, ex:Ljava/io/IOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/Camera;->setResultExAndFinish(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1232
    invoke-static {v13}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v6           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v15

    invoke-static {v13}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v15

    .line 1242
    .restart local v8       #newExtras:Landroid/os/Bundle;
    .restart local v11       #path:Ljava/io/File;
    :cond_7
    const-string v15, "return-data"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private doCancel()V
    .locals 3

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->setResultExAndFinish(ILandroid/content/Intent;)V

    .line 1159
    return-void
.end method

.method private doNormalLongPressed()V
    .locals 5

    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    .line 340
    .local v1, preferenceGroup:Lcom/android/camera/PreferenceGroup;
    if-nez v1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 343
    :cond_0
    const-string v3, "pref_camera_normal_capture_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 345
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_1

    const-string v3, "Normal"

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    :cond_1
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v4, 0x7f0c00b8

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, showing:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .end local v2           #showing:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v4, 0x7f0c00b5

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #showing:Ljava/lang/String;
    goto :goto_1
.end method

.method private isBusy()Z
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FileSaver;->getWaitingCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1144
    sget-boolean v1, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 1145
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCamera.getCameraState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCamera.getFocusManager()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isSupportContinuousShot()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1473
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedCaptureMode()Ljava/util/List;

    move-result-object v0

    .line 1474
    .local v0, supportedCaptureMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "continuousshot"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private restartPreview()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 733
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    .line 734
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startPreview()V

    .line 735
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 736
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 737
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    .line 739
    return-void
.end method

.method private setSaveRequest([B)V
    .locals 2
    .parameter "jpegData"

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0, p1}, Lcom/android/camera/SaveRequest;->setData([B)V

    .line 1424
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/SaveRequest;->setIgnoreThumbnail(Z)V

    .line 1425
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->addRequest()V

    .line 1426
    return-void

    .line 1424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDelayTakePictureTime()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x0

    .line 434
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDelayTakePictureTime: mSelftimerCounting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCancelTimer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mCancelTimer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDelayTimeRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCounterDownView()Lcom/android/camera/ui/RotateTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    .line 437
    iget v1, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    if-lez v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mTimerPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v1}, Lcom/android/camera/SoundPlayer;->play()V

    .line 439
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    iget v2, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 442
    .local v0, selftTimer:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 443
    iget v1, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    add-int/lit16 v1, v1, -0x3e8

    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    .line 444
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 458
    .end local v0           #selftTimer:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    iget v1, p0, Lcom/android/camera/actor/PhotoActor;->mTimerValue:I

    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    .line 449
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCancelTimer:Z

    if-eqz v1, :cond_1

    .line 450
    iput-boolean v4, p0, Lcom/android/camera/actor/PhotoActor;->mCancelTimer:Z

    goto :goto_0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->doSnap()V

    .line 454
    iput-boolean v4, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 776
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 777
    const-string v0, "PhotoActor"

    const-string v1, "autoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mFocusStartTime:J

    .line 780
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mAutoFocusCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 781
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 782
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 784
    invoke-virtual {p0, v2}, Lcom/android/camera/actor/PhotoActor;->playSound(I)V

    .line 787
    return-void
.end method

.method protected calculateShutterTime()V
    .locals 4

    .prologue
    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J

    .line 510
    iget-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J

    iget-wide v2, p0, Lcom/android/camera/actor/PhotoActor;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterLag:J

    .line 511
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/actor/PhotoActor;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 791
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 792
    const-string v0, "PhotoActor"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 795
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 797
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 799
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 800
    return-void
.end method

.method public capture()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 546
    .local v0, start:J
    sget-boolean v4, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v4, :cond_0

    .line 547
    const-string v4, "PhotoActor"

    const-string v5, "capture begin"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v4

    if-eq v4, v9, :cond_1

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 553
    :cond_1
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 580
    :goto_0
    return v2

    .line 556
    :cond_2
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileTakePicture()V

    .line 557
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mCapturing:Z

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/actor/PhotoActor;->mCaptureStartTime:J

    .line 559
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallbackTime:J

    .line 560
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mJpegImageData:[B

    .line 561
    iget-object v4, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->preparePhotoRequest()Lcom/android/camera/SaveRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    .line 562
    iget-boolean v4, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v4, :cond_3

    .line 563
    iput v2, p0, Lcom/android/camera/actor/PhotoActor;->mStreamID:I

    .line 565
    :cond_3
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v4}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->ensureCaptureTempPath()V

    .line 566
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v4}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->applySpecialCapture()Z

    move-result v4

    if-nez v4, :cond_4

    .line 567
    iget-object v4, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->getShutterCallback()Landroid/hardware/Camera$ShutterCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->getJpegPictureCallback()Landroid/hardware/Camera$PictureCallback;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 570
    :cond_4
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-boolean v6, p0, Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->animateCapture(Lcom/android/camera/Camera;Z)V

    .line 571
    sput-boolean v2, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 572
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4, v9}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 573
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 574
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->showRemaining()V

    .line 575
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-boolean v5, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v5, :cond_5

    const/4 v2, 0x2

    :cond_5
    invoke-virtual {v4, v2}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 576
    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v2, :cond_6

    .line 577
    const-string v2, "PhotoActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capture time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_6
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileTakePicture()V

    move v2, v3

    .line 580
    goto/16 :goto_0
.end method

.method public doSmileShutter()Z
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public enableCameraControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1155
    return-void
.end method

.method public getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 2

    .prologue
    .line 601
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 602
    const-string v0, "PhotoActor"

    const-string v1, "PhotoActor.getAutoFocusMoveCallback"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mAutoFocusMoveCallback:Lcom/android/camera/actor/PhotoActor$AutoFocusMoveCallback;

    return-object v0
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getContinuousShotDone()Landroid/hardware/Camera$ContinuousShotDone;
    .locals 0

    .prologue
    .line 593
    return-object p0
.end method

.method public getErrorCallback()Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .prologue
    .line 879
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    return-object v0
.end method

.method public getFaceDetectionListener()Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method public getFocusManagerListener()Lcom/android/camera/FocusManager$Listener;
    .locals 0

    .prologue
    .line 821
    return-object p0
.end method

.method public getJpegPictureCallback()Landroid/hardware/Camera$PictureCallback;
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 588
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOkListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 0

    .prologue
    .line 859
    return-object p0
.end method

.method public getRetakeListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRetakeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getShutterCallback()Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method public getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mOnSingleTapListener:Lcom/android/camera/Camera$OnSingleTapUpListener;

    return-object v0
.end method

.method public handleFocus()Z
    .locals 3

    .prologue
    .line 1349
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    if-eqz v1, :cond_1

    .line 1350
    const-string v0, "auto"

    .line 1351
    .local v0, focusMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/SettingChecker;->isSupported(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1353
    const-string v0, "infinity"

    .line 1355
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1356
    const/4 v1, 0x1

    .line 1359
    .end local v0           #focusMode:Ljava/lang/String;
    :goto_0
    return v1

    .line 1358
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1359
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initializeAfterPreview()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 910
    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v2, :cond_0

    .line 911
    const-string v2, "PhotoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeAfterPreview mCamera.getCameraDevice()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_2

    .line 984
    :cond_1
    :goto_0
    return-void

    .line 917
    :cond_2
    sput-boolean v7, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    .line 919
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v1

    .line 921
    .local v1, selfTimer:Ljava/lang/String;
    iput-boolean v7, p0, Lcom/android/camera/actor/PhotoActor;->mCancelTimer:Z

    .line 922
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/actor/PhotoActor;->mTimerValue:I

    .line 924
    iget v2, p0, Lcom/android/camera/actor/PhotoActor;->mTimerValue:I

    if-lez v2, :cond_3

    .line 925
    new-instance v2, Lcom/android/camera/SoundPlayer;

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mTimerPlayer:Lcom/android/camera/SoundPlayer;

    .line 932
    :cond_3
    const-string v2, "on"

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/camera/SettingChecker;->getParameterValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z

    .line 935
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->getMode()I

    move-result v2

    if-nez v2, :cond_4

    .line 936
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I

    .line 939
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isSupportContinuousShot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSupportContinuous:Z

    .line 941
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 943
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 944
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v6}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 948
    :cond_5
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->enableFD(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 949
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    .line 955
    :goto_1
    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v2, :cond_6

    .line 956
    const-string v2, "PhotoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selfTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-nez v2, :cond_1

    .line 963
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->initializeFaceView()V

    .line 965
    iget-object v2, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    const v3, 0x7f0b00b6

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 966
    .local v0, GpsIndicator:Landroid/widget/ImageView;
    if-eqz v0, :cond_7

    .line 967
    sget-boolean v2, Lcom/android/camera/Camera;->mIsGpsOpen:Z

    if-eqz v2, :cond_7

    .line 968
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 972
    :cond_7
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v2}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->initializeFirstTime()V

    .line 973
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v2, :cond_8

    .line 974
    new-instance v2, Landroid/media/MediaActionSound;

    invoke-direct {v2}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    .line 976
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v2, v6}, Landroid/media/MediaActionSound;->load(I)V

    .line 979
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 983
    :cond_8
    iput-boolean v6, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    goto/16 :goto_0

    .line 951
    .end local v0           #GpsIndicator:Landroid/widget/ImageView;
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopFaceDetection()V

    goto :goto_1
.end method

.method public initializeFaceView()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1406
    sget-boolean v4, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v4, :cond_0

    .line 1407
    const-string v4, "PhotoActor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeFaceView sFaceDetectionStarted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_0
    sget-boolean v4, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    if-nez v4, :cond_1

    .line 1420
    :goto_0
    return-void

    .line 1412
    :cond_1
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    .line 1413
    .local v0, faceView:Lcom/android/camera/ui/FaceView;
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1414
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1415
    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getDisplayOrientation()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1416
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v5

    aget-object v1, v4, v5

    .line 1417
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1418
    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1419
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1417
    goto :goto_1
.end method

.method public interruptRenderThread()V
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$RenderInCapture;->interrupt()V

    .line 1366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    .line 1368
    :cond_0
    return-void
.end method

.method public isCameraPrepareDone()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1095
    sget-boolean v3, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v3, :cond_0

    .line 1096
    const-string v3, "PhotoActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check camera state in ModeActor, mCameraState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCameraClosed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_0
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    .line 1100
    .local v0, cameraState:I
    iget-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_2

    .line 1136
    :cond_1
    :goto_0
    return v1

    .line 1107
    :cond_2
    invoke-static {}, Lcom/android/camera/Storage;->getLeftSpace()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 1108
    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v2, :cond_1

    .line 1109
    const-string v2, "PhotoActor"

    const-string v3, "Not enough space or storage not ready."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1114
    :cond_3
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/manager/SelfTimerManager;->isSelfTimerCounting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1123
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    iget-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1126
    iput-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 1130
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1131
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v4, 0x7f0c0086

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1135
    :cond_6
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    move v1, v2

    .line 1136
    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1061
    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v2, :cond_0

    .line 1062
    const-string v2, "PhotoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackPressed() isFinishing()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->isCameraIdle()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1065
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    if-eqz v2, :cond_2

    .line 1067
    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCancelTimer:Z

    .line 1068
    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    .line 1070
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1071
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1073
    :cond_1
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 1076
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 1077
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1078
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1079
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 1081
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getShutterType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1082
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCancelListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1090
    :cond_3
    :goto_0
    return v0

    .line 1086
    :cond_4
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v2}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->doCancelCapture()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1090
    goto :goto_0
.end method

.method public onBurstSaveDone()V
    .locals 1

    .prologue
    .line 1479
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->cancelContinuousShot()V

    .line 1481
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->restartPreview()V

    .line 1483
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    .line 1484
    return-void
.end method

.method public onCameraClose()V
    .locals 3

    .prologue
    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 826
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 827
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClose mCameraClosed ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 831
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 833
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopPreview()V

    .line 834
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->resetPhotoActor()V

    .line 835
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->onLeaveActor()V

    .line 836
    return-void
.end method

.method public onCameraOpenDone()V
    .locals 2

    .prologue
    .line 889
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 890
    const-string v0, "PhotoActor"

    const-string v1, "onCameraOpenDone"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 893
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 3
    .parameter "startPreview"

    .prologue
    .line 897
    invoke-super {p0, p1}, Lcom/android/camera/actor/CameraActor;->onCameraParameterReady(Z)V

    .line 898
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 899
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraParameterReady startPreview="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    if-eqz p1, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->startPreview()V

    .line 903
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onConinuousShotDone(I)V
    .locals 4
    .parameter "capNum"

    .prologue
    const/4 v3, 0x1

    .line 1443
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1444
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotDone, pictures saved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_0
    new-instance v0, Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    .line 1447
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1448
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 1449
    return-void
.end method

.method public onImagePickSaveDone()V
    .locals 3

    .prologue
    .line 1487
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1489
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-interface {v1}, Lcom/android/camera/SaveRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1490
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->setResultExAndFinish(ILandroid/content/Intent;)V

    .line 1492
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1256
    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v2, :cond_0

    .line 1257
    const-string v2, "PhotoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1308
    :cond_1
    :goto_0
    return v0

    .line 1261
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1263
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 1264
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/SelfTimerManager;->isSelfTimerEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1270
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->canTakePicture()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1273
    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    .line 1274
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 1278
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1280
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 1281
    goto :goto_0

    .line 1283
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V

    .line 1284
    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    goto :goto_0

    .line 1288
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 1291
    iget-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1295
    invoke-virtual {p0, v5, v0}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 1296
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getPhotoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1297
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getPhotoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ShutterButton;->requestFocusFromTouch()Z

    .line 1301
    :goto_1
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getPhotoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ShutterButton;->setPressed(Z)V

    goto/16 :goto_0

    .line 1299
    :cond_3
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ShutterManager;->getPhotoShutter()Lcom/android/camera/ui/ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 1259
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1313
    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v2, :cond_0

    .line 1314
    const-string v2, "PhotoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1344
    :cond_1
    :goto_0
    return v0

    .line 1318
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v2, :cond_1

    .line 1319
    invoke-virtual {p0, v5, v1}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 1320
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/manager/SelfTimerManager;->isSelfTimerEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1324
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z

    .line 1325
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_0

    .line 1329
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mInitialized:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1333
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 1334
    goto :goto_0

    .line 1337
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 1339
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraKeyLongPressed:Z

    goto :goto_0

    .line 1316
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1041
    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    if-eqz v2, :cond_1

    .line 1042
    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCancelTimer:Z

    .line 1043
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 1044
    iget v1, p0, Lcom/android/camera/actor/PhotoActor;->mTimerValue:I

    iput v1, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    .line 1045
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1046
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 1048
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mTimerPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mTimerPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v1}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1050
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mTimerPlayer:Lcom/android/camera/SoundPlayer;

    .line 1055
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onPreviewStartDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1433
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-eqz v0, :cond_1

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1437
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    const/4 v3, 0x0

    .line 408
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerPhotoShutterClick()V

    .line 412
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->isCameraPrepareDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mTimerValue:I

    if-eqz v0, :cond_2

    .line 415
    iget v0, p0, Lcom/android/camera/actor/PhotoActor;->mTimerValue:I

    iput v0, p0, Lcom/android/camera/actor/PhotoActor;->mDelayTimeRemaining:I

    .line 417
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mCancelTimer:Z

    .line 419
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 421
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 430
    :cond_1
    :goto_0
    return-void

    .line 425
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 428
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->doSnap()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 5
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 360
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonFocus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContinuousShotPerformed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCameraClosed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " camera.state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 368
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSupportContinuous:Z

    if-nez v0, :cond_3

    .line 369
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_2

    .line 404
    :cond_2
    :goto_0
    return-void

    .line 387
    :cond_3
    if-nez p2, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_5

    .line 388
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_4

    .line 389
    const-string v0, "PhotoActor"

    const-string v1, "Button up Msg received, start to Cancel continuous shot"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_4
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    .line 393
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 394
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->cancelContinuousShot()V

    .line 395
    invoke-virtual {p0, v4, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 396
    iput-boolean v4, p0, Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z

    .line 402
    :cond_5
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z

    goto :goto_0

    .line 399
    :cond_6
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->cancelContinuousShot()V

    goto :goto_1
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 316
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonLongPressed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSupportContinuous:Z

    if-nez v0, :cond_3

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/actor/PhotoActor;->doNormalLongPressed()V

    .line 336
    :cond_2
    :goto_0
    return-void

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->isCameraPrepareDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-static {}, Lcom/android/camera/Util;->clearMemoryLimit()V

    .line 328
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->initMemory()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    .line 331
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyContinousShot()V

    .line 332
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailManager()Lcom/android/camera/manager/ThumbnailManager;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ThumbnailManager;->setRefreshInterval(I)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->clearFocusOnContinuous()V

    .line 334
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->doSnap()V

    goto :goto_0
.end method

.method public onUserInteraction()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 809
    return-void
.end method

.method public readyToCapture()Z
    .locals 1

    .prologue
    .line 1429
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/actor/PhotoActor;->mSoundID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 844
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->resetPhotoActor()V

    .line 845
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->onLeaveActor()V

    .line 846
    return-void
.end method

.method protected resetPhotoActor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1495
    sput-boolean v1, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    .line 1496
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/SelfTimerManager;->breakTimer()V

    .line 1498
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1501
    return-void
.end method

.method public setFocusParameters()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 813
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 814
    const-string v0, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusParameters sIsAutoFocusCallback ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->applyParameterForFocus(Z)V

    .line 817
    sput-boolean v1, Lcom/android/camera/actor/PhotoActor;->sIsAutoFocusCallback:Z

    .line 818
    return-void

    :cond_1
    move v0, v1

    .line 816
    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 3

    .prologue
    .line 1371
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1372
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFaceDetection sFaceDetectionStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_0
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->enableFD(Lcom/android/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1383
    :cond_1
    :goto_0
    return-void

    .line 1377
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_1

    .line 1378
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 1379
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->initializeFaceView()V

    .line 1381
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1006
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1007
    const-string v0, "PhotoActor"

    const-string v1, "PhotoActor.startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/PhotoActor$14;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/PhotoActor$14;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1014
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopPreview()V

    .line 1016
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    if-nez v0, :cond_2

    .line 1020
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeLock(Z)V

    .line 1026
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAwbLock(Z)V

    .line 1029
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->setFocusParameters()V

    .line 1030
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1031
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mStartPreview:Z

    .line 1033
    iget-boolean v0, p0, Lcom/android/camera/actor/PhotoActor;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_3

    .line 1034
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1036
    :cond_3
    return-void
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    .line 1386
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1387
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopFaceDetection sFaceDetectionStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    if-nez v0, :cond_2

    .line 1399
    :cond_1
    :goto_0
    return-void

    .line 1392
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_1

    .line 1393
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 1394
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 1395
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 988
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 989
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview() mCamera.getCameraState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 994
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 995
    iput-boolean v3, p0, Lcom/android/camera/actor/PhotoActor;->mStartPreview:Z

    .line 996
    sput-boolean v3, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 999
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 1003
    :cond_2
    return-void
.end method

.method protected updateSavingHint(ZZ)V
    .locals 6
    .parameter "bSaving"
    .parameter "shotDone"

    .prologue
    const/4 v4, 0x1

    .line 1456
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 1457
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSavingHint, saving = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shotDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_0
    if-eqz p1, :cond_2

    .line 1460
    if-nez p2, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v2, 0x7f0c00b7

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showProgress(Ljava/lang/String;)V

    .line 1470
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c008d

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->dismissProgress()V

    .line 1468
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0
.end method
