.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/CameraScreenNail$FrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$CameraStartUpThread;,
        Lcom/android/camera/Camera$OnSingleTapUpListener;,
        Lcom/android/camera/Camera$OnFullScreenChangedListener;,
        Lcom/android/camera/Camera$Resumable;,
        Lcom/android/camera/Camera$OnPreferenceReadyListener;,
        Lcom/android/camera/Camera$OnParametersReadyListener;,
        Lcom/android/camera/Camera$OnOrientationListener;
    }
.end annotation


# static fields
.field private static final DELAY_MSG_SCREEN_SWITCH:I = 0x1d4c0

.field private static final DELAY_MSG_SHOW_ONSCREEN_VIEW:I = 0xbb8

.field private static final ENGINE_ACCESS_MAX_TIMEOUT_MS:I = 0x1f4

.field private static final EXTRA_PHOTO_CROP_VALUE:Ljava/lang/String; = "crop"

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final EXTRA_VIDEO_WALLPAPER_IDENTIFY:Ljava/lang/String; = "identity"

.field private static final EXTRA_VIDEO_WALLPAPER_IDENTIFY_VALUE:Ljava/lang/String; = "com.mediatek.vlw"

.field private static final EXTRA_VIDEO_WALLPAPER_RATION:Ljava/lang/String; = "ratio"

.field private static final GPS_MSG:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final MSG_APPLY_PARAMETERS_WHEN_IDEL:I = 0x12

.field private static final MSG_CAMERA_OPEN_DONE:I = 0x1

.field private static final MSG_CAMERA_PARAMETERS_READY:I = 0x2

.field private static final MSG_CAMERA_PREFERENCE_READY:I = 0x3

.field private static final MSG_CHECK_DISPLAY_ROTATION:I = 0x4

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x7

.field private static final MSG_FIRST_FRAME_ARRIVED:I = 0x11

.field private static final MSG_OPEN_CAMERA_DISABLED:I = 0xd

.field private static final MSG_OPEN_CAMERA_FAIL:I = 0xc

.field private static final MSG_SHOW_ONSCREEN_INDICATOR:I = 0x8

.field private static final MSG_SHOW_VIEW_STATE:I = 0xb

.field private static final MSG_SWITCH_CAMERA:I = 0x5

.field private static final MSG_SWITCH_CAMERA_START_ANIMATION:I = 0x6

.field private static final PICK_TYPE_NORMAL:I = 0x0

.field private static final PICK_TYPE_PHOTO:I = 0x1

.field private static final PICK_TYPE_VIDEO:I = 0x2

.field private static final PICK_TYPE_WALLPAPER:I = 0x3

.field public static final STATE_FOCUSING:I = 0x2

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREVIEW_STOPPED:I = 0x0

.field public static final STATE_RECORDING_IN_PROGRESS:I = 0x3

.field public static final STATE_SNAPSHOT_IN_PROGRESS:I = 0x3

.field public static final STATE_SWITCHING_CAMERA:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Camera"

.field public static final UNKNOWN:I = -0x1

.field public static final VIEW_STATE_CAPTURE:I = 0x0

.field public static final VIEW_STATE_CONTINIUOUS:I = 0x2

.field public static final VIEW_STATE_FOCUSING:I = 0x4

.field private static final VIEW_STATE_NORMAL:I = -0x1

.field public static final VIEW_STATE_PANORAMA_CAPTURE:I = 0x9

.field public static final VIEW_STATE_PICKING:I = 0x8

.field public static final VIEW_STATE_RECORDING:I = 0x1

.field private static final VIEW_STATE_REVIEW:I = 0x6

.field private static final VIEW_STATE_SAVING:I = 0x5

.field public static final VIEW_STATE_SETTING:I = 0x3

.field private static final VIEW_STATE_SWITCHING:I = 0x7

.field private static final WALLPAPER_DEFAULT_ASPECTIO:F = 1.2f

.field private static final WALLPAPER_MIN_WIDTH:I = 0x12c

.field public static mIsGpsOpen:Z


# instance fields
.field private mCameraActor:Lcom/android/camera/actor/CameraActor;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

.field private mCameraState:I

.field private mCommonManagerCount:I

.field private mCounterDownView:Lcom/android/camera/ui/RotateTextView;

.field private mCropValue:Ljava/lang/String;

.field private mCurrentViewState:I

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFileSaver:Lcom/android/camera/FileSaver;

.field private mFlashMode:Ljava/lang/String;

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusManager:Lcom/android/camera/FocusManager;

.field private mForceFinishing:Z

.field private mFullScreenListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$OnFullScreenChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsIndicator:Landroid/widget/ImageView;

.field private mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoManager:Lcom/android/camera/manager/InfoManager;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mLastAudioBitRate:I

.field private mLastManagers:[Lcom/android/camera/manager/ViewManager;

.field private mLastMode:I

.field private mLastPictureSize:Landroid/hardware/Camera$Size;

.field private mLastPreviewSize:Landroid/hardware/Camera$Size;

.field private mLastVideoBitRate:I

.field private mLastVisibles:[Z

.field private mLastZsdMode:Ljava/lang/String;

.field private mLimitedDuration:I

.field private mLimitedSize:J

.field mLocLisListener:Lcom/android/camera/LocationManager$Listener;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMainHandler:Landroid/os/Handler;

.field private mModeChangedListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

.field private mModePicker:Lcom/android/camera/manager/ModePicker;

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mOrientationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$OnOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParametersListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$OnParametersReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSwitchCameraId:I

.field private mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mPickType:I

.field private mPickerListener:Lcom/android/camera/manager/PickerManager$PickerListener;

.field private mPickerManager:Lcom/android/camera/manager/PickerManager;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferenceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$OnPreferenceReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameHeight:I

.field private mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

.field private mPreviewFrameWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQualityId:I

.field private mQuickCapture:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemainingManager:Lcom/android/camera/manager/RemainingManager;

.field private mResumables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Camera$Resumable;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewManager:Lcom/android/camera/manager/ReviewManager;

.field private mRotateDialog:Lcom/android/camera/manager/RotateDialog;

.field private mRotateProgress:Lcom/android/camera/manager/RotateProgress;

.field private mRotateToast:Lcom/android/camera/manager/OnScreenHint;

.field private mSaveUri:Landroid/net/Uri;

.field private mSettingChecker:Lcom/android/camera/SettingChecker;

.field private mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

.field private mSettingManager:Lcom/android/camera/manager/SettingManager;

.field private mShutterManager:Lcom/android/camera/manager/ShutterManager;

.field private mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mStereoMode:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

.field private mTimelapseMs:I

.field private mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mViewLayerBottom:Landroid/view/ViewGroup;

.field private mViewLayerNormal:Landroid/view/ViewGroup;

.field private mViewLayerOverlay:Landroid/view/ViewGroup;

.field private mViewLayerSetting:Landroid/view/ViewGroup;

.field private mViewLayerShutter:Landroid/view/ViewGroup;

.field private mViewManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/manager/ViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperAspectio:F

.field private mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

.field private mWfdLocal:Lcom/android/camera/WfdManagerLocal;

.field private mZoomManager:Lcom/android/camera/manager/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    .line 223
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/Camera;->mIsGpsOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 92
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 126
    iput v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 134
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 146
    iput v1, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 157
    iput v1, p0, Lcom/android/camera/Camera;->mOrientation:I

    .line 160
    iput v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    .line 228
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    .line 386
    iput v1, p0, Lcom/android/camera/Camera;->mLastAudioBitRate:I

    .line 387
    iput v1, p0, Lcom/android/camera/Camera;->mLastVideoBitRate:I

    .line 1245
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    .line 1265
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferenceListeners:Ljava/util/List;

    .line 1281
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mParametersListeners:Ljava/util/List;

    .line 1300
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    .line 1375
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    .line 1414
    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mModeChangedListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    .line 1518
    new-instance v0, Lcom/android/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 1576
    new-instance v0, Lcom/android/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 1789
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1870
    new-instance v0, Lcom/android/camera/Camera$14;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$14;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    .line 1988
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    .line 2134
    new-instance v0, Lcom/android/camera/Camera$15;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$15;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPickerListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    .line 2469
    new-instance v0, Lcom/android/camera/Camera$16;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$16;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2578
    iput v1, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    .line 2886
    new-instance v0, Lcom/android/camera/Camera$21;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$21;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    .line 2898
    new-instance v0, Lcom/android/camera/Camera$22;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$22;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocLisListener:Lcom/android/camera/LocationManager$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/Camera;Lcom/android/camera/Camera$CameraStartUpThread;)Lcom/android/camera/Camera$CameraStartUpThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->notifyParametersReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->doOnFirstFrameArrived()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->applyParameters(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;Lcom/android/camera/ComboPreferences;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/Camera;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->notifyPreferenceReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSurfaceTexture()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCameraPreferences()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearDeviceCallbacks()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->applyDeviceCallbacks()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearViewCallbacks()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->applayViewCallbacks()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/SettingChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mLastMode:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/Camera;->mLastMode:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)Lcom/android/camera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager$SettingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ZoomManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ReviewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    return p1
.end method

.method static synthetic access$4402(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/Camera;->mFlashMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mStereoMode:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->refreshModeRelated()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/Camera;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->isSameStorage(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ThumbnailManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;)Lcom/android/camera/manager/IndicatorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->showIndicator(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShutterManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->notifyOrientationChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchCamera()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/Camera;->doShowIndicator()V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 2859
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 2860
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$20;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$20;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2867
    return-void
.end method

.method private applayViewCallbacks()V
    .locals 5

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPhotoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    iget-object v2, p0, Lcom/android/camera/Camera;->mVideoShutterListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v3}, Lcom/android/camera/actor/CameraActor;->getOkListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v4}, Lcom/android/camera/actor/CameraActor;->getCancelListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/manager/ShutterManager;->setShutterListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 1484
    return-void
.end method

.method private applyDeviceCallbacks()V
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getASDCallback()Landroid/hardware/Camera$ASDCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setASDCallback(Landroid/hardware/Camera$ASDCallback;)V

    .line 1494
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getContinuousShotDone()Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCShotDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V

    .line 1495
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getErrorCallback()Landroid/hardware/Camera$ErrorCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1496
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getFaceDetectionListener()Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1497
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getMAVCallback()Landroid/hardware/Camera$MAVCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    .line 1499
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getSmileCallback()Landroid/hardware/Camera$SmileCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    .line 1502
    :cond_0
    return-void
.end method

.method private applyParameterForCapture(Lcom/android/camera/SaveRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 1687
    new-instance v0, Lcom/android/camera/Camera$8;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/SaveRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 1701
    return-void
.end method

.method private applyParameters(Z)V
    .locals 14
    .parameter "force"

    .prologue
    const/4 v13, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 389
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelApplyParameters()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    new-instance v11, Lcom/android/camera/Camera$2;

    invoke-direct {v11, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v11}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 400
    iget-object v11, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 401
    .local v4, curPictureSize:Landroid/hardware/Camera$Size;
    iget-object v11, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 402
    .local v5, curPreviewSize:Landroid/hardware/Camera$Size;
    iget-object v11, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getZSDMode()Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, curZsd:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/camera/Camera;->mLastPreviewSize:Landroid/hardware/Camera$Size;

    invoke-virtual {v5, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    move v2, v9

    .line 404
    .local v2, changedPreviewSize:Z
    :goto_1
    iget-object v11, p0, Lcom/android/camera/Camera;->mLastPictureSize:Landroid/hardware/Camera$Size;

    invoke-virtual {v4, v11}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    move v1, v9

    .line 405
    .local v1, changedPictureSize:Z
    :goto_2
    if-nez v6, :cond_c

    iget-object v11, p0, Lcom/android/camera/Camera;->mLastZsdMode:Ljava/lang/String;

    if-eqz v11, :cond_b

    move v3, v9

    .line 406
    .local v3, changedZsd:Z
    :goto_3
    if-nez v3, :cond_2

    if-nez v2, :cond_2

    if-eqz p1, :cond_e

    :cond_2
    move v7, v9

    .line 407
    .local v7, needRestart:Z
    :goto_4
    const/4 v8, 0x0

    .line 408
    .local v8, vBRateChanged:Z
    const/4 v0, 0x0

    .line 409
    .local v0, aBRateChanged:Z
    iget-object v11, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v11, :cond_3

    .line 410
    iget v11, p0, Lcom/android/camera/Camera;->mLastVideoBitRate:I

    if-ne v11, v13, :cond_f

    move v8, v9

    .line 411
    :goto_5
    iget v11, p0, Lcom/android/camera/Camera;->mLastAudioBitRate:I

    if-ne v11, v13, :cond_11

    move v0, v9

    .line 413
    :cond_3
    :goto_6
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelApplyParameters()Z

    move-result v9

    if-nez v9, :cond_0

    .line 416
    iget-object v9, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v10, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v9, v10}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 417
    if-eqz v7, :cond_4

    .line 418
    iget-object v9, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v9}, Lcom/android/camera/actor/CameraActor;->stopPreview()V

    .line 419
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSurfaceTexture()V

    .line 421
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelApplyParameters()Z

    move-result v9

    if-nez v9, :cond_0

    .line 424
    new-instance v9, Lcom/android/camera/Camera$3;

    invoke-direct {v9, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v9}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 431
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelApplyParameters()Z

    move-result v9

    if-nez v9, :cond_0

    .line 434
    if-eqz v2, :cond_5

    .line 438
    invoke-virtual {p0}, Lcom/android/camera/Camera;->fetchParametersFromServer()Landroid/hardware/Camera$Parameters;

    .line 440
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelApplyParameters()Z

    move-result v9

    if-nez v9, :cond_0

    .line 444
    iget-object v9, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 445
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez p1, :cond_6

    if-nez v8, :cond_6

    if-eqz v0, :cond_7

    .line 446
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/Camera;->showRemainingAways()V

    .line 448
    :cond_7
    iget-object v9, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v9, v7}, Lcom/android/camera/actor/CameraActor;->onCameraParameterReady(Z)V

    .line 449
    sget-boolean v9, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v9, :cond_8

    .line 450
    const-string v9, "Camera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applyParameters("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") picturesize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " previewsize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " oldPictureSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/Camera;->mLastPictureSize:Landroid/hardware/Camera$Size;

    invoke-static {v11}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " oldPreviewSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/Camera;->mLastPreviewSize:Landroid/hardware/Camera$Size;

    invoke-static {v11}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " changedPreviewSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", changedPictureSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " oldZsd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/Camera;->mLastZsdMode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", curZsd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", changedZsd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " vBRateChanged="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", aBRateChanged="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_8
    iput-object v4, p0, Lcom/android/camera/Camera;->mLastPictureSize:Landroid/hardware/Camera$Size;

    .line 459
    iput-object v5, p0, Lcom/android/camera/Camera;->mLastPreviewSize:Landroid/hardware/Camera$Size;

    .line 460
    iput-object v6, p0, Lcom/android/camera/Camera;->mLastZsdMode:Ljava/lang/String;

    .line 461
    iget-object v9, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v9, :cond_0

    .line 462
    iget-object v9, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v9, p0, Lcom/android/camera/Camera;->mLastVideoBitRate:I

    .line 463
    iget-object v9, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v9, p0, Lcom/android/camera/Camera;->mLastAudioBitRate:I

    goto/16 :goto_0

    .end local v0           #aBRateChanged:Z
    .end local v1           #changedPictureSize:Z
    .end local v2           #changedPreviewSize:Z
    .end local v3           #changedZsd:Z
    .end local v7           #needRestart:Z
    .end local v8           #vBRateChanged:Z
    :cond_9
    move v2, v10

    .line 403
    goto/16 :goto_1

    .restart local v2       #changedPreviewSize:Z
    :cond_a
    move v1, v10

    .line 404
    goto/16 :goto_2

    .restart local v1       #changedPictureSize:Z
    :cond_b
    move v3, v10

    .line 405
    goto/16 :goto_3

    :cond_c
    iget-object v11, p0, Lcom/android/camera/Camera;->mLastZsdMode:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    move v3, v9

    goto/16 :goto_3

    :cond_d
    move v3, v10

    goto/16 :goto_3

    .restart local v3       #changedZsd:Z
    :cond_e
    move v7, v10

    .line 406
    goto/16 :goto_4

    .line 410
    .restart local v0       #aBRateChanged:Z
    .restart local v7       #needRestart:Z
    .restart local v8       #vBRateChanged:Z
    :cond_f
    iget v11, p0, Lcom/android/camera/Camera;->mLastVideoBitRate:I

    iget-object v12, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoBitRate:I

    if-eq v11, v12, :cond_10

    move v8, v9

    goto/16 :goto_5

    :cond_10
    move v8, v10

    goto/16 :goto_5

    .line 411
    :cond_11
    iget v11, p0, Lcom/android/camera/Camera;->mLastAudioBitRate:I

    iget-object v12, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->audioBitRate:I

    if-eq v11, v12, :cond_12

    move v0, v9

    goto/16 :goto_6

    :cond_12
    move v0, v10

    goto/16 :goto_6
.end method

.method private callResumableBegin()V
    .locals 3

    .prologue
    .line 1388
    iget-object v2, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$Resumable;

    .line 1389
    .local v1, resumable:Lcom/android/camera/Camera$Resumable;
    invoke-interface {v1}, Lcom/android/camera/Camera$Resumable;->begin()V

    goto :goto_0

    .line 1391
    .end local v1           #resumable:Lcom/android/camera/Camera$Resumable;
    :cond_0
    return-void
.end method

.method private callResumableFinish()V
    .locals 3

    .prologue
    .line 1406
    iget-object v2, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$Resumable;

    .line 1407
    .local v1, resumable:Lcom/android/camera/Camera$Resumable;
    invoke-interface {v1}, Lcom/android/camera/Camera$Resumable;->finish()V

    goto :goto_0

    .line 1409
    .end local v1           #resumable:Lcom/android/camera/Camera$Resumable;
    :cond_0
    return-void
.end method

.method private callResumablePause()V
    .locals 3

    .prologue
    .line 1400
    iget-object v2, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$Resumable;

    .line 1401
    .local v1, resumable:Lcom/android/camera/Camera$Resumable;
    invoke-interface {v1}, Lcom/android/camera/Camera$Resumable;->pause()V

    goto :goto_0

    .line 1403
    .end local v1           #resumable:Lcom/android/camera/Camera$Resumable;
    :cond_0
    return-void
.end method

.method private callResumableResume()V
    .locals 3

    .prologue
    .line 1394
    iget-object v2, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$Resumable;

    .line 1395
    .local v1, resumable:Lcom/android/camera/Camera$Resumable;
    invoke-interface {v1}, Lcom/android/camera/Camera$Resumable;->resume()V

    goto :goto_0

    .line 1397
    .end local v1           #resumable:Lcom/android/camera/Camera$Resumable;
    :cond_0
    return-void
.end method

.method private cancelApplyParameters()Z
    .locals 4

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 469
    .local v0, cancel:Z
    :goto_0
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 470
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelApplyParameters() mCameraDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mParameters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPaused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    return v0

    .line 468
    .end local v0           #cancel:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearDeviceCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1505
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setASDCallback(Landroid/hardware/Camera$ASDCallback;)V

    .line 1507
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 1508
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setCShotDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V

    .line 1509
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1510
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1511
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    .line 1512
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    .line 1513
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    .line 1514
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1516
    :cond_0
    return-void
.end method

.method private clearFocusAndFace()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 719
    :cond_1
    return-void
.end method

.method private clearViewCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1487
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/camera/manager/ShutterManager;->setShutterListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 1488
    return-void
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    .line 350
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCamera() mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->onCameraClose()V

    .line 355
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearDeviceCallbacks()V

    .line 356
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 357
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 360
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 363
    :cond_2
    return-void
.end method

.method private doOnFirstFrameArrived()V
    .locals 2

    .prologue
    .line 903
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 904
    const-string v0, "Camera"

    const-string v1, "doOnFirstFrameArrived()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setLoadingAnimationVisible(Z)V

    .line 907
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileFirstFrameAvailable()V

    .line 908
    return-void
.end method

.method private doOnResume()V
    .locals 8

    .prologue
    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 700
    .local v0, start:J
    iget-object v4, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v4}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 701
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 702
    invoke-direct {p0}, Lcom/android/camera/Camera;->callResumableResume()V

    .line 704
    invoke-virtual {p0}, Lcom/android/camera/Camera;->applyGPSDialog()V

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 707
    .local v2, stop:J
    sget-boolean v4, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v4, :cond_0

    .line 708
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doOnResume() consume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    return-void
.end method

.method private doShowIndicator()V
    .locals 2

    .prologue
    .line 2805
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2806
    const-string v0, "Camera"

    const-string v1, "doShowIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$19;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$19;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2823
    return-void
.end method

.method private doShowInfo(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "showMs"

    .prologue
    .line 2735
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2736
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/Camera$17;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2748
    return-void
.end method

.method private doShowRemaining(Z)V
    .locals 3
    .parameter "showAways"

    .prologue
    .line 2767
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2768
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowRemaining("

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

    .line 2770
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$18;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/Camera$18;-><init>(Lcom/android/camera/Camera;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2789
    return-void
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1656
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1657
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1662
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getViewLayer(I)Landroid/view/ViewGroup;
    .locals 4
    .parameter "layer"

    .prologue
    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, viewLayer:Landroid/view/ViewGroup;
    packed-switch p1, :pswitch_data_0

    .line 1206
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong layer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1190
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerNormal:Landroid/view/ViewGroup;

    .line 1208
    :goto_0
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_0

    .line 1209
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getViewLayer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    return-object v0

    .line 1193
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerBottom:Landroid/view/ViewGroup;

    .line 1194
    goto :goto_0

    .line 1197
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerShutter:Landroid/view/ViewGroup;

    .line 1198
    goto :goto_0

    .line 1200
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerSetting:Landroid/view/ViewGroup;

    .line 1201
    goto :goto_0

    .line 1203
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewLayerOverlay:Landroid/view/ViewGroup;

    .line 1204
    goto :goto_0

    .line 1188
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private hideActorViews()V
    .locals 6

    .prologue
    .line 1320
    iget-object v3, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1321
    .local v1, size:I
    new-array v3, v1, [Z

    iput-object v3, p0, Lcom/android/camera/Camera;->mLastVisibles:[Z

    .line 1322
    new-array v3, v1, [Lcom/android/camera/manager/ViewManager;

    iput-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    .line 1323
    iget v3, p0, Lcom/android/camera/Camera;->mCommonManagerCount:I

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1324
    iget-object v3, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/manager/ViewManager;

    .line 1325
    .local v2, vm:Lcom/android/camera/manager/ViewManager;
    if-eqz v2, :cond_0

    .line 1326
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    aput-object v2, v3, v0

    .line 1327
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastVisibles:[Z

    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v4

    aput-boolean v4, v3, v0

    .line 1323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1330
    .end local v2           #vm:Lcom/android/camera/manager/ViewManager;
    :cond_1
    sget-boolean v3, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v3, :cond_2

    .line 1331
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideActorViews() size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCommonManagerCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/Camera;->mCommonManagerCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_2
    return-void
.end method

.method private initializeAfterPreview()V
    .locals 8

    .prologue
    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 564
    .local v0, start:J
    invoke-direct {p0}, Lcom/android/camera/Camera;->callResumableBegin()V

    .line 565
    iget-object v4, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    iget-object v5, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v5}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 568
    iget-object v4, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v4}, Lcom/android/camera/manager/ShutterManager;->show()V

    .line 569
    iget-object v4, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v4}, Lcom/android/camera/manager/SettingManager;->show()V

    .line 570
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    iget-object v4, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v4}, Lcom/android/camera/manager/ModePicker;->show()V

    .line 572
    iget-object v4, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v4}, Lcom/android/camera/manager/ThumbnailManager;->show()V

    .line 573
    invoke-static {p0}, Lcom/mediatek/camera/ext/ExtensionHelper;->showAppGuide(Landroid/app/Activity;)V

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 577
    .local v2, stop:J
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeAfterPreview() consume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void
.end method

.method private initializeCameraPreferences()V
    .locals 4

    .prologue
    .line 1667
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_0

    .line 1668
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeCameraPreferences() mPreferenceGroup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    if-nez v1, :cond_1

    .line 1671
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1673
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/SettingChecker;->filterUnsuportedPreference(Lcom/android/camera/PreferenceGroup;I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1675
    invoke-direct {p0}, Lcom/android/camera/Camera;->limitSettingsByIntent()V

    .line 1677
    .end local v0           #settings:Lcom/android/camera/CameraSettings;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1678
    return-void
.end method

.method private initializeCommonManagers()V
    .locals 2

    .prologue
    .line 582
    new-instance v0, Lcom/android/camera/SettingChecker;

    invoke-direct {v0, p0}, Lcom/android/camera/SettingChecker;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    .line 583
    new-instance v0, Lcom/android/camera/manager/ReviewManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ReviewManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    .line 584
    new-instance v0, Lcom/android/camera/manager/ShutterManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ShutterManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    .line 585
    new-instance v0, Lcom/android/camera/manager/ModePicker;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ModePicker;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    .line 586
    new-instance v0, Lcom/android/camera/manager/SettingManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/SettingManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    .line 587
    new-instance v0, Lcom/android/camera/manager/ThumbnailManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ThumbnailManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    .line 589
    new-instance v0, Lcom/android/camera/manager/PickerManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/PickerManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    .line 590
    new-instance v0, Lcom/android/camera/manager/IndicatorManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/IndicatorManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

    .line 591
    new-instance v0, Lcom/android/camera/manager/RemainingManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/RemainingManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;

    .line 592
    new-instance v0, Lcom/android/camera/manager/InfoManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/InfoManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;

    .line 594
    new-instance v0, Lcom/android/camera/manager/ZoomManager;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/ZoomManager;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    .line 595
    new-instance v0, Lcom/android/camera/FileSaver;

    invoke-direct {v0, p0}, Lcom/android/camera/FileSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    .line 597
    new-instance v0, Lcom/android/camera/manager/RotateDialog;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/RotateDialog;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    .line 598
    new-instance v0, Lcom/android/camera/manager/RotateProgress;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/RotateProgress;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    .line 600
    new-instance v0, Lcom/android/camera/WfdManagerLocal;

    invoke-direct {v0, p0}, Lcom/android/camera/WfdManagerLocal;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWfdLocal:Lcom/android/camera/WfdManagerLocal;

    .line 602
    invoke-direct {p0}, Lcom/android/camera/Camera;->recordCommonManagers()V

    .line 604
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    iget-object v1, p0, Lcom/android/camera/Camera;->mModeChangedListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ModePicker;->setListener(Lcom/android/camera/manager/ModePicker$OnModeChangedListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/SettingManager;->setListener(Lcom/android/camera/manager/SettingManager$SettingListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPickerListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/PickerManager;->setListener(Lcom/android/camera/manager/PickerManager$PickerListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ThumbnailManager;->setFileSaver(Lcom/android/camera/FileSaver;)V

    .line 608
    iget-object v0, p0, Lcom/android/camera/Camera;->mWfdLocal:Lcom/android/camera/WfdManagerLocal;

    iget-object v1, p0, Lcom/android/camera/Camera;->mWfdListener:Lcom/android/camera/WfdManagerLocal$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/WfdManagerLocal;->addListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z

    .line 609
    return-void
.end method

.method private initializeFocusManager()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 1633
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 1635
    new-instance v0, Lcom/android/camera/Camera$7;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1641
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->release()V

    .line 1644
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v10, v0, v1

    .line 1645
    .local v10, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v10, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v7, :cond_1

    .line 1646
    .local v7, mirror:Z
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera/SettingChecker;->getModeDefaultFocusModes(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    .line 1647
    .local v3, defaultFocusModes:[Ljava/lang/String;
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v5, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getFocusManagerListener()Lcom/android/camera/FocusManager$Listener;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/SettingChecker;->getModeContinousFocusMode(I)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/FocusManager;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 1650
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getPreviewFrameWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getPreviewFrameHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 1651
    return-void

    .line 1645
    .end local v3           #defaultFocusModes:[Ljava/lang/String;
    .end local v7           #mirror:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private initializeForOpeningProcess()V
    .locals 3

    .prologue
    .line 612
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    .line 614
    const v0, 0x7f0b00ed

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerBottom:Landroid/view/ViewGroup;

    .line 615
    const v0, 0x7f0b00ee

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerNormal:Landroid/view/ViewGroup;

    .line 617
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerShutter:Landroid/view/ViewGroup;

    .line 618
    const v0, 0x7f0b00f0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerSetting:Landroid/view/ViewGroup;

    .line 620
    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/Camera;->mViewLayerOverlay:Landroid/view/ViewGroup;

    .line 622
    iget-object v0, p0, Lcom/android/camera/Camera;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/camera/Camera;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextView;->release()V

    .line 626
    :cond_0
    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    .line 630
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    .line 634
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 636
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->release()V

    .line 639
    :cond_1
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 641
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    .line 643
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setSingleTapUpListener(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 648
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    if-nez v0, :cond_2

    .line 650
    new-instance v0, Lcom/android/camera/LocationManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mLocLisListener:Lcom/android/camera/LocationManager$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    if-nez v0, :cond_3

    .line 654
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 656
    :cond_3
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_4

    .line 657
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeForOpeningProcess() mNumberOfCameras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_4
    return-void
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 2548
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2550
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2551
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2552
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2553
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2554
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2555
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2556
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2557
    return-void
.end method

.method private isMountPointChanged()Z
    .locals 5

    .prologue
    .line 2456
    const/4 v0, 0x0

    .line 2457
    .local v0, changed:Z
    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v1

    .line 2458
    .local v1, mountPoint:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Storage;->updateDefaultDirectory()Z

    invoke-static {p0}, Lcom/android/camera/Storage;->updateSaveLocationSharedPreferences(Landroid/content/Context;)V

    .line 2459
    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2460
    const/4 v0, 0x1

    .line 2462
    :cond_0
    sget-boolean v2, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v2, :cond_1

    .line 2463
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMountPointChanged() old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :cond_1
    return v0
.end method

.method private isSameStorage(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    .line 2509
    const-string v4, "storage_volume"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 2511
    .local v3, storage:Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .line 2512
    .local v2, same:Z
    const/4 v1, 0x0

    .line 2513
    .local v1, mountPoint:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2514
    .local v0, intentPath:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2515
    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v1

    .line 2516
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2517
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2518
    const/4 v2, 0x1

    .line 2521
    :cond_0
    sget-boolean v4, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v4, :cond_1

    .line 2522
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSameStorage() mountPoint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intentPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :cond_1
    return v2
.end method

.method private isSameStorage(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    .line 2529
    const/4 v2, 0x0

    .line 2530
    .local v2, same:Z
    const/4 v1, 0x0

    .line 2531
    .local v1, mountPoint:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2532
    .local v0, intentPath:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2533
    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v1

    .line 2534
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2535
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2536
    const/4 v2, 0x1

    .line 2539
    :cond_0
    sget-boolean v3, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v3, :cond_1

    .line 2540
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSameStorage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mountPoint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", intentPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_1
    return v2
.end method

.method private limitPreviewByIntent(Landroid/media/CamcorderProfile;)V
    .locals 11
    .parameter "profile"

    .prologue
    const/16 v10, 0x12c

    .line 2348
    sget-boolean v7, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v7, :cond_0

    .line 2349
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limitPreviewByIntent() videoFrameWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", videoFrameHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDisplayRotation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mOrientationCompensation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v7, :cond_3

    .line 2354
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2355
    .local v5, previewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v4, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 2356
    .local v4, orientation:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 2357
    .local v3, minSize:Landroid/hardware/Camera$Size;
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 2358
    .local v2, minAspectio:F
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2359
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 2360
    .local v6, size:Landroid/hardware/Camera$Size;
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    if-lt v7, v10, :cond_1

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    if-lt v7, v10, :cond_1

    .line 2363
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 2364
    .local v0, aspectRatio:F
    iget v7, p0, Lcom/android/camera/Camera;->mWallpaperAspectio:F

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/camera/Camera;->mWallpaperAspectio:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 2366
    move v2, v0

    .line 2367
    move-object v3, v6

    goto :goto_0

    .line 2370
    .end local v0           #aspectRatio:F
    .end local v6           #size:Landroid/hardware/Camera$Size;
    :cond_2
    iget v7, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    if-nez v7, :cond_6

    .line 2371
    rem-int/lit16 v7, v4, 0xb4

    if-nez v7, :cond_5

    .line 2374
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2375
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 2391
    :goto_1
    sget-boolean v7, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v7, :cond_3

    .line 2392
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limitPreviewByIntent() findSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v2           #minAspectio:F
    .end local v3           #minSize:Landroid/hardware/Camera$Size;
    .end local v4           #orientation:I
    .end local v5           #previewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    sget-boolean v7, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v7, :cond_4

    .line 2396
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limitPreviewByIntent() videoFrameWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " videoFrameHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDisplayRotation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", orientation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :cond_4
    return-void

    .line 2377
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .restart local v2       #minAspectio:F
    .restart local v3       #minSize:Landroid/hardware/Camera$Size;
    .restart local v4       #orientation:I
    .restart local v5       #previewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_5
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2378
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_1

    .line 2381
    :cond_6
    rem-int/lit16 v7, v4, 0xb4

    if-nez v7, :cond_7

    .line 2382
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2383
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_1

    .line 2387
    :cond_7
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2388
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iput v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto/16 :goto_1
.end method

.method private limitSettingsByIntent()V
    .locals 3

    .prologue
    .line 2404
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 2405
    .local v1, screen:Lcom/android/camera/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2406
    const-string v2, "pref_camera_hdr_key"

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2408
    const-string v2, "pref_camera_shot_number"

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2429
    :cond_0
    :goto_0
    return-void

    .line 2411
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2412
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2413
    const-string v2, "pref_video_quality_key"

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2417
    :cond_2
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2418
    const-string v2, "pref_video_quality_key"

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2422
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2423
    const-string v2, "pref_video_quality_key"

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2425
    const-string v2, "pref_video_effect_key"

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private lock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1791
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1792
    const-string v0, "Camera"

    const-string v1, "lock: grabbing lock"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1795
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_1

    .line 1796
    const-string v0, "Camera"

    const-string v1, "lock: grabbed lock"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_1
    return-void
.end method

.method private lock(J)Z
    .locals 4
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1801
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_0

    .line 1802
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: grabbing lock with timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1805
    .local v0, acquireSem:Z
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_1

    .line 1806
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: grabbed lock status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_1
    return v0
.end method

.method private notifyOnFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 1258
    iget-object v2, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$OnFullScreenChangedListener;

    .line 1259
    .local v1, listener:Lcom/android/camera/Camera$OnFullScreenChangedListener;
    if-eqz v1, :cond_0

    .line 1260
    invoke-interface {v1, p1}, Lcom/android/camera/Camera$OnFullScreenChangedListener;->onFullScreenChanged(Z)V

    goto :goto_0

    .line 1263
    .end local v1           #listener:Lcom/android/camera/Camera$OnFullScreenChangedListener;
    :cond_1
    return-void
.end method

.method private notifyOrientationChanged()V
    .locals 3

    .prologue
    .line 2001
    iget-object v2, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$OnOrientationListener;

    .line 2002
    .local v1, listener:Lcom/android/camera/Camera$OnOrientationListener;
    if-eqz v1, :cond_0

    .line 2003
    iget v2, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-interface {v1, v2}, Lcom/android/camera/Camera$OnOrientationListener;->onOrientationChanged(I)V

    goto :goto_0

    .line 2006
    .end local v1           #listener:Lcom/android/camera/Camera$OnOrientationListener;
    :cond_1
    return-void
.end method

.method private notifyParametersReady()V
    .locals 5

    .prologue
    .line 1289
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 1290
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    iget-object v3, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1293
    iget-object v2, p0, Lcom/android/camera/Camera;->mParametersListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$OnParametersReadyListener;

    .line 1294
    .local v1, listener:Lcom/android/camera/Camera$OnParametersReadyListener;
    if-eqz v1, :cond_0

    .line 1295
    invoke-interface {v1}, Lcom/android/camera/Camera$OnParametersReadyListener;->onCameraParameterReady()V

    goto :goto_0

    .line 1298
    .end local v1           #listener:Lcom/android/camera/Camera$OnParametersReadyListener;
    :cond_1
    return-void
.end method

.method private notifyPreferenceReady()V
    .locals 3

    .prologue
    .line 1274
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera$OnPreferenceReadyListener;

    .line 1275
    .local v1, listener:Lcom/android/camera/Camera$OnPreferenceReadyListener;
    if-eqz v1, :cond_0

    .line 1276
    invoke-interface {v1}, Lcom/android/camera/Camera$OnPreferenceReadyListener;->onPreferenceReady()V

    goto :goto_0

    .line 1279
    .end local v1           #listener:Lcom/android/camera/Camera$OnPreferenceReadyListener;
    :cond_1
    return-void
.end method

.method private parseIntent()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2278
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2279
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2280
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2281
    iput v4, p0, Lcom/android/camera/Camera;->mPickType:I

    .line 2293
    :goto_0
    iget v2, p0, Lcom/android/camera/Camera;->mPickType:I

    if-eqz v2, :cond_0

    .line 2294
    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 2295
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 2296
    const-string v2, "android.intent.extra.sizeLimit"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLimitedSize:J

    .line 2297
    const-string v2, "crop"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 2298
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/Camera;->mLimitedDuration:I

    .line 2300
    :cond_0
    sget-boolean v2, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v2, :cond_1

    .line 2301
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseIntent() mPickType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mPickType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mQuickCapture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSaveUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLimitedSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/Camera;->mLimitedSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCropValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLimitedDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mLimitedDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :cond_1
    return-void

    .line 2282
    :cond_2
    const-string v2, "com.mediatek.vlw"

    const-string v3, "identity"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2284
    const-string v2, "ratio"

    const v3, 0x3f99999a

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/camera/Camera;->mWallpaperAspectio:F

    .line 2286
    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2287
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/camera/Camera;->mPickType:I

    goto/16 :goto_0

    .line 2288
    :cond_3
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2289
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/Camera;->mPickType:I

    goto/16 :goto_0

    .line 2291
    :cond_4
    iput v5, p0, Lcom/android/camera/Camera;->mPickType:I

    goto/16 :goto_0
.end method

.method private reInflateViewManager()V
    .locals 3

    .prologue
    .line 1370
    iget-object v2, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/manager/ViewManager;

    .line 1371
    .local v1, manager:Lcom/android/camera/manager/ViewManager;
    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->reInflate()V

    goto :goto_0

    .line 1373
    .end local v1           #manager:Lcom/android/camera/manager/ViewManager;
    :cond_0
    return-void
.end method

.method private recordCommonManagers()V
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCommonManagerCount:I

    .line 1317
    return-void
.end method

.method private refreshModeRelated()V
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ModePicker;->refresh()V

    .line 2185
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PickerManager;->refresh()V

    .line 2186
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ShutterManager;->refresh()V

    .line 2187
    return-void
.end method

.method private releaseSurface()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setPreserveEGLContextOnPause(Z)V

    .line 955
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 956
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 958
    :cond_0
    return-void
.end method

.method private restoreActorViews()V
    .locals 4

    .prologue
    .line 1336
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    if-nez v3, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1337
    :cond_0
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    array-length v1, v3

    .line 1338
    .local v1, size:I
    iget v3, p0, Lcom/android/camera/Camera;->mCommonManagerCount:I

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1339
    iget-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    aget-object v2, v3, v0

    .line 1340
    .local v2, vm:Lcom/android/camera/manager/ViewManager;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1341
    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera;->mLastVisibles:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 1342
    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 1338
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1346
    .end local v2           #vm:Lcom/android/camera/manager/ViewManager;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/Camera;->mLastManagers:[Lcom/android/camera/manager/ViewManager;

    goto :goto_0
.end method

.method private setDisplayOrientation()V
    .locals 3

    .prologue
    .line 998
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 999
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    .line 1001
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    .line 1002
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 1008
    :cond_1
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_2

    .line 1009
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayOrientation() mDisplayRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_2
    return-void
.end method

.method private setLoadingAnimationVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 911
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 912
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoadingAnimationVisible("

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

    .line 925
    :cond_0
    return-void
.end method

.method private setPreviewFrameLayoutAspectRatio()V
    .locals 6

    .prologue
    .line 869
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 871
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/PreviewFrameLayout;->setAspectRatio(D)V

    .line 872
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_0

    .line 873
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewFrameLayoutAspectRatio() size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v0           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-void
.end method

.method private setViewManagerEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2684
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ModePicker;->setEnabled(Z)V

    .line 2686
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ThumbnailManager;->setEnabled(Z)V

    .line 2688
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/SettingManager;->setEnabled(Z)V

    .line 2689
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/PickerManager;->setEnabled(Z)V

    .line 2690
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ZoomManager;->setEnabled(Z)V

    .line 2691
    return-void
.end method

.method private setViewManagerVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2668
    if-eqz p1, :cond_1

    .line 2669
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2670
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ModePicker;->show()V

    .line 2671
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ThumbnailManager;->show()V

    .line 2673
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ShutterManager;->show()V

    .line 2674
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager;->show()V

    .line 2681
    :goto_0
    return-void

    .line 2676
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ModePicker;->hide()V

    .line 2677
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PickerManager;->hide()V

    .line 2678
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager;->hide()V

    goto :goto_0
.end method

.method private showIndicator(I)V
    .locals 4
    .parameter "delayMs"

    .prologue
    const/16 v3, 0x8

    .line 2792
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2793
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIndicator("

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

    .line 2795
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2796
    if-lez p1, :cond_1

    .line 2797
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2801
    :goto_0
    return-void

    .line 2799
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showRemainingAways()V
    .locals 2

    .prologue
    .line 2751
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2752
    const-string v0, "Camera"

    const-string v1, "showRemainingAways()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2755
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->doShowRemaining(Z)V

    .line 2756
    return-void
.end method

.method private switchCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2062
    sget-boolean v2, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v2, :cond_0

    .line 2063
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchCamera() begin id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-eqz v2, :cond_2

    .line 2109
    :cond_1
    :goto_0
    return-void

    .line 2068
    :cond_2
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileSwitchCamera()V

    .line 2070
    iget v2, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    iput v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 2071
    iget-object v2, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    iget v3, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v2, v3}, Lcom/android/camera/manager/PickerManager;->setCameraId(I)V

    .line 2074
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 2075
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 2076
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusAndFace()V

    .line 2079
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v3, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2080
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2083
    iput-object v5, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 2084
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v2, :cond_3

    .line 2085
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2086
    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->release()V

    .line 2087
    iput-object v5, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 2090
    :cond_3
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    .line 2091
    .local v0, cameraOpenThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 2094
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2102
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 2103
    invoke-direct {p0}, Lcom/android/camera/Camera;->refreshModeRelated()V

    .line 2104
    invoke-virtual {p0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 2105
    sget-boolean v2, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v2, :cond_4

    .line 2106
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchCamera() end camera id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :cond_4
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileSwitchCamera()V

    goto :goto_0

    .line 2095
    :catch_0
    move-exception v1

    .line 2096
    .local v1, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private uninstallIntentFilter()V
    .locals 1

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2561
    return-void
.end method

.method private unlock()V
    .locals 2

    .prologue
    .line 1813
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1814
    const-string v0, "Camera"

    const-string v1, "unlock: releasing lock"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1817
    return-void
.end method

.method private updateCameraScreenNailSize(IILandroid/hardware/Camera$Size;)V
    .locals 6
    .parameter "oldWidth"
    .parameter "oldHeight"
    .parameter "size"

    .prologue
    .line 980
    iget v2, p3, Landroid/hardware/Camera$Size;->width:I

    .line 981
    .local v2, width:I
    iget v0, p3, Landroid/hardware/Camera$Size;->height:I

    .line 982
    .local v0, height:I
    iget v3, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 983
    move v1, v2

    .line 984
    .local v1, tmp:I
    move v2, v0

    .line 985
    move v0, v1

    .line 987
    .end local v1           #tmp:I
    :cond_0
    if-ne p1, v2, :cond_1

    if-eq p2, v0, :cond_2

    .line 988
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3, v2, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 989
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 991
    :cond_2
    sget-boolean v3, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v3, :cond_3

    .line 992
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraScreenNailSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_3
    return-void
.end method

.method private updateFocusAndFace()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v3, :cond_0

    .line 663
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 664
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 665
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 666
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v0, v3, v4

    .line 667
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 668
    iget-object v1, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 670
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 673
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v1, :cond_2

    .line 674
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 676
    :cond_2
    return-void

    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v1, v2

    .line 667
    goto :goto_0
.end method

.method private updateSurfaceTexture()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 961
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 962
    .local v2, size:Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_1

    .line 963
    invoke-direct {p0, v4, v4, v2}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(IILandroid/hardware/Camera$Size;)V

    .line 965
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/GLRoot;->setPreserveEGLContextOnPause(Z)V

    .line 967
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 968
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 974
    :goto_0
    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_0

    .line 975
    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 977
    :cond_0
    return-void

    .line 970
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 971
    .local v1, oldWidth:I
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 972
    .local v0, oldHeight:I
    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/Camera;->updateCameraScreenNailSize(IILandroid/hardware/Camera$Size;)V

    goto :goto_0
.end method

.method private waitCameraStartUpThread()V
    .locals 4

    .prologue
    .line 366
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_0

    .line 367
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitCameraStartUpThread() begin mCameraStartUpThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/android/camera/Camera$CameraStartUpThread;->cancel()V

    .line 372
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/android/camera/Camera$CameraStartUpThread;->join()V

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_2

    .line 379
    const-string v1, "Camera"

    const-string v2, "waitCameraStartUpThread() end"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Camera"

    const-string v2, "waitCameraStartUpThread()"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1993
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnParametersReadyListener(Lcom/android/camera/Camera$OnParametersReadyListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/camera/Camera;->mParametersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/android/camera/Camera;->mParametersListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOnPreferenceReadyListener(Lcom/android/camera/Camera$OnPreferenceReadyListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferenceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferenceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addResumable(Lcom/android/camera/Camera$Resumable;)Z
    .locals 1
    .parameter "resumable"

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 1237
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "layer"

    .prologue
    .line 1222
    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->getViewLayer(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1223
    .local v0, group:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1226
    :cond_0
    return-void
.end method

.method public addViewManager(Lcom/android/camera/manager/ViewManager;)Z
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animateCapture()V
    .locals 4

    .prologue
    .line 2112
    iget v1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    iget v2, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    .line 2113
    .local v0, rotation:I
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 2114
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_0

    .line 2115
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateCapture() rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDisplayRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOrientationCompensation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :cond_0
    return-void
.end method

.method public applyContinousCallback()V
    .locals 3

    .prologue
    .line 1736
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1737
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyContinousCallback() mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 1741
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getContinousFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1742
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 1747
    :cond_1
    :goto_0
    return-void

    .line 1744
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method public applyContinousShot()V
    .locals 1

    .prologue
    .line 1704
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 1711
    return-void
.end method

.method public applyGPSDialog()V
    .locals 8

    .prologue
    .line 1836
    new-instance v4, Lcom/android/camera/Camera$12;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$12;-><init>(Lcom/android/camera/Camera;)V

    .line 1844
    .local v4, runnable1:Ljava/lang/Runnable;
    new-instance v6, Lcom/android/camera/Camera$13;

    invoke-direct {v6, p0}, Lcom/android/camera/Camera$13;-><init>(Lcom/android/camera/Camera;)V

    .line 1854
    .local v6, runnable2:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Camera;->mIsGpsOpen:Z

    .line 1855
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/camera/Camera;->mIsGpsOpen:Z

    if-ne v0, v1, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->initGPS()Z

    move-result v7

    .line 1858
    .local v7, bOpen:Z
    if-nez v7, :cond_0

    .line 1859
    const v0, 0x7f0c0153

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1860
    .local v2, status:Ljava/lang/String;
    const v0, 0x7f0c0154

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1861
    .local v3, clkYes:Ljava/lang/String;
    const v0, 0x7f0c0155

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1864
    .local v5, clkNo:Ljava/lang/String;
    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1868
    .end local v2           #status:Ljava/lang/String;
    .end local v3           #clkYes:Ljava/lang/String;
    .end local v5           #clkNo:Ljava/lang/String;
    .end local v7           #bOpen:Z
    :cond_0
    return-void
.end method

.method public applyParameterForFocus(Z)V
    .locals 1
    .parameter "setArea"

    .prologue
    .line 1724
    new-instance v0, Lcom/android/camera/Camera$11;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/Camera$11;-><init>(Lcom/android/camera/Camera;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 1733
    return-void
.end method

.method public applyParametersToServer()V
    .locals 3

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1783
    :cond_0
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_1

    .line 1784
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyParameterToServer() mParameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_1
    return-void
.end method

.method public backToLastMode()V
    .locals 3

    .prologue
    .line 1620
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1621
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backToLastMode() mLastMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mLastMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->waitCameraStartUpThread()V

    .line 1627
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    iget v1, p0, Lcom/android/camera/Camera;->mLastMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 1628
    return-void
.end method

.method public cancelContinuousShot()V
    .locals 1

    .prologue
    .line 1714
    new-instance v0, Lcom/android/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 1721
    return-void
.end method

.method public collapseViewManager(Z)Z
    .locals 6
    .parameter "force"

    .prologue
    .line 1350
    const/4 v0, 0x0

    .line 1352
    .local v0, handle:Z
    iget-object v3, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v3}, Lcom/android/camera/manager/RotateDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 1353
    iget-object v3, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v3}, Lcom/android/camera/manager/RotateDialog;->hide()V

    .line 1354
    const/4 v0, 0x1

    .line 1363
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v3, :cond_1

    .line 1364
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collapseViewManager("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_1
    return v0

    .line 1356
    :cond_2
    iget-object v3, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/manager/ViewManager;

    .line 1357
    .local v2, manager:Lcom/android/camera/manager/ViewManager;
    invoke-virtual {v2, p1}, Lcom/android/camera/manager/ViewManager;->collapse(Z)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 1358
    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1357
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dismissAlertDialog()V
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v0}, Lcom/android/camera/manager/RotateDialog;->hide()V

    .line 2832
    return-void
.end method

.method public dismissInfo()V
    .locals 2

    .prologue
    .line 2728
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2729
    const-string v0, "Camera"

    const-string v1, "dismissInfo()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->doShowIndicator()V

    .line 2732
    return-void
.end method

.method public dismissProgress()V
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v0}, Lcom/android/camera/manager/RotateProgress;->hide()V

    .line 2841
    invoke-virtual {p0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 2842
    return-void
.end method

.method public effectsActive()Z
    .locals 1

    .prologue
    .line 1973
    const/4 v0, 0x0

    return v0
.end method

.method public fetchParametersFromServer()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 1768
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1769
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchParameterFromServer() mParameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 1772
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public fetechProfile(II)Landroid/media/CamcorderProfile;
    .locals 3
    .parameter "quality"
    .parameter "timelapseMs"

    .prologue
    .line 1933
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1934
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetechProfile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    :cond_0
    iput p2, p0, Lcom/android/camera/Camera;->mTimelapseMs:I

    .line 1938
    iget v0, p0, Lcom/android/camera/Camera;->mTimelapseMs:I

    if-eqz v0, :cond_1

    .line 1939
    add-int/lit16 p1, p1, 0x3e8

    .line 1941
    :cond_1
    iput p1, p0, Lcom/android/camera/Camera;->mQualityId:I

    .line 1942
    iget v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->getMtk(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    .line 1944
    invoke-static {}, Lcom/mediatek/camera/ext/ExtensionHelper;->getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-interface {v0, p1, v1}, Lcom/mediatek/camera/ext/IFeatureExtension;->checkMMSVideoCodec(ILandroid/media/CamcorderProfile;)V

    .line 1945
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_2

    .line 1946
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetechProfile() mProfile.videoFrameRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.videoFrameWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.videoFrameHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.audioBitRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.videoBitRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.quality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProfile.duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->limitPreviewByIntent(Landroid/media/CamcorderProfile;)V

    .line 1956
    iget-object v0, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getAudioMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraActor()Lcom/android/camera/actor/CameraActor;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    return-object v0
.end method

.method public getCameraCount()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    return v0
.end method

.method public getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getCameraDisplayOrientation()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 1831
    iget v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    return v0
.end method

.method public getCameraScreenNailHeight()I
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    return v0
.end method

.method public getCameraScreenNailWidth()I
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v0

    return v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    return v0
.end method

.method public getCounterDownView()Lcom/android/camera/ui/RotateTextView;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/camera/Camera;->mCounterDownView:Lcom/android/camera/ui/RotateTextView;

    return-object v0
.end method

.method public getCropValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v0

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFileSaver()Lcom/android/camera/FileSaver;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    return-object v0
.end method

.method public getFocusManager()Lcom/android/camera/FocusManager;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method public getLimitedDuration()I
    .locals 1

    .prologue
    .line 2344
    iget v0, p0, Lcom/android/camera/Camera;->mLimitedDuration:I

    return v0
.end method

.method public getLimitedSize()J
    .locals 2

    .prologue
    .line 2336
    iget-wide v0, p0, Lcom/android/camera/Camera;->mLimitedSize:J

    return-wide v0
.end method

.method public getLocationManager()Lcom/android/camera/LocationManager;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method public getMicrophone()Z
    .locals 3

    .prologue
    .line 1977
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getOrientationCompensation()I
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method public getOrietation()I
    .locals 1

    .prologue
    .line 1104
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 1040
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1041
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParameters() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public getPickerManager()Lcom/android/camera/manager/PickerManager;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    return-object v0
.end method

.method public getPreferenceGroup()Lcom/android/camera/PreferenceGroup;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method public getPreferences()Lcom/android/camera/ComboPreferences;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method public getPreviewFrameHeight()I
    .locals 3

    .prologue
    .line 1163
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1164
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewFrameHeight() return , real="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewFrameHeight:I

    return v0
.end method

.method public getPreviewFrameWidth()I
    .locals 3

    .prologue
    .line 1156
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1157
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewFrameWidth() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPreviewFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", real="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mPreviewFrameWidth:I

    return v0
.end method

.method public getProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/android/camera/Camera;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getQualityId()I
    .locals 1

    .prologue
    .line 1964
    iget v0, p0, Lcom/android/camera/Camera;->mQualityId:I

    return v0
.end method

.method public getRemainingManager()Lcom/android/camera/manager/RemainingManager;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;

    return-object v0
.end method

.method public getReviewManager()Lcom/android/camera/manager/ReviewManager;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    return-object v0
.end method

.method public getSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelfTimer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1918
    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingChecker;->getSettingCurrentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1919
    .local v0, seflTimer:Ljava/lang/String;
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_0

    .line 1920
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelfTimer() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_0
    return-object v0
.end method

.method public getSettingChecker()Lcom/android/camera/SettingChecker;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    return-object v0
.end method

.method public getShutterManager()Lcom/android/camera/manager/ShutterManager;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getThumbnailManager()Lcom/android/camera/manager/ThumbnailManager;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    return-object v0
.end method

.method public getTimelapseMs()I
    .locals 1

    .prologue
    .line 1968
    iget v0, p0, Lcom/android/camera/Camera;->mTimelapseMs:I

    return v0
.end method

.method public getViewState()I
    .locals 1

    .prologue
    .line 2708
    iget v0, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    return v0
.end method

.method public getWallpaperPickAspectio()F
    .locals 1

    .prologue
    .line 2324
    iget v0, p0, Lcom/android/camera/Camera;->mWallpaperAspectio:F

    return v0
.end method

.method public getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/camera/Camera;->mWfdLocal:Lcom/android/camera/WfdManagerLocal;

    return-object v0
.end method

.method public hideReview()V
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ReviewManager;->hide()V

    .line 1149
    invoke-virtual {p0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 1150
    return-void
.end method

.method public inflate(II)Landroid/view/View;
    .locals 3
    .parameter "layoutId"
    .parameter "layer"

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->getViewLayer(I)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isCameraIdle()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 503
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 505
    .local v0, idle:Z
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_1

    .line 506
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraIdle() mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1
    return v0

    .line 503
    .end local v0           #idle:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2312
    iget v1, p0, Lcom/android/camera/Camera;->mPickType:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNonePickIntent()Z
    .locals 1

    .prologue
    .line 2308
    iget v0, p0, Lcom/android/camera/Camera;->mPickType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalViewState()Z
    .locals 3

    .prologue
    .line 2701
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2702
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNormalViewState() mCurrentViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickCapture()Z
    .locals 1

    .prologue
    .line 2328
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method public isStereoMode()Z
    .locals 1

    .prologue
    .line 2171
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mStereoMode:Z

    return v0
.end method

.method public isSwitchingCamera()Z
    .locals 3

    .prologue
    .line 2175
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2176
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitchingCamera() mCurrentViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPendingSwitchCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 2316
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/camera/Camera;->mPickType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoWallPaperIntent()Z
    .locals 2

    .prologue
    .line 2320
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/camera/Camera;->mPickType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepScreenOn()V
    .locals 2

    .prologue
    .line 2243
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2244
    const-string v0, "Camera"

    const-string v1, "keepScreenOn()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2247
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2248
    return-void
.end method

.method public keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 2234
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2235
    const-string v0, "Camera"

    const-string v1, "keepScreenOnAwhile()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2238
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2239
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2240
    return-void
.end method

.method public lockRun(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "runnable"

    .prologue
    .line 1821
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1822
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockRun("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 1825
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->lockParametersRun(Ljava/lang/Runnable;)V

    .line 1828
    :cond_1
    return-void
.end method

.method public notifyPreferenceChanged()V
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-interface {v0}, Lcom/android/camera/manager/SettingManager$SettingListener;->onSharedPreferenceChanged()V

    .line 1913
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager;->refresh()V

    .line 1914
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 851
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 853
    packed-switch p1, :pswitch_data_0

    .line 862
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/actor/CameraActor;->onActivityResult(IILandroid/content/Intent;)V

    .line 863
    return-void

    .line 855
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->initGPS()Z

    move-result v0

    .line 856
    .local v0, bOpen:Z
    if-nez v0, :cond_0

    .line 857
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "off"

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->putValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onAfterFullScreeChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 477
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAfterFullScreeChanged("

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

    .line 480
    :cond_0
    if-eqz p1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 488
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->notifyOnFullScreenChanged(Z)V

    .line 489
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 783
    sget-boolean v2, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v2, :cond_0

    .line 784
    const-string v2, "Camera"

    const-string v3, "onBackPressed()"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    if-eqz v2, :cond_2

    .line 809
    :cond_1
    :goto_0
    return-void

    .line 789
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-eqz v2, :cond_4

    .line 790
    :cond_3
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0

    .line 794
    :cond_4
    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/camera/Camera;->mIsGpsOpen:Z

    if-ne v2, v3, :cond_5

    .line 795
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->initGPS()Z

    move-result v0

    .line 797
    .local v0, bOpen:Z
    if-nez v0, :cond_5

    .line 798
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "off"

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->putValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 799
    iget-object v2, p0, Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-interface {v2}, Lcom/android/camera/manager/SettingManager$SettingListener;->onSharedPreferenceChanged()V

    .line 800
    iget-object v2, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v2}, Lcom/android/camera/manager/SettingManager;->refresh()V

    .line 804
    .end local v0           #bOpen:Z
    :cond_5
    const/4 v1, 0x0

    .line 805
    .local v1, handle:Z
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v2}, Lcom/android/camera/actor/CameraActor;->onBackPressed()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 806
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    .line 808
    :cond_6
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackPressed() handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x1

    .line 813
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 814
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_0

    .line 815
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusAndFace()V

    .line 818
    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 819
    .local v0, appRoot:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 820
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003f

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 821
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040054

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 822
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerBottom:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 823
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerBottom:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerNormal:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerNormal:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerShutter:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 830
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerShutter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 832
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerSetting:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 833
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerSetting:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 836
    :cond_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerOverlay:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 837
    iget-object v1, p0, Lcom/android/camera/Camera;->mViewLayerOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 839
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 840
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeForOpeningProcess()V

    .line 842
    invoke-direct {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 843
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setLoadingAnimationVisible(Z)V

    .line 844
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusAndFace()V

    .line 845
    invoke-direct {p0}, Lcom/android/camera/Camera;->reInflateViewManager()V

    .line 846
    invoke-direct {p0}, Lcom/android/camera/Camera;->notifyOrientationChanged()V

    .line 847
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 516
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 517
    const-string v0, "Camera"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnCreate()V

    .line 520
    invoke-direct {p0}, Lcom/android/camera/Camera;->parseIntent()V

    .line 523
    new-instance v0, Lcom/android/camera/ComboPreferences;

    invoke-direct {v0, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 524
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 525
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 526
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 531
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCommonManagers()V

    .line 532
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    :cond_0
    new-instance v0, Lcom/android/camera/actor/VideoActor;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/VideoActor;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    .line 539
    :goto_0
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 540
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 543
    invoke-static {p0}, Lcom/mediatek/camera/ext/ExtensionHelper;->ensureCameraExtension(Landroid/content/Context;)V

    .line 544
    invoke-static {}, Lcom/android/camera/Storage;->updateDefaultDirectory()Z

    invoke-static {p0}, Lcom/android/camera/Storage;->updateSaveLocationSharedPreferences(Landroid/content/Context;)V

    .line 547
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 549
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->createCameraScreenNail(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->setFrameListener(Lcom/android/camera/CameraScreenNail$FrameListener;)V

    .line 553
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeForOpeningProcess()V

    .line 554
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 557
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeAfterPreview()V

    .line 559
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnCreate()V

    .line 560
    return-void

    .line 535
    :cond_1
    new-instance v0, Lcom/android/camera/actor/PhotoActor;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 764
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 765
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnDestroy()V

    .line 767
    invoke-direct {p0}, Lcom/android/camera/Camera;->callResumableFinish()V

    .line 768
    iget-object v0, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    invoke-virtual {v0}, Lcom/android/camera/FileSaver;->finishAfterSaved()V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    if-nez v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;

    invoke-virtual {v0}, Lcom/android/camera/SettingChecker;->resetSettings()V

    .line 774
    :cond_1
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnDestroy()V

    .line 775
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_2

    .line 776
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() isChangingConfigurations()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isChangingConfigurations()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mForceFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_2
    return-void
.end method

.method public onFirstFrameArrived()V
    .locals 4

    .prologue
    .line 890
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "Camera"

    const-string v1, "onFirstFrameArrived()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileFirstFrameAvailable()V

    .line 895
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 900
    :goto_0
    return-void

    .line 898
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->doOnFirstFrameArrived()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2201
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 2211
    :cond_0
    :goto_0
    return v0

    .line 2204
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x52

    if-ne v1, p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/SettingManager;->handleMenuEvent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2208
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/actor/CameraActor;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2209
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2216
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 2222
    :cond_0
    :goto_0
    return v0

    .line 2219
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/actor/CameraActor;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2220
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 723
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 724
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() mForceFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOpenCameraFail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 729
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnPause()V

    .line 730
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_2

    .line 753
    :cond_1
    :goto_0
    return-void

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->onPause()Z

    .line 737
    invoke-direct {p0}, Lcom/android/camera/Camera;->waitCameraStartUpThread()V

    .line 738
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 742
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusAndFace()V

    .line 743
    invoke-direct {p0}, Lcom/android/camera/Camera;->uninstallIntentFilter()V

    .line 744
    invoke-direct {p0}, Lcom/android/camera/Camera;->callResumablePause()V

    .line 745
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 746
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 747
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 748
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 750
    invoke-virtual {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 752
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnPause()V

    goto :goto_0
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2128
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2129
    const-string v0, "Camera"

    const-string v1, "onPreviewTextureCopied()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2132
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 2437
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onRestart()V

    .line 2438
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isMountPointChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2439
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    .line 2441
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2450
    :goto_0
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2451
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestart() mForceFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_0
    return-void

    .line 2447
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->updateCameraAppViewIfNeed()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 680
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 681
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() mForceFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOpenCameraFail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraStartUpThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 686
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraOnResume()V

    .line 687
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mForceFinishing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_2

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 690
    :cond_2
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-nez v0, :cond_3

    .line 691
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 692
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 694
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->doOnResume()V

    .line 695
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraOnResume()V

    goto :goto_0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 930
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 931
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v0}, Lcom/android/camera/manager/RotateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v0}, Lcom/android/camera/manager/RotateProgress;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 934
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/Camera$OnSingleTapUpListener;->onSingleTapUp(Landroid/view/View;II)V

    .line 940
    :cond_1
    return-void
.end method

.method protected onSingleTapUpBorder(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    invoke-virtual {v0}, Lcom/android/camera/manager/RotateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v0}, Lcom/android/camera/manager/RotateProgress;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 948
    :cond_0
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 884
    :cond_0
    iput p1, p0, Lcom/android/camera/Camera;->mPreviewFrameWidth:I

    .line 885
    iput p2, p0, Lcom/android/camera/Camera;->mPreviewFrameHeight:I

    .line 886
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 758
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 759
    invoke-direct {p0}, Lcom/android/camera/Camera;->releaseSurface()V

    .line 760
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->onUserInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2194
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 2196
    :cond_0
    return-void
.end method

.method public preparePhotoRequest()Lcom/android/camera/SaveRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1750
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/Camera;->preparePhotoRequest(II)Lcom/android/camera/SaveRequest;

    move-result-object v0

    return-object v0
.end method

.method public preparePhotoRequest(II)Lcom/android/camera/SaveRequest;
    .locals 2
    .parameter "type"
    .parameter "pictureType"

    .prologue
    .line 1754
    iget-object v1, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/FileSaver;->preparePhotoRequest(II)Lcom/android/camera/SaveRequest;

    move-result-object v0

    .line 1755
    .local v0, request:Lcom/android/camera/SaveRequest;
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->applyParameterForCapture(Lcom/android/camera/SaveRequest;)V

    .line 1756
    return-object v0
.end method

.method public prepareVideoRequest(ILjava/lang/String;)Lcom/android/camera/SaveRequest;
    .locals 2
    .parameter "outputFileFormat"
    .parameter "resolution"

    .prologue
    .line 1761
    iget-object v1, p0, Lcom/android/camera/Camera;->mFileSaver:Lcom/android/camera/FileSaver;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/FileSaver;->prepareVideoRequest(ILjava/lang/String;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    .line 1762
    .local v0, request:Lcom/android/camera/SaveRequest;
    return-object v0
.end method

.method public removeOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/camera/Camera;->mFullScreenListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeResumable(Lcom/android/camera/Camera$Resumable;)Z
    .locals 1
    .parameter "resumable"

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/camera/Camera;->mResumables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    .line 1241
    return-void
.end method

.method public removeView(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "layer"

    .prologue
    .line 1229
    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->getViewLayer(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1230
    .local v0, group:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1233
    :cond_0
    return-void
.end method

.method public removeViewManager(Lcom/android/camera/manager/ViewManager;)Z
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/camera/Camera;->mViewManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->requestRender()V

    .line 2122
    return-void
.end method

.method public resetScreenOn()V
    .locals 2

    .prologue
    .line 2226
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2227
    const-string v0, "Camera"

    const-string v1, "resetScreenOn()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2230
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2231
    return-void
.end method

.method public restoreViewState()V
    .locals 2

    .prologue
    .line 2694
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2695
    const-string v0, "Camera"

    const-string v1, "restoreViewState()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 2698
    return-void
.end method

.method public setCameraState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 492
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 493
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraState("

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

    .line 495
    :cond_0
    iput p1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 496
    return-void
.end method

.method public setResultExAndFinish(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 2877
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 2878
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2879
    return-void
.end method

.method public setResultExAndFinish(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2882
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 2883
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2884
    return-void
.end method

.method public setReviewOrientationCompensation(I)V
    .locals 1
    .parameter "orientationCompensation"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ReviewManager;->setOrientationCompensation(I)V

    .line 1125
    return-void
.end method

.method public setRotationToParameters()V
    .locals 4

    .prologue
    .line 2048
    const/4 v0, -0x1

    .line 2049
    .local v0, jpegRotation:I
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 2050
    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    iget v2, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 2051
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2053
    :cond_0
    sget-boolean v1, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v1, :cond_1

    .line 2054
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRotationToParameters() mCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jpegRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :cond_1
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2872
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 2874
    return-void
.end method

.method public setViewState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2582
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2583
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mCurrentViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPendingSwitchCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isSwitchingCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2665
    :cond_1
    :goto_0
    return-void

    .line 2590
    :cond_2
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentViewState:I

    .line 2591
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2593
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 2594
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 2595
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 2596
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 2597
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/SettingManager;->setFileter(Z)V

    .line 2598
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v4, v4}, Lcom/android/camera/manager/SettingManager;->setAnimationEnabled(ZZ)V

    .line 2600
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2601
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->showIndicator(I)V

    goto :goto_0

    .line 2607
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2608
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 2609
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    goto :goto_0

    .line 2612
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2613
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 2614
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 2615
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    goto :goto_0

    .line 2618
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2619
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 2620
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 2621
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ZoomManager;->setEnabled(Z)V

    goto :goto_0

    .line 2624
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/manager/ModePicker;->hide()V

    .line 2625
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ThumbnailManager;->hide()V

    .line 2626
    iget-object v0, p0, Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/PickerManager;->hide()V

    .line 2627
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 2628
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/SettingManager;->setEnabled(Z)V

    goto :goto_0

    .line 2631
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    goto :goto_0

    .line 2634
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 2635
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 2636
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    goto/16 :goto_0

    .line 2639
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 2640
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    goto/16 :goto_0

    .line 2643
    :pswitch_8
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 2644
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 2646
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/IndicatorManager;->hide()V

    goto/16 :goto_0

    .line 2649
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 2650
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 2651
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    goto/16 :goto_0

    .line 2655
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 2656
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, v4}, Lcom/android/camera/manager/ShutterManager;->setEnabled(Z)V

    .line 2657
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerVisible(Z)V

    .line 2658
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setViewManagerEnable(Z)V

    .line 2659
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ThumbnailManager;->hide()V

    goto/16 :goto_0

    .line 2591
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .parameter "title"
    .parameter "msg"
    .parameter "button1Text"
    .parameter "r1"
    .parameter "button2Text"
    .parameter "r2"

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/manager/RotateDialog;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/manager/RotateDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2828
    return-void
.end method

.method public showInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 2713
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2714
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    :cond_0
    const/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 2717
    return-void
.end method

.method public showInfo(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "showMs"

    .prologue
    .line 2720
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2721
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2724
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->doShowInfo(Ljava/lang/String;I)V

    .line 2725
    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2835
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 2836
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateProgress:Lcom/android/camera/manager/RotateProgress;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/RotateProgress;->showProgress(Ljava/lang/String;)V

    .line 2837
    return-void
.end method

.method public showRemaining()V
    .locals 2

    .prologue
    .line 2759
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 2760
    const-string v0, "Camera"

    const-string v1, "showRemaining()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2763
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->doShowRemaining(Z)V

    .line 2764
    return-void
.end method

.method public showReview()V
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ReviewManager;->show()V

    .line 1146
    return-void
.end method

.method public showReview(Ljava/io/FileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 1129
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1130
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showReview("

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

    .line 1132
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ReviewManager;->show(Ljava/io/FileDescriptor;)V

    .line 1134
    return-void
.end method

.method public showReview(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 1137
    sget-boolean v0, Lcom/android/camera/Camera;->LOG:Z

    if-eqz v0, :cond_0

    .line 1138
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showReview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewManager:Lcom/android/camera/manager/ReviewManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ReviewManager;->show(Ljava/lang/String;)V

    .line 1142
    return-void
.end method

.method public showToast(I)V
    .locals 2
    .parameter "stringId"

    .prologue
    .line 2845
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2846
    .local v0, message:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2847
    iget-object v1, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    if-nez v1, :cond_1

    .line 2848
    invoke-static {p0, v0}, Lcom/android/camera/manager/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/manager/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    .line 2852
    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/manager/OnScreenHint;->showToast()V

    .line 2854
    :cond_0
    return-void

    .line 2850
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mRotateToast:Lcom/android/camera/manager/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/manager/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public switchShutter(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/manager/ShutterManager;->switchShutter(I)V

    .line 1153
    return-void
.end method
