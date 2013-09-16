.class public Lcom/android/server/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/LocalPowerManager;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;,
        Lcom/android/server/PowerManagerService$LockList;,
        Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;,
        Lcom/android/server/PowerManagerService$TimeoutTask;,
        Lcom/android/server/PowerManagerService$PokeLock;,
        Lcom/android/server/PowerManagerService$WakeLock;,
        Lcom/android/server/PowerManagerService$SettingsObserver;,
        Lcom/android/server/PowerManagerService$DockReceiver;,
        Lcom/android/server/PowerManagerService$SyncKeyguard;,
        Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;,
        Lcom/android/server/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/PowerManagerService$SDHotPlugReceiver;,
        Lcom/android/server/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    }
.end annotation


# static fields
.field private static final ALL_BRIGHT:I = 0xf

.field private static final ALL_LIGHTS_OFF:I = 0x0

.field private static final ANIM_SETTING_OFF:I = 0x10

.field private static final ANIM_SETTING_ON:I = 0x1

.field static final ANIM_STEPS:I = 0x1e

.field static final AUTOBRIGHTNESS_ANIM_STEPS:I = 0x3c

.field static final AUTODIMNESS_ANIM_STEPS:I = 0x147ae1

.field private static final BATTERY_LOW_BIT:I = 0x10

.field private static final BUTTON_BRIGHT_BIT:I = 0x4

.field static final DEBUG_SCREEN_ON:Z = false

.field private static final DEFAULT_SCREEN_BRIGHTNESS:I = 0xc0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final FEATURE_ALIGN_BKL_ENABLED:Z = true

.field private static FEATURE_AUTO_BRIGHTNESS_DECREASE:Z = false

.field private static final FEATURE_DISABLE_LS_ENABLED:Z = true

.field private static final FULL_WAKE_LOCK_ID:I = 0x2

.field private static final IGNORE_PREVENT_SCREEN_ON_FOR_SET_SCREEN_STATE:Z = true

.field static final IMMEDIATE_ANIM_STEPS:I = 0xa

.field static final INITIAL_BUTTON_BRIGHTNESS:I = 0x0

.field static final INITIAL_KEYBOARD_BRIGHTNESS:I = 0x0

.field static final INITIAL_SCREEN_BRIGHTNESS:I = 0xff

.field private static final KEYBOARD_BRIGHT_BIT:I = 0x8

.field private static final LIGHTS_MASK:I = 0xe

.field private static final LIGHT_SENSOR_DELAY:I = 0x4b0

.field private static final LIGHT_SENSOR_OFFSET_SCALE:I = 0x8

.field private static final LIGHT_SENSOR_RANGE_EXPANSION:I = 0x14

.field private static final LIGHT_SENSOR_RATE:I = 0xf4240

.field private static final LOCK_MASK:I = 0x3f

.field private static final LOG_PARTIAL_WL:Z = false

.field private static final LOG_TOUCH_DOWNS:Z = true

.field private static final LONG_DIM_TIME:I = 0x1b58

.field private static final LONG_KEYLIGHT_DELAY:I = 0x1770

.field private static final LOW_BATTERY_THRESHOLD:I = 0xa

.field private static final MEDIUM_KEYLIGHT_DELAY:I = 0x3a98

.field private static final NOMINAL_FRAME_TIME_MS:I = 0x10

.field static final PARTIAL_NAME:Ljava/lang/String; = "PowerManagerService"

.field private static final PARTIAL_WAKE_LOCK_ID:I = 0x1

.field private static final PROXIMITY_SENSOR_DELAY:I = 0x1f4

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final SCREEN_BRIGHT:I = 0x3

.field private static final SCREEN_BRIGHT_BIT:I = 0x2

.field private static final SCREEN_BUTTON_BRIGHT:I = 0x7

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON_BIT:I = 0x1

.field private static final SCREEN_ON_WAIT_KEYGUARD:Z = false

.field private static final SHORT_KEYLIGHT_DELAY_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final TAG_P:Ljava/lang/String; = "PowerManagerService_performance"

.field private static final WAKELOCK_DUMP_ENABLED:Z = true

.field private static final WAKELOCK_SKIPPED_TAG:[Ljava/lang/String; = null

.field private static final mDebugLightAnimation:Z = true

.field private static final mDebugLightSensor:Z = true

.field private static final mDebugProximitySensor:Z = true

.field private static mShutdownConfig:Z = false

.field private static final mSpew:Z = true


# instance fields
.field private ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

.field private final ACTION_QUICKBOOT_BOOT:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_BOOT_COMPLETE:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_SCREENOFF:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_SCREENON:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String;

.field private final MY_PID:I

.field private final MY_UID:I

.field inPowerOff:Z

.field private final QUICKBOOT_CHARGER_DEFAULT_BRIGHTNESS:I

.field private mActivityService:Landroid/app/IActivityManager;

.field mAnimateScreenLights:Z

.field mAnimateScreenLightsOrigin:Z

.field private mAnimationSetting:I

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAutoBrightessEnabled:Z

.field private mAutoBrightnessLevels:[I

.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private final mBroadcastQueue:[I

.field private mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private final mBroadcastWhy:[I

.field private mButtonBacklightValues:[I

.field private mButtonBrightOffDelay:I

.field private mButtonBrightnessOverride:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mContext:Landroid/content/Context;

.field private mDimDelay:I

.field private mDimScreen:Z

.field private mDoDelayLightAnimation:Z

.field private mDoneBooting:Z

.field private mEconomicalModeEnabled:Z

.field private mFinishedAnimating:Z

.field private mForceReenableScreenTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeadless:Z

.field private mHighestLightSensorValue:I

.field private volatile mInitComplete:Z

.field private mInitialAnimation:Z

.field private mInitialized:Z

.field private mIsDocked:Z

.field private mIsLowBattery:Z

.field private mIsPowered:Z

.field private mIsWakeLockBGDbgModeRunning:Z

.field private mIsQbShutdown:Z

.field private mIsWakeLockSkippedByTag:Z

.field private mKeyboardBacklightValues:[I

.field private mKeyboardLight:Lcom/android/server/LightsService$Light;

.field private mKeyboardVisible:Z

.field private mKeylightDelay:I

.field private mLastEventTime:J

.field private mLastProximityEventTime:J

.field private mLastScreenOnTime:J

.field private mLastTouchDown:J

.field private mLcdBacklightValues:[I

.field private mLcdBacklightValuesDown:[I

.field private mLcdLight:Lcom/android/server/LightsService$Light;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorAdjustSetting:F

.field private mLightSensorButtonBrightness:I

.field private mLightSensorControlScreenValue:I

.field private mLightSensorEnabled:Z

.field private mLightSensorKeyboardBrightness:I

.field private mLightSensorLastValueTemp:I

.field private mLightSensorPendingDecrease:Z

.field private mLightSensorPendingIncrease:Z

.field private mLightSensorPendingValue:F

.field private mLightSensorScreenBrightness:I

.field private mLightSensorScreenBrightnessWait:I

.field private mLightSensorValue:F

.field private mLightSensorWarmupTime:I

.field private mLightsService:Lcom/android/server/LightsService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLocks:Lcom/android/server/PowerManagerService$LockList;

.field private mMaxBrightness:I

.field private mMaximumScreenOffTimeout:I

.field private mNextTimeout:J

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mOldBacklightValue:I

.field private mPartialCount:I

.field private volatile mPokeAwakeOnSet:Z

.field private final mPokeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/PowerManagerService$PokeLock;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPokey:I

.field private volatile mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerState:I

.field private mPreparingForScreenOn:Z

.field private mPreventScreenOn:Z

.field private mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProxIgnoredBecauseScreenTurnedOff:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProximityPendingValue:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field private mProximityTask:Ljava/lang/Runnable;

.field private mProximityWakeLockCount:I

.field private mQbBrightnessTask:Ljava/lang/Runnable;

.field private mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessHandler:Landroid/os/Handler;

.field private mScreenBrightnessOverride:I

.field private mScreenBrightnessSetting:I

.field private mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOffDelay:I

.field private mScreenOffHandler:Landroid/os/Handler;

.field private mScreenOffIntent:Landroid/content/Intent;

.field private mScreenOffReason:I

.field mScreenOffStart:J

.field private mScreenOffTime:J

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOnDelay:Z

.field private mScreenOnIntent:Landroid/content/Intent;

.field private mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private mScreenOnListenerCalled:Z

.field mScreenOnStart:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mShortKeylightDelay:I

.field private mShutdownFlag:Z

.field private mSkippedScreenOn:Z

.field private mStayOnConditions:I

.field private mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStillNeedSleepNotification:Z

.field private mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

.field private final mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

.field private mTotalTouchDownTime:J

.field private mTouchCycles:I

.field private mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

.field mUnplugTurnsOnScreen:Z

.field private mUseSoftwareAutoBrightness:Z

.field private mUserActivityAllowed:Z

.field private mUserState:I

.field private mWaitKeyguardDraw:Z

.field private mWaitingForFirstLightSensor:Z

.field private mWakeLockBGDbgModeResult:Ljava/lang/String;

.field private mWakeLockState:I

.field private mWarningSpewThrottleCount:I

.field private mWarningSpewThrottleTime:J

.field private mWindowScaleAnimation:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    sput-boolean v3, Lcom/android/server/PowerManagerService;->FEATURE_AUTO_BRIGHTNESS_DECREASE:Z

    .line 379
    sput-boolean v2, Lcom/android/server/PowerManagerService;->mShutdownConfig:Z

    .line 4132
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ActivityManager-Launch"

    aput-object v1, v0, v2

    const-string v1, "ActivityManager-Sleep"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "AlarmManager"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeyInputQueue"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KEEP_SCREEN_ON_FLAG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SCREEN_FROZEN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sleep_broadcast"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Proximity Partial"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RILJ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "show keyguard"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "keyguard"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "keyguardWakeAndHandOff"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "VibratorService"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/PowerManagerService;->WAKELOCK_SKIPPED_TAG:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 10

    .prologue
    const/high16 v9, -0x4080

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 693
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 156
    const/16 v3, 0x1770

    iput v3, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 200
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 201
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->inPowerOff:Z

    .line 222
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 223
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 224
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    .line 225
    iput v5, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    .line 226
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    .line 227
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    .line 228
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    .line 229
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    .line 230
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 231
    iput v5, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 237
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 238
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 239
    iput v5, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 240
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    .line 241
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 242
    iput v6, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    .line 245
    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 250
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 253
    new-instance v3, Lcom/android/server/PowerManagerService$LockList;

    invoke-direct {v3, p0, v8}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    .line 267
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    .line 272
    new-instance v3, Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-direct {v3, p0, v8}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    .line 274
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    .line 276
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    .line 284
    iput v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 285
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 286
    iput v6, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 287
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 288
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 289
    iput v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 290
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    .line 291
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 292
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    .line 293
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 294
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 296
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorLastValueTemp:I

    .line 299
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorControlScreenValue:I

    .line 301
    iput v6, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 302
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    .line 303
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 305
    iput v5, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 306
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 307
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 308
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    .line 312
    const/16 v3, 0xc0

    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I

    .line 313
    iput v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 314
    iput v6, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 331
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    
    const/16 v3, 0x46

    iput v3, p0, Lcom/android/server/PowerManagerService;->QUICKBOOT_CHARGER_DEFAULT_BRIGHTNESS:I
    
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsQbShutdown:Z

    const-string v3, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->ACTION_QUICKBOOT_BOOT_COMPLETE:Ljava/lang/String;

    .line 329
    const-string v3, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->ACTION_QUICKBOOT_BOOT:Ljava/lang/String;

    .line 330
    const-string v3, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String;

    .line 331
    const-string v3, "android.intent.action.ACTION_QUICKBOOT_SCREENON"

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->ACTION_QUICKBOOT_SCREENON:Ljava/lang/String;

    .line 332
    const-string v3, "android.intent.action.ACTION_QUICKBOOT_SCREENOFF"

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->ACTION_QUICKBOOT_SCREENOFF:Ljava/lang/String;

    .line 333
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mScreenOnDelay:Z

    .line 364
    new-instance v3, Lcom/android/server/PowerManagerService$SyncKeyguard;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$SyncKeyguard;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    .line 365
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    .line 366
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mScreenOnListenerCalled:Z

    .line 378
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    .line 380
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    .line 382
    const/16 v3, 0xbb8

    iput v3, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I

    .line 384
    iput v5, p0, Lcom/android/server/PowerManagerService;->mOldBacklightValue:I

    .line 386
    iput-object v8, p0, Lcom/android/server/PowerManagerService;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 387
    iput-object v8, p0, Lcom/android/server/PowerManagerService;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    .line 392
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mFinishedAnimating:Z

    .line 1738
    new-instance v3, Lcom/android/server/PowerManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$4;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 1755
    new-instance v3, Lcom/android/server/PowerManagerService$5;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$5;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    .line 1835
    new-instance v3, Lcom/android/server/PowerManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$6;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 1846
    new-instance v3, Lcom/android/server/PowerManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$7;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2015
    new-instance v3, Lcom/android/server/PowerManagerService$8;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$8;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    .line 3135
    new-instance v3, Lcom/android/server/PowerManagerService$9;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$9;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    .line 3149
    new-instance v3, Lcom/android/server/PowerManagerService$10;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$10;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    .line 3164
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    .line 4016
    new-instance v3, Lcom/android/server/PowerManagerService$13;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$13;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;
    
    new-instance v3, Lcom/android/server/PowerManagerService$15;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$15;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mQbBrightnessTask:Ljava/lang/Runnable;

    .line 4099
    new-instance v3, Lcom/android/server/PowerManagerService$14;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$14;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 4130
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    .line 4131
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockSkippedByTag:Z

    .line 695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 696
    .local v1, token:J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    .line 697
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    .line 698
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 701
    iput v5, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    iput v5, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 704
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 707
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v3, :cond_0

    .line 708
    const-class v3, Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/hdmi/IHDMINative;

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    if-nez v3, :cond_1

    .line 714
    const-class v3, Lcom/mediatek/common/tvout/ITVOUTNative;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/tvout/ITVOUTNative;

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 719
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 720
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 715
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 716
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 226
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$10000(Lcom/android/server/PowerManagerService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/PowerManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SyncKeyguard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->dockStateChanged(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return p1
.end method

.method static synthetic access$3276(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/PowerManagerService;JJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mScreenOnListenerCalled:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/server/PowerManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy$ScreenOnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceReenableScreen()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mOldBacklightValue:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mOldBacklightValue:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/PowerManagerService;)Lcom/mediatek/common/tvout/ITVOUTNative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/PowerManagerService;)Lcom/mediatek/common/hdmi/IHDMINative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V

    return-void
.end method

.method static synthetic access$7302(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnDelay:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$7700(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    return v0
.end method

.method static synthetic access$7800(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mFinishedAnimating:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mFinishedAnimating:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->clearLightSensorValue()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/PowerManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/PowerManagerService;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return v0
.end method

.method static synthetic access$8502(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return p1
.end method

.method static synthetic access$8600(Lcom/android/server/PowerManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return v0
.end method

.method static synthetic access$8802(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return v0
.end method

.method static synthetic access$8902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9000(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return v0
.end method

.method static synthetic access$9100(Lcom/android/server/PowerManagerService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/PowerManagerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9201(Z)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->nativeSetScreenState(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return v0
.end method

.method static synthetic access$9301(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mQbBrightnessTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return p1
.end method

.method static synthetic access$9303(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide v0
.end method

.method static synthetic access$9402(Lcom/android/server/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide p1
.end method

.method static synthetic access$9500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorLastValueTemp:I

    return v0
.end method

.method static synthetic access$9800(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    return v0
.end method

.method static synthetic access$9902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    return p1
.end method

.method private applyButtonState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 2870
    const/4 v0, -0x1

    .line 2871
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 2885
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2875
    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_3

    .line 2876
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 2880
    :cond_2
    :goto_1
    if-lez v0, :cond_4

    .line 2881
    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 2877
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 2882
    :cond_4
    if-nez v0, :cond_0

    .line 2883
    and-int/lit8 p1, p1, -0x5

    goto :goto_0
.end method

.method private applyKeyboardState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 2890
    const/4 v0, -0x1

    .line 2891
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 2907
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2895
    .restart local p1
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v1, :cond_3

    .line 2896
    const/4 v0, 0x0

    .line 2902
    :cond_2
    :goto_1
    if-lez v0, :cond_5

    .line 2903
    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 2897
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_4

    .line 2898
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    goto :goto_1

    .line 2899
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 2904
    :cond_5
    if-nez v0, :cond_0

    .line 2905
    and-int/lit8 p1, p1, -0x9

    goto :goto_0
.end method

.method private batteryIsLow()Z
    .locals 2

    .prologue
    .line 2341
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimerLocked()V
    .locals 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1612
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1613
    return-void
.end method

.method private clearLightSensorValue()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2028
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2029
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 2031
    const-string v0, "PowerManagerService"

    const-string v1, "clearLightSensorValue: mHighestLightSensorValue = -1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iput v2, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 2034
    :cond_0
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    .line 2035
    return-void
.end method

.method private disableProximityLockLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3907
    const-string v2, "PowerManagerService"

    const-string v3, "disableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 3911
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3913
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3914
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3915
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3916
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 3918
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3922
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_1

    .line 3923
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3925
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProximityLockLocked mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v2, :cond_1

    .line 3929
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 3933
    .end local v0           #identity:J
    :cond_1
    return-void

    .line 3920
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dockStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 3167
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3168
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 3169
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    if-eqz v1, :cond_1

    .line 3171
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 3173
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 3175
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 3176
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3177
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 3179
    .end local v0           #value:I
    :cond_2
    monitor-exit v2

    .line 3180
    return-void

    .line 3179
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dumpPowerState(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 1392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const-string v0, "KEYBOARD_BRIGHT_BIT "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "SCREEN_BRIGHT_BIT "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "SCREEN_ON_BIT "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const-string v0, "BATTERY_LOW_BIT "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method private dumpWakeLockLocked()V
    .locals 11

    .prologue
    .line 1513
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 1514
    .local v0, N:I
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wakelock list dump: mLocks.size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1516
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7, v2}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1517
    .local v6, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v7, v7, 0x3f

    invoke-static {v7}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v5

    .line 1518
    .local v5, type:Ljava/lang/String;
    const-string v1, ""

    .line 1519
    .local v1, activated:Ljava/lang/String;
    iget-wide v3, v6, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 1520
    .local v3, total_time:J
    iget-boolean v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v7, :cond_0

    .line 1521
    const-string v1, " activated"

    .line 1522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    sub-long/2addr v7, v9

    add-long/2addr v3, v7

    .line 1524
    :cond_0
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(flags="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", minState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " total="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1529
    .end local v1           #activated:Ljava/lang/String;
    .end local v3           #total_time:J
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_1
    return-void
.end method

.method private enableLightSensorLocked(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 3975
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableLightSensorLocked enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLightSensorEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAutoBrightessEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWaitingForFirstLightSensor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eq v3, p1, :cond_1

    .line 3988
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    .line 3990
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3991
    .local v0, identity:J
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    .line 3993
    if-eqz p1, :cond_2

    .line 3995
    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 3997
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v2, v3

    .line 3998
    .local v2, value:I
    if-ltz v2, :cond_0

    .line 3999
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4000
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V

    .line 4002
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    const v6, 0xf4240

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4011
    .end local v2           #value:I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4014
    .end local v0           #identity:J
    :cond_1
    return-void

    .line 4005
    .restart local v0       #identity:J
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4006
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4007
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 4008
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4011
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private enableProximityLockLocked()V
    .locals 6

    .prologue
    .line 3890
    const-string v2, "PowerManagerService"

    const-string v3, "enableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v2, :cond_0

    .line 3894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3896
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3898
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3903
    .end local v0           #identity:J
    :cond_0
    return-void

    .line 3900
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private forceReenableScreen()V
    .locals 2

    .prologue
    .line 1997
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-nez v0, :cond_0

    .line 1998
    const-string v0, "PowerManagerService"

    const-string v1, "forceReenableScreen: mPreventScreenOn is false, nothing to do"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :goto_0
    return-void

    .line 2010
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v1, "App called preventScreenOn(true) but didn\'t promptly reenable the screen! Forcing the screen back on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    goto :goto_0
.end method

.method private forceUserActivityLocked()V
    .locals 4

    .prologue
    .line 2945
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2947
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    .line 2949
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2950
    .local v0, savedActivityAllowed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2951
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 2952
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2953
    return-void
.end method

.method private getAutoBrightnessValue(I[I)I
    .locals 12
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    .line 3093
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 3094
    iget-object v8, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v8, v8, v2

    if-gt p1, v8, :cond_3

    .line 3099
    :cond_0
    const/4 v8, 0x0

    aget v4, p2, v8

    .line 3100
    .local v4, minval:I
    iget-object v8, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v3, p2, v8

    .line 3105
    .local v3, maxval:I
    sub-int v8, v3, v4

    add-int/lit8 v5, v8, 0x14

    .line 3107
    .local v5, range:I
    aget v8, p2, v2

    sub-int/2addr v8, v4

    add-int/lit8 v8, v8, 0xa

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v7, v8, v9

    .line 3109
    .local v7, valf:F
    iget v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_5

    iget v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_5

    .line 3110
    iget v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    sub-float v8, v10, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 3111
    .local v0, adj:F
    float-to-double v8, v0

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_4

    .line 3112
    const/high16 v7, 0x3f80

    .line 3121
    .end local v0           #adj:F
    :cond_1
    :goto_1
    iget v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    const/high16 v9, 0x4100

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 3123
    int-to-float v8, v5

    mul-float/2addr v8, v7

    int-to-float v9, v4

    add-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v6, v8, -0xa

    .line 3124
    .local v6, val:I
    if-ge v6, v4, :cond_6

    move v6, v4

    .line 3131
    .end local v3           #maxval:I
    .end local v4           #minval:I
    .end local v5           #range:I
    .end local v6           #val:I
    .end local v7           #valf:F
    :cond_2
    :goto_2
    return v6

    .line 3093
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3114
    .restart local v0       #adj:F
    .restart local v3       #maxval:I
    .restart local v4       #minval:I
    .restart local v5       #range:I
    .restart local v7       #valf:F
    :cond_4
    div-float/2addr v7, v0

    goto :goto_1

    .line 3116
    .end local v0           #adj:F
    :cond_5
    iget v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    cmpg-float v8, v8, v11

    if-gez v8, :cond_1

    iget v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    const/high16 v9, -0x4080

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 3117
    iget v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    add-float/2addr v8, v10

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    double-to-float v0, v8

    .line 3118
    .restart local v0       #adj:F
    mul-float/2addr v7, v0

    goto :goto_1

    .line 3125
    .end local v0           #adj:F
    .restart local v6       #val:I
    :cond_6
    if-le v6, v3, :cond_2

    move v6, v3

    goto :goto_2

    .line 3127
    .end local v3           #maxval:I
    .end local v4           #minval:I
    .end local v5           #range:I
    .end local v6           #val:I
    .end local v7           #valf:F
    :catch_0
    move-exception v1

    .line 3129
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "PowerManagerService"

    const-string v9, "Values array must be non-empty and must be one element longer than the auto-brightness levels array.  Check config.xml."

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3131
    const/16 v6, 0xff

    goto :goto_2
.end method

.method private getAutoValue(I[I)I
    .locals 4
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    .line 3076
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3077
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_1

    .line 3081
    :cond_0
    aget v2, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3085
    :goto_1
    return v2

    .line 3076
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3082
    :catch_0
    move-exception v0

    .line 3084
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerManagerService"

    const-string v3, "getAutoBrightnessValue"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3085
    const/16 v2, 0xff

    goto :goto_1
.end method

.method private getDynamicWakeLockLocked(Lcom/android/server/PowerManagerService$WakeLock;Z)V
    .locals 4
    .parameter "wl"
    .parameter "isAcquire"

    .prologue
    .line 4190
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-nez v1, :cond_1

    .line 4204
    :cond_0
    :goto_0
    return-void

    .line 4193
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockSkippedByTag:Z

    if-eqz v1, :cond_2

    .line 4194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/server/PowerManagerService;->WAKELOCK_SKIPPED_TAG:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 4195
    iget-object v1, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    sget-object v2, Lcom/android/server/PowerManagerService;->WAKELOCK_SKIPPED_TAG:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4200
    .end local v0           #i:I
    :cond_2
    if-eqz p2, :cond_3

    .line 4201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAcquired: TAG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , FLAG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->getWakeLockFlagLocked(Lcom/android/server/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    goto :goto_0

    .line 4203
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nReleased: TAG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPreferredBrightness()I
    .locals 2

    .prologue
    .line 2858
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-ltz v1, :cond_0

    .line 2859
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 2866
    :goto_0
    return v1

    .line 2860
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    if-ltz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    if-nez v1, :cond_1

    .line 2862
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    goto :goto_0

    .line 2864
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I

    .line 2866
    .local v0, brightness:I
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private getWakeLockFlagLocked(Lcom/android/server/PowerManagerService$WakeLock;)Ljava/lang/String;
    .locals 8
    .parameter "wl"

    .prologue
    const/high16 v7, 0x2000

    const/high16 v6, 0x1000

    const/4 v5, 0x1

    .line 4144
    const-string v0, ""

    .line 4145
    .local v0, flag:Ljava/lang/String;
    const/4 v2, 0x0

    .line 4147
    .local v2, isMultiFlag:Z
    if-nez p1, :cond_0

    move-object v1, v0

    .line 4185
    .end local v0           #flag:Ljava/lang/String;
    .local v1, flag:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4151
    .end local v1           #flag:Ljava/lang/String;
    .restart local v0       #flag:Ljava/lang/String;
    :cond_0
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 4152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PARTIAL_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4153
    const/4 v2, 0x1

    .line 4155
    :cond_1
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0x1a

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_8

    .line 4156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_7

    const-string v3, "|"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FULL_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4158
    const/4 v2, 0x1

    .line 4164
    :cond_2
    :goto_2
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0x6

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 4165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_a

    const-string v3, "|"

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SCREEN_DIM_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4167
    const/4 v2, 0x1

    .line 4169
    :cond_3
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    .line 4170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_b

    const-string v3, "|"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4172
    const/4 v2, 0x1

    .line 4174
    :cond_4
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_5

    .line 4175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_c

    const-string v3, "|"

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ACQUIRE_CAUSES_WAKEUP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4177
    const/4 v2, 0x1

    .line 4179
    :cond_5
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_6

    .line 4180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_d

    const-string v3, "|"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ON_AFTER_RELEASE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4182
    const/4 v2, 0x1

    :cond_6
    move-object v1, v0

    .line 4185
    .end local v0           #flag:Ljava/lang/String;
    .restart local v1       #flag:Ljava/lang/String;
    goto/16 :goto_0

    .line 4156
    .end local v1           #flag:Ljava/lang/String;
    .restart local v0       #flag:Ljava/lang/String;
    :cond_7
    const-string v3, ""

    goto/16 :goto_1

    .line 4159
    :cond_8
    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v3, v3, 0xa

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 4160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v2, v5, :cond_9

    const-string v3, "|"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SCREEN_BRIGHT_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4162
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 4160
    :cond_9
    const-string v3, ""

    goto :goto_7

    .line 4165
    :cond_a
    const-string v3, ""

    goto/16 :goto_3

    .line 4170
    :cond_b
    const-string v3, ""

    goto/16 :goto_4

    .line 4175
    :cond_c
    const-string v3, ""

    goto/16 :goto_5

    .line 4180
    :cond_d
    const-string v3, ""

    goto :goto_6
.end method

.method private goToSleepLocked(JI)V
    .locals 12
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 3390
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 3391
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3392
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "goToSleep mLastEventTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3396
    iget-wide v6, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v6, v6, p1

    if-gtz v6, :cond_6

    .line 3397
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 3399
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 3400
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v6}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 3401
    .local v0, N:I
    const/4 v3, 0x0

    .line 3402
    .local v3, numCleared:I
    const/4 v4, 0x0

    .line 3403
    .local v4, proxLock:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3404
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v6, v2}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$WakeLock;

    .line 3405
    .local v5, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3406
    iget v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v6, v6, 0x3f

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    const/4 v6, 0x4

    if-ne p3, v6, :cond_1

    .line 3408
    const/4 v4, 0x1

    .line 3403
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3410
    :cond_1
    iget-boolean v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v6, :cond_2

    .line 3411
    iget-wide v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v5, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 3412
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    .line 3414
    :cond_2
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v6, v2}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$WakeLock;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 3415
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3419
    .end local v5           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_3
    if-nez v4, :cond_4

    .line 3420
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 3422
    const-string v6, "PowerManagerService"

    const-string v7, "setting mProxIgnoredBecauseScreenTurnedOff"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    :cond_4
    const/16 v6, 0xaa4

    invoke-static {v6, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3426
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 3427
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3429
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    if-eqz v6, :cond_5

    .line 3430
    const-string v6, "PowerManagerService"

    const-string v7, "--goToSleepLocked--trun off button light"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 3434
    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, p3}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 3435
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 3437
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #numCleared:I
    .end local v4           #proxLock:Z
    :cond_6
    return-void
.end method

.method private handleLightSensorValue(IZ)V
    .locals 9
    .parameter "value"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4061
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4062
    .local v0, milliseconds:J
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/high16 v5, -0x4080

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    iget-wide v5, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    cmp-long v2, v0, v5

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    if-eqz v2, :cond_2

    .line 4066
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4067
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 4068
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 4069
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 4097
    :cond_1
    :goto_0
    return-void

    .line 4071
    :cond_2
    int-to-float v2, p1

    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    if-nez v2, :cond_5

    :cond_3
    int-to-float v2, p1

    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    if-nez v2, :cond_5

    :cond_4
    int-to-float v2, p1

    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    if-nez v2, :cond_a

    .line 4076
    :cond_5
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4077
    int-to-float v2, p1

    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_7

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 4078
    int-to-float v2, p1

    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 4080
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorLastValueTemp:I

    .line 4082
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    if-eqz v2, :cond_1

    .line 4083
    :cond_6
    int-to-float v2, p1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 4085
    const-string v2, "true"

    const-string v3, "sys.config.environmenttest"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4087
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    move v2, v4

    .line 4077
    goto :goto_1

    :cond_8
    move v3, v4

    .line 4078
    goto :goto_2

    .line 4089
    :cond_9
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4094
    :cond_a
    int-to-float v2, p1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    goto :goto_0
.end method

.method private isButtonLightDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3283
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_light_off"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPoweroffAlarmShutdown()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3322
    .local v4, uid:I
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3323
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3324
    .local v1, pkgs:[Ljava/lang/String;
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling package is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    aget-object v7, v1, v6

    const-string v8, "com.baidu.baiduclock"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3327
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3328
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Too early to call shutdown() or reboot()"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3331
    :cond_1
    new-instance v3, Lcom/android/server/PowerManagerService$16;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$16;-><init>(Lcom/android/server/PowerManagerService;)V

    .line 3341
    .local v3, runnable:Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3342
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3343
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3348
    .end local v0           #msg:Landroid/os/Message;
    .end local v3           #runnable:Ljava/lang/Runnable;
    :goto_0
    return v5

    :cond_2
    move v5, v6

    goto :goto_0
.end method

.method private isScreenLock(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    .line 992
    and-int/lit8 v0, p1, 0x3f

    .line 993
    .local v0, n:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScreenTurningOffLocked()Z
    .locals 1

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v0, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    #getter for: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$8400(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lightSensorChangedLocked(IZ)V
    .locals 7
    .parameter "value"
    .parameter "immediate"

    .prologue
    .line 3184
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lightSensorChangedLocked value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " immediate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 3190
    const-string v4, "PowerManagerService"

    const-string v5, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    :cond_0
    :goto_0
    return-void

    .line 3195
    :cond_1
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorLastValueTemp:I

    .line 3197
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 3198
    int-to-float v4, p1

    iput v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3200
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v4, :cond_0

    .line 3204
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_0

    .line 3210
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorControlScreenValue:I

    if-ge v4, p1, :cond_4

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v2

    .line 3214
    .local v2, lcdValue:I
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLightSensorControlScreenValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorControlScreenValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lcdValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 3218
    .local v0, buttonValue:I
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buttonValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v4, :cond_5

    .line 3222
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v1

    .line 3226
    .local v1, keyboardValue:I
    :goto_2
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyboardValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 3229
    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 3230
    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 3232
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorControlScreenValue:I

    .line 3235
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-gez v4, :cond_2

    .line 3236
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    if-nez v4, :cond_2

    .line 3237
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_6

    .line 3239
    const-string v4, "PowerManagerService"

    const-string v5, "Skip animation in DIM state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    :cond_2
    :goto_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v4, :cond_0

    :cond_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    .line 3286
    const-string v4, "PowerManagerService"

    const-string v5, "<<<<< FEATURE_ALIGN_BKL >>>>> KEYBOARD BKL Changes because of LS"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto/16 :goto_0

    .line 3210
    .end local v0           #buttonValue:I
    .end local v1           #keyboardValue:I
    .end local v2           #lcdValue:I
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValuesDown:[I

    goto/16 :goto_1

    .line 3224
    .restart local v0       #buttonValue:I
    .restart local v2       #lcdValue:I
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #keyboardValue:I
    goto :goto_2

    .line 3244
    :cond_6
    if-eqz p2, :cond_8

    .line 3245
    const/16 v3, 0xa

    .line 3255
    .local v3, steps:I
    :goto_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    .line 3257
    const-string v4, "PowerManagerService"

    const-string v5, "<<<<< FEATURE_ALIGN_BKL >>>>> LCD BKL Changes because of LS"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v4, :cond_7

    const-string v4, "true"

    const-string v5, "sys.config.environmenttest"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3262
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_screen_brightness"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3264
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set auto screen brightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_7
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v5, 0x2

    mul-int/lit8 v6, v3, 0x10

    invoke-virtual {v4, v2, p1, v5, v6}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(IIII)V

    goto :goto_3

    .line 3247
    .end local v3           #steps:I
    :cond_8
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    monitor-enter v5

    .line 3248
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v4, v4, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-le v4, v2, :cond_9

    sget-boolean v4, Lcom/android/server/PowerManagerService;->FEATURE_AUTO_BRIGHTNESS_DECREASE:Z

    if-eqz v4, :cond_a

    .line 3249
    :cond_9
    const/16 v3, 0x3c

    .line 3253
    .restart local v3       #steps:I
    :goto_5
    monitor-exit v5

    goto :goto_4

    .end local v3           #steps:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3251
    :cond_a
    const v3, 0x147ae1

    .restart local v3       #steps:I
    goto :goto_5
.end method

.method private static lockType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1374
    sparse-switch p0, :sswitch_data_0

    .line 1387
    const-string v0, "???                           "

    :goto_0
    return-object v0

    .line 1377
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK                "

    goto :goto_0

    .line 1379
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    goto :goto_0

    .line 1381
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK          "

    goto :goto_0

    .line 1383
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK             "

    goto :goto_0

    .line 1385
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_0

    .line 1374
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->nativeReboot(Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method public static lowLevelShutdown()V
    .locals 0

    .prologue
    .line 922
    invoke-static {}, Lcom/android/server/PowerManagerService;->nativeShutdown()V

    .line 923
    return-void
.end method

.method private static native nativeAcquireWakeLock(ILjava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReboot(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeReleaseWakeLock(Ljava/lang/String;)V
.end method

.method private static native nativeSetAALMode(I)V
.end method

.method private static native nativeSetLightSensorValue(I)V
.end method

.method private native nativeSetPowerState(ZZ)V
.end method

.method private static native nativeSetScreenState(Z)I
.end method

.method private static native nativeShutdown()V
.end method

.method private native nativeStartSurfaceFlingerAnimation(I)V
.end method

.method private proximityChangedLocked(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 3937
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximityChangedLocked, active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 3940
    const-string v0, "PowerManagerService"

    const-string v1, "Ignoring proximity change after sensor is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    :cond_0
    :goto_0
    return-void

    .line 3943
    :cond_1
    if-eqz p1, :cond_3

    .line 3945
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_2

    .line 3949
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 3952
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    goto :goto_0

    .line 3957
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3959
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_4

    .line 3963
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 3966
    :cond_4
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_0

    .line 3968
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_0
.end method

.method private registerQbReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3261
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3262
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3263
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3264
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SCREENON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3265
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SCREENOFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3266
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3267
    return-void
.end method

.method private releaseWakeLockLocked(Landroid/os/IBinder;IZ)V
    .locals 10
    .parameter "lock"
    .parameter "flags"
    .parameter "death"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1234
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;

    move-result-object v9

    .line 1235
    .local v9, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v9, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-boolean v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v0, :cond_2

    .line 1240
    iget-wide v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, v9, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    iput-wide v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 1243
    :cond_2
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total_time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1248
    iget v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1249
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1250
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_3

    .line 1251
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v0, :cond_4

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    .line 1255
    const-string v0, "PowerManagerService"

    const-string v1, "waiting for proximity sensor to go negative"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_3
    :goto_1
    iget-object v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v9, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1283
    iget-object v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    invoke-virtual {p0, v9, v0}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1286
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-eqz v0, :cond_0

    .line 1287
    invoke-direct {p0, v9, v5}, Lcom/android/server/PowerManagerService;->getDynamicWakeLockLocked(Lcom/android/server/PowerManagerService$WakeLock;Z)V

    goto/16 :goto_0

    .line 1258
    :cond_4
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_1

    .line 1262
    :cond_5
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1264
    iget v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    if-nez v0, :cond_6

    .line 1266
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    iput-boolean v8, v0, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    .line 1268
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 1270
    :cond_7
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_1

    .line 1273
    :cond_8
    iget v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    if-ne v0, v8, :cond_3

    .line 1274
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1275
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-nez v0, :cond_3

    .line 1277
    const-string v0, "PowerManagerService"

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->nativeReleaseWakeLock(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private screenOffFinishedAnimatingLocked(I)I
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    .line 2333
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2335
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2336
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2337
    .local v0, err:I
    return v0
.end method

.method private sendNotificationLocked(ZI)V
    .locals 8
    .parameter "on"
    .parameter "why"

    .prologue
    const/16 v7, 0xaa7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1659
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-nez v1, :cond_1

    .line 1736
    :cond_0
    :goto_0
    return-void

    .line 1675
    :cond_1
    if-nez p1, :cond_2

    .line 1676
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 1680
    :cond_2
    const/4 v0, 0x0

    .line 1681
    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v1, v1, v0

    if-eq v1, v5, :cond_3

    .line 1682
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1684
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_8

    move v1, v2

    :goto_2
    aput v1, v4, v0

    .line 1685
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v0

    .line 1694
    if-ne v0, v6, :cond_5

    .line 1697
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aget v1, v1, v3

    if-le v1, p2, :cond_4

    .line 1698
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v3

    .line 1700
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_9

    move v1, v2

    :goto_3
    aput v1, v4, v3

    .line 1701
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 1702
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v6

    .line 1703
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1704
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1705
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1706
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1707
    const/4 v0, 0x0

    .line 1709
    :cond_5
    if-ne v0, v2, :cond_6

    if-nez p1, :cond_6

    .line 1710
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v3

    .line 1711
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 1712
    const/4 v0, -0x1

    .line 1715
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1716
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1721
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->inPowerOff:Z

    if-nez v1, :cond_7

    .line 1722
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1726
    :cond_7
    if-ltz v0, :cond_0

    .line 1731
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1732
    const/16 v1, 0xaa5

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1733
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1734
    const-string v1, "PowerManagerService"

    const-string v2, "mNotificationTask post"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 1684
    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 1700
    goto/16 :goto_3
.end method

.method private setLightBrightness(II)V
    .locals 2
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 2855
    return-void
.end method

.method private setPowerState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2111
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 2112
    return-void
.end method

.method private setPowerState(IZI)V
    .locals 15
    .parameter "newState"
    .parameter "noChangeLights"
    .parameter "reason"

    .prologue
    .line 2116
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v10

    .line 2120
    :try_start_0
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerState: mPowerState=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newState=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " noChangeLights="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    if-eqz p2, :cond_0

    .line 2127
    and-int/lit8 v9, p1, -0xf

    iget v11, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v11, v11, 0xe

    or-int p1, v9, v11

    .line 2129
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v9, :cond_1

    .line 2131
    and-int/lit8 p1, p1, -0x4

    .line 2134
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2135
    or-int/lit8 p1, p1, 0x10

    .line 2139
    :goto_0
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_3

    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v9, :cond_3

    .line 2140
    monitor-exit v10

    .line 2319
    :goto_1
    return-void

    .line 2137
    :cond_2
    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    .line 2143
    :cond_3
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-nez v9, :cond_4

    .line 2144
    or-int/lit8 p1, p1, 0xf

    .line 2147
    :cond_4
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5

    const/4 v6, 0x1

    .line 2148
    .local v6, oldScreenOn:Z
    :goto_2
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_6

    const/4 v5, 0x1

    .line 2151
    .local v5, newScreenOn:Z
    :goto_3
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerState: mPowerState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " noChangeLights="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const-string v11, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldKeyboardBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " newKeyboardBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const-string v11, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldScreenBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " newScreenBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string v11, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldButtonBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " newButtonBright="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldScreenOn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newScreenOn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    const-string v11, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  oldBatteryLow="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    :goto_a
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " newBatteryLow="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    :goto_b
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-eq v9, v0, :cond_f

    const/4 v8, 0x1

    .line 2167
    .local v8, stateChanged:Z
    :goto_c
    if-eqz v8, :cond_10

    const/4 v9, 0x3

    move/from16 v0, p3

    if-ne v0, v9, :cond_10

    .line 2168
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->isScreenSaverEnabled()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2170
    const-string v9, "PowerManagerService"

    const-string v11, "setPowerState: running screen saver instead of turning off screen"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->startScreenSaver()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2174
    monitor-exit v10

    goto/16 :goto_1

    .line 2318
    .end local v5           #newScreenOn:Z
    .end local v6           #oldScreenOn:Z
    .end local v8           #stateChanged:Z
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2147
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2148
    .restart local v6       #oldScreenOn:Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 2153
    .restart local v5       #newScreenOn:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 2155
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 2157
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 2161
    :cond_d
    const/4 v9, 0x0

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    goto :goto_b

    .line 2165
    :cond_f
    const/4 v8, 0x0

    goto :goto_c

    .line 2201
    .restart local v8       #stateChanged:Z
    :cond_10
    if-eq v6, v5, :cond_1d

    .line 2202
    if-eqz v5, :cond_17

    .line 2207
    :try_start_1
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    if-eqz v9, :cond_11

    .line 2208
    const/4 v9, 0x0

    const/4 v11, 0x2

    invoke-direct {p0, v9, v11}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2216
    :cond_11
    const/4 v7, 0x1

    .line 2218
    .local v7, reallyTurnScreenOn:Z
    const-string v9, "PowerManagerService_performance"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- turning screen on...  mPreventScreenOn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-eqz v9, :cond_12

    .line 2228
    :cond_12
    if-eqz v7, :cond_16

    .line 2229
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v2

    .line 2230
    .local v2, err:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 2232
    .local v3, identity:J
    :try_start_2
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v11

    invoke-interface {v9, v11}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 2233
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2237
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2246
    .end local v3           #identity:J
    :goto_d
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2247
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2248
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2249
    const/16 v9, 0xaa8

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget v13, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2251
    if-nez v2, :cond_14

    .line 2252
    const/4 v9, 0x1

    const/4 v11, -0x1

    invoke-direct {p0, v9, v11}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2257
    if-eqz v8, :cond_13

    .line 2258
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2260
    :cond_13
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2261
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    .line 2263
    :cond_14
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mFinishedAnimating:Z

    .line 2315
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_15
    :goto_e
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0xf

    and-int/lit8 v11, p1, 0xe

    or-int/2addr v9, v11

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2317
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 2318
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2234
    .restart local v2       #err:I
    .restart local v3       #identity:J
    .restart local v7       #reallyTurnScreenOn:Z
    :catch_0
    move-exception v1

    .line 2235
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOn on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2237
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2240
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_16
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->clearLightSensorValue()V

    .line 2241
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    .line 2243
    const/4 v2, 0x0

    .restart local v2       #err:I
    goto :goto_d

    .line 2266
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_17
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mFinishedAnimating:Z

    .line 2267
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->inPowerOff:Z

    .line 2270
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2271
    if-eqz v8, :cond_18

    .line 2272
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2276
    :cond_18
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2277
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 2278
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 2279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v3

    .line 2282
    .restart local v3       #identity:J
    :try_start_6
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2286
    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2288
    :goto_f
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0x2

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2289
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 2290
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mFinishedAnimating:Z

    if-nez v9, :cond_1b

    .line 2291
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isKeyguardEnabled()Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 2293
    :cond_19
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->clearLightSensorValue()V

    .line 2294
    const-string v9, "PowerManagerService"

    const-string v11, "FinishedAnimatingLocked in setPowerState"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I

    move-result v2

    .line 2299
    :goto_10
    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v9, v0}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2300
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mFinishedAnimating:Z

    .line 2308
    :goto_11
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->inPowerOff:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_e

    .line 2283
    :catch_1
    move-exception v1

    .line 2284
    .restart local v1       #e:Landroid/os/RemoteException;
    :try_start_8
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOff on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2286
    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2297
    :cond_1a
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mWaitKeyguardDraw:Z

    goto :goto_10

    .line 2302
    :cond_1b
    const-string v9, "PowerManagerService"

    const-string v11, "FinishedAnimatingLocked in setPowerState not execute."

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2305
    :cond_1c
    const/4 v2, 0x0

    .line 2306
    .restart local v2       #err:I
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    goto :goto_11

    .line 2310
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_1d
    if-eqz v8, :cond_15

    .line 2312
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_e
.end method

.method private setScreenBrightnessMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3531
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<< setScreenBrightnessMode >>>>> mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3534
    if-ne p1, v0, :cond_2

    .line 3535
    .local v0, enabled:Z
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eq v1, v0, :cond_1

    .line 3536
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    .line 3538
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 3540
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<< FEATURE_DISABLE_LS >>>> LCD Mode Changed: new_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3547
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 3548
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 3551
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-nez v1, :cond_1

    .line 3556
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3557
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 3558
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    .line 3567
    :cond_1
    monitor-exit v2

    .line 3568
    return-void

    .end local v0           #enabled:Z
    :cond_2
    move v0, v1

    .line 3534
    goto :goto_0

    .line 3567
    .restart local v0       #enabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setScreenEcoMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3517
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<< setScreenEcoMode >>>>> mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    return-void
.end method

.method private setScreenOffTimeoutsLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3576
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 3577
    iget v1, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3578
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3579
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3609
    :goto_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenOffTimeouts mKeylightDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenOffDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    return-void

    .line 3580
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 3581
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3582
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3583
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 3585
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 3586
    .local v0, totalDelay:I
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-le v0, v1, :cond_2

    .line 3587
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 3589
    :cond_2
    const/16 v1, 0x1770

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3590
    if-gez v0, :cond_3

    .line 3592
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3601
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x32c8

    if-lt v0, v1, :cond_5

    .line 3602
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    add-int/lit16 v1, v1, -0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3603
    const/16 v1, 0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 3593
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    if-ge v1, v0, :cond_4

    .line 3597
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_1

    .line 3599
    :cond_4
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_1

    .line 3605
    :cond_5
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    goto/16 :goto_0
.end method

.method private setScreenStateLocked(Z)I
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 2038
    const/4 v0, 0x0

    .line 2044
    .local v0, err:I
    if-eqz p1, :cond_4

    .line 2045
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_1

    .line 2060
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 2068
    :cond_1
    :goto_0
    const-string v1, "1"

    const-string v2, "sys.ipo.shutdown"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2069
    sget-boolean v1, Lcom/android/server/PowerManagerService;->mShutdownConfig:Z

    if-nez v1, :cond_2

    .line 2070
    const-string v1, "sys.ipo.pmsShutdown"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/PowerManagerService;->mShutdownConfig:Z

    .line 2073
    :cond_2
    const/4 v0, 0x0

    .line 2081
    :goto_1
    const-string v1, "PowerManagerService_performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    if-nez v0, :cond_3

    .line 2084
    if-eqz p1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_2
    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    .line 2085
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_3

    .line 2091
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 2092
    if-eqz p1, :cond_7

    .line 2095
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    .line 2106
    :cond_3
    :goto_3
    return v0

    .line 2064
    :cond_4
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->dumpWakeLockLocked()V

    goto :goto_0

    .line 2075
    :cond_5
    sput-boolean v3, Lcom/android/server/PowerManagerService;->mShutdownConfig:Z

    .line 2076
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->nativeSetScreenState(Z)I

    move-result v0

    goto :goto_1

    .line 2084
    :cond_6
    const-wide/16 v1, 0x0

    goto :goto_2

    .line 2098
    :cond_7
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2099
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_3
.end method

.method private setTimeoutLocked(JI)V
    .locals 6
    .parameter "now"
    .parameter "nextState"

    .prologue
    .line 1532
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 1533
    return-void
.end method

.method private setTimeoutLocked(JJI)V
    .locals 9
    .parameter "now"
    .parameter "originalTimeoutOverride"
    .parameter "nextState"

    .prologue
    .line 1539
    move-wide v0, p3

    .line 1540
    .local v0, timeoutOverride:J
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 1541
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1542
    const-wide/16 v2, 0x0

    .line 1543
    .local v2, when:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 1544
    packed-switch p5, :pswitch_data_0

    .line 1567
    :pswitch_0
    move-wide v2, p1

    .line 1593
    :goto_0
    :try_start_0
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTimeoutLocked now="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " timeoutOverride="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " nextState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " when="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1599
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iput p5, v4, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1600
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    sub-long v4, p3, v0

    :goto_1
    iput-wide v4, v7, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    .line 1603
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1604
    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    .line 1605
    monitor-exit v6

    .line 1607
    .end local v2           #when:J
    :cond_0
    return-void

    .line 1548
    .restart local v2       #when:J
    :pswitch_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1549
    goto :goto_0

    .line 1551
    :pswitch_2
    iget v4, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    iget v7, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I

    int-to-long v7, v7

    sub-long v2, v4, v7

    .line 1552
    goto :goto_0

    .line 1555
    :pswitch_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_1

    .line 1556
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1557
    goto :goto_0

    .line 1559
    :cond_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDimDelay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " while trying to dim"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1563
    :try_start_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v7, v4

    add-long v2, p1, v7

    .line 1564
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1605
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1572
    :cond_2
    :try_start_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    .line 1573
    add-long v2, p1, v0

    .line 1574
    const/4 p5, 0x0

    .line 1575
    goto/16 :goto_0

    .line 1577
    :cond_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1579
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_5

    .line 1580
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_4

    .line 1581
    add-long v2, p1, v0

    .line 1582
    const/4 p5, 0x1

    .line 1583
    goto/16 :goto_0

    .line 1585
    :cond_4
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1588
    :cond_5
    add-long v2, p1, v0

    .line 1589
    const/4 p5, 0x3

    goto/16 :goto_0

    .line 1600
    :cond_6
    const-wide/16 v4, -0x1

    goto/16 :goto_1

    .line 1544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldDeferScreenOnLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2346
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    if-eqz v2, :cond_0

    .line 2350
    const-string v2, "PowerManagerService"

    const-string v3, "updateLights: delaying screen on due to mPreparingForScreenOn"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    :goto_0
    return v1

    .line 2357
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2358
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_1

    .line 2359
    const-string v2, "PowerManagerService"

    const-string v3, "updateLights: delaying screen on due to notification queue"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2357
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2365
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldLog(J)Z
    .locals 7
    .parameter "time"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2930
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2931
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 2932
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    .line 2933
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 2934
    monitor-exit v2

    .line 2939
    :goto_0
    return v0

    .line 2935
    :cond_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_1

    .line 2936
    iget v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 2937
    monitor-exit v2

    goto :goto_0

    .line 2941
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2939
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .locals 4
    .parameter "shutdown"
    .parameter "confirm"
    .parameter "reason"
    .parameter "wait"

    .prologue
    .line 3353
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3354
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call shutdown() or reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3357
    :cond_1
    new-instance v1, Lcom/android/server/PowerManagerService$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/PowerManagerService$17;-><init>(Lcom/android/server/PowerManagerService;ZZLjava/lang/String;)V

    .line 3371
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3372
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3375
    if-eqz p4, :cond_2

    .line 3376
    monitor-enter v1

    .line 3379
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3380
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3383
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3385
    :cond_2
    return-void
.end method

.method private updateLightsLocked(II)V
    .locals 22
    .parameter "newState"
    .parameter "forceState"

    .prologue
    .line 2369
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2373
    .local v11, oldState:I
    and-int/lit8 v19, v11, 0x1

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2377
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->shouldDeferScreenOnLocked()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v19, :cond_1

    .line 2378
    and-int/lit8 p1, p1, -0x4

    .line 2382
    :cond_1
    and-int/lit8 v19, p1, 0x1

    if-eqz v19, :cond_2

    .line 2388
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyKeyboardState(I)I

    move-result p1

    .line 2390
    :cond_2
    xor-int v15, p1, v11

    .line 2391
    .local v15, realDifference:I
    or-int v4, v15, p2

    .line 2392
    .local v4, difference:I
    if-nez v4, :cond_4

    .line 2393
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mScreenOnListenerCalled:Z

    .line 2550
    :cond_3
    :goto_0
    return-void

    .line 2397
    :cond_4
    const/4 v10, 0x0

    .line 2398
    .local v10, offMask:I
    const/4 v5, 0x0

    .line 2399
    .local v5, dimMask:I
    const/4 v12, 0x0

    .line 2401
    .local v12, onMask:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v13

    .line 2403
    .local v13, preferredBrightness:I
    and-int/lit8 v19, v4, 0x8

    if-eqz v19, :cond_5

    .line 2404
    and-int/lit8 v19, p1, 0x8

    if-nez v19, :cond_10

    .line 2405
    or-int/lit8 v10, v10, 0x8

    .line 2421
    :cond_5
    :goto_1
    and-int/lit8 v19, v4, 0x3

    if-eqz v19, :cond_b

    .line 2422
    const/4 v9, -0x1

    .line 2428
    .local v9, nominalCurrentValue:I
    and-int/lit8 v19, v15, 0x3

    if-eqz v19, :cond_6

    .line 2429
    and-int/lit8 v19, v11, 0x3

    packed-switch v19, :pswitch_data_0

    .line 2442
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->getCurrentBrightness()I

    move-result v9

    .line 2446
    :cond_6
    :goto_2
    move v3, v13

    .line 2447
    .local v3, brightness:I
    const/16 v18, 0x1e

    .line 2448
    .local v18, steps:I
    and-int/lit8 v19, p1, 0x2

    if-nez v19, :cond_8

    .line 2452
    const/high16 v16, 0x3fc0

    .line 2453
    .local v16, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v13

    move/from16 v20, v0

    div-float v14, v19, v20

    .line 2454
    .local v14, ratio:F
    const/high16 v19, 0x3f80

    cmpl-float v19, v14, v19

    if-lez v19, :cond_7

    const/high16 v14, 0x3f80

    .line 2455
    :cond_7
    and-int/lit8 v19, p1, 0x1

    if-nez v19, :cond_12

    .line 2456
    and-int/lit8 v19, v11, 0x2

    if-eqz v19, :cond_11

    .line 2458
    const/16 v18, 0x1e

    .line 2463
    :goto_3
    const/4 v3, 0x0

    .line 2484
    .end local v14           #ratio:F
    .end local v16           #scale:F
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    and-int/lit8 v19, p1, 0x1

    if-eqz v19, :cond_9

    .line 2485
    const/16 v18, 0xa

    .line 2488
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2490
    .local v7, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2494
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2497
    :goto_5
    const-string v19, "PowerManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "newState="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", realDifference="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " SCREEN_ON_BIT="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mScreenOnListenerCalled="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mScreenOnListenerCalled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    and-int/lit8 v19, p1, 0x1

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mScreenOnListenerCalled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 2500
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    .line 2503
    :goto_6
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mScreenOnListenerCalled:Z

    .line 2505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 2506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_a

    .line 2507
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 2508
    :cond_a
    mul-int/lit8 v6, v18, 0x10

    .line 2509
    .local v6, dt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 2519
    .end local v3           #brightness:I
    .end local v6           #dt:I
    .end local v7           #identity:J
    .end local v9           #nominalCurrentValue:I
    .end local v18           #steps:I
    :cond_b
    const-string v19, "PowerManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "offMask=0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " dimMask=0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " onMask=0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " difference=0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " realDifference=0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " forceState=0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    if-eqz v10, :cond_c

    .line 2529
    const-string v19, "PowerManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Setting brightess off: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v1}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2532
    :cond_c
    if-eqz v5, :cond_e

    .line 2533
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2534
    .restart local v3       #brightness:I
    and-int/lit8 v19, p1, 0x10

    if-eqz v19, :cond_d

    const/16 v19, 0xa

    move/from16 v0, v19

    if-le v3, v0, :cond_d

    .line 2536
    const/16 v3, 0xa

    .line 2538
    :cond_d
    const-string v19, "PowerManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Setting brightess dim "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2541
    .end local v3           #brightness:I
    :cond_e
    if-eqz v12, :cond_3

    .line 2542
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v3

    .line 2543
    .restart local v3       #brightness:I
    and-int/lit8 v19, p1, 0x10

    if-eqz v19, :cond_f

    const/16 v19, 0xa

    move/from16 v0, v19

    if-le v3, v0, :cond_f

    .line 2545
    const/16 v3, 0xa

    .line 2547
    :cond_f
    const-string v19, "PowerManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Setting brightess on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    goto/16 :goto_0

    .line 2407
    .end local v3           #brightness:I
    :cond_10
    or-int/lit8 v12, v12, 0x8

    goto/16 :goto_1

    .line 2431
    .restart local v9       #nominalCurrentValue:I
    :pswitch_1
    move v9, v13

    .line 2432
    goto/16 :goto_2

    .line 2434
    :pswitch_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2435
    goto/16 :goto_2

    .line 2437
    :pswitch_3
    const/4 v9, 0x0

    .line 2438
    goto/16 :goto_2

    .line 2461
    .restart local v3       #brightness:I
    .restart local v14       #ratio:F
    .restart local v16       #scale:F
    .restart local v18       #steps:I
    :cond_11
    const/high16 v19, 0x41f0

    mul-float v19, v19, v14

    const/high16 v20, 0x3fc0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_3

    .line 2465
    :cond_12
    and-int/lit8 v19, v11, 0x1

    if-eqz v19, :cond_14

    .line 2467
    const/high16 v19, 0x41f0

    const/high16 v20, 0x3f80

    sub-float v20, v20, v14

    mul-float v19, v19, v20

    const/high16 v20, 0x3fc0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2472
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getStayOnConditionsLocked()I

    move-result v17

    .line 2473
    .local v17, stayOnConditions:I
    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 2479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2481
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    goto/16 :goto_4

    .line 2470
    .end local v17           #stayOnConditions:I
    :cond_14
    const/high16 v19, 0x41f0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    goto :goto_7

    .line 2491
    .end local v14           #ratio:F
    .end local v16           #scale:F
    .restart local v7       #identity:J
    :catch_0
    move-exception v19

    .line 2494
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_0
    move-exception v19

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19

    .line 2502
    :cond_15
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mDoDelayLightAnimation:Z

    goto/16 :goto_6

    .line 2429
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNativePowerStateLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2322
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    if-nez v0, :cond_0

    .line 2323
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 2327
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2323
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateSettingsValues()V
    .locals 3

    .prologue
    .line 3620
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_keylight_delay_ms"

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 3625
    return-void
.end method

.method private updateWakeLockLocked()V
    .locals 2

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->getStayOnConditionsLocked()I

    move-result v0

    .line 980
    .local v0, stayOnConditions:I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v1, v0}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 983
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 988
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 986
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0
.end method

.method private userActivity(JJZIZZ)V
    .locals 13
    .parameter "time"
    .parameter "timeoutOverride"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"
    .parameter "ignoreIfScreenOff"

    .prologue
    .line 2994
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_1

    .line 3071
    :cond_0
    :goto_0
    return-void

    .line 3001
    :cond_1
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v12

    .line 3003
    :try_start_0
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UA mLastEventTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mUAAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mUserState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWLState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mP-SensorActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mP-SensorEnabed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeoutOverride="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3014
    const-string v2, "PowerManagerService"

    const-string v3, "ignoring user activity while turning off screen"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    monitor-exit v12

    goto/16 :goto_0

    .line 3066
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3019
    :cond_2
    if-eqz p8, :cond_3

    :try_start_1
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 3020
    monitor-exit v12

    goto/16 :goto_0

    .line 3024
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v2, :cond_4

    .line 3025
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3027
    :cond_4
    iget-wide v2, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_5

    if-eqz p7, :cond_8

    .line 3028
    :cond_5
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 3029
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_7

    :cond_6
    if-eqz p7, :cond_8

    .line 3033
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-nez v2, :cond_a

    .line 3034
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xf

    :goto_1
    iput v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3041
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 3042
    .local v11, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .line 3044
    .local v9, ident:J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v0, p6

    invoke-interface {v2, v11, v0}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3048
    :try_start_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3051
    :goto_3
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 3052
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v2, v3

    const/4 v3, 0x2

    move/from16 v0, p5

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 3055
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorLastValueTemp:I

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, v2, v3}, Lcom/android/server/PowerManagerService;->getAutoValue(I[I)I

    move-result v8

    .line 3057
    .local v8, buttonLightValue:I
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--userActivity--mLightSensorLastValueTemp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorLastValueTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --buttonLightValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2, v8}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3061
    if-nez v8, :cond_b

    const/4 v7, 0x3

    :goto_4
    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 3066
    .end local v8           #buttonLightValue:I
    .end local v9           #ident:J
    .end local v11           #uid:I
    :cond_8
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3068
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v2, :cond_0

    .line 3069
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto/16 :goto_0

    .line 3034
    :cond_9
    const/4 v2, 0x7

    goto :goto_1

    .line 3038
    :cond_a
    :try_start_4
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto :goto_2

    .line 3045
    .restart local v9       #ident:J
    .restart local v11       #uid:I
    :catch_0
    move-exception v2

    .line 3048
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3061
    .restart local v8       #buttonLightValue:I
    :cond_b
    const/4 v7, 0x7

    goto :goto_4
.end method


# virtual methods
.method public acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 10
    .parameter "flags"
    .parameter "lock"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1009
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1010
    .local v4, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v3, v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :cond_0
    if-eqz p4, :cond_1

    .line 1014
    invoke-virtual {p0, v3, v4}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1016
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1018
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 1019
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V

    .line 1020
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1024
    return-void

    .line 1020
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1022
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V
    .locals 13
    .parameter "flags"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1065
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireWakeLock flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1069
    const/16 p6, 0x0

    .line 1072
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, p2}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v9

    .line 1077
    .local v9, index:I
    if-gez v9, :cond_a

    .line 1078
    new-instance v1, Lcom/android/server/PowerManagerService$WakeLock;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1079
    .local v1, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v2, v2, 0x3f

    sparse-switch v2, :sswitch_data_0

    .line 1102
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad wakelock type for lock \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_1
    :goto_0
    return-void

    .line 1083
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_8

    .line 1085
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    .line 1106
    :goto_1
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v1}, Lcom/android/server/PowerManagerService$LockList;->addLock(Lcom/android/server/PowerManagerService$WakeLock;)V

    .line 1107
    if-eqz p6, :cond_2

    .line 1108
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1110
    :cond_2
    const/4 v10, 0x1

    .line 1111
    .local v10, newlock:Z
    const/4 v8, 0x0

    .line 1112
    .local v8, diffsource:Z
    const/4 v12, 0x0

    .line 1113
    .local v12, oldsource:Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    .line 1134
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1139
    and-int/lit8 v2, p1, 0x3f

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    .line 1140
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1141
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1142
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->enableProximityLockLocked()V

    .line 1186
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 1189
    invoke-virtual {p0, v1, v12}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1191
    :cond_5
    if-nez v10, :cond_6

    if-eqz v8, :cond_7

    .line 1192
    :cond_6
    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1195
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-eqz v2, :cond_1

    .line 1196
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->getDynamicWakeLockLocked(Lcom/android/server/PowerManagerService$WakeLock;Z)V

    goto :goto_0

    .line 1087
    .end local v8           #diffsource:Z
    .end local v10           #newlock:Z
    .end local v12           #oldsource:Landroid/os/WorkSource;
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xf

    :goto_4
    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_1

    :cond_9
    const/4 v2, 0x7

    goto :goto_4

    .line 1091
    :sswitch_2
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_1

    .line 1094
    :sswitch_3
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_1

    .line 1115
    .end local v1           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_a
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v9}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1116
    .restart local v1       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    const/4 v10, 0x0

    .line 1117
    .restart local v10       #newlock:Z
    iget-object v12, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1118
    .restart local v12       #oldsource:Landroid/os/WorkSource;
    if-eqz v12, :cond_c

    .line 1119
    if-nez p6, :cond_b

    .line 1120
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1121
    const/4 v8, 0x1

    .line 1130
    .restart local v8       #diffsource:Z
    :goto_5
    if-eqz v8, :cond_3

    .line 1131
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    goto :goto_2

    .line 1123
    .end local v8           #diffsource:Z
    :cond_b
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v8

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1125
    .end local v8           #diffsource:Z
    :cond_c
    if-eqz p6, :cond_d

    .line 1126
    const/4 v8, 0x1

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1128
    .end local v8           #diffsource:Z
    :cond_d
    const/4 v8, 0x0

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1145
    :cond_e
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    .line 1146
    iget v11, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1147
    .local v11, oldWakeLockState:I
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1151
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v2, :cond_f

    .line 1153
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 1154
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    .line 1158
    :cond_f
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wakeup here mUserState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " previous wakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    .end local v11           #oldWakeLockState:I
    :goto_6
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto/16 :goto_3

    .line 1166
    :cond_10
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "here mUserState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLocks.gatherState()=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWakeLockState=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    goto :goto_6

    .line 1176
    :cond_11
    and-int/lit8 v2, p1, 0x3f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1177
    if-eqz v10, :cond_12

    .line 1178
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1179
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 1183
    :cond_12
    const/4 v2, 0x1

    const-string v3, "PowerManagerService"

    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->nativeAcquireWakeLock(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1079
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method bootCompleted()V
    .locals 7

    .prologue
    .line 3771
    const-string v0, "PowerManagerService"

    const-string v1, "bootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 3773
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 3774
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3775
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3776
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 3778
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    .line 3779
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3780
    monitor-exit v6

    .line 3781
    return-void

    .line 3780
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearUserActivityTimeout(JJ)V
    .locals 9
    .parameter "now"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 2986
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserActivity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms from now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, v5

    move v7, v5

    move v8, v5

    .line 2988
    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 2989
    return-void
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 3376
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    new-instance v1, Lcom/android/server/PowerManagerService$12;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/PowerManagerService$12;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    .local v1, t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3382
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3386
    :goto_0
    return-void

    .line 3383
    :catch_0
    move-exception v0

    .line 3384
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public debugWakeLock()Ljava/lang/String;
    .locals 12

    .prologue
    .line 4210
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 4214
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v6}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 4215
    .local v0, N:I
    const/4 v5, 0x0

    .line 4216
    .local v5, wl:Lcom/android/server/PowerManagerService$WakeLock;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WakeLock List Size = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4217
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4218
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v6, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    check-cast v5, Lcom/android/server/PowerManagerService$WakeLock;

    .line 4219
    .restart local v5       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v5, :cond_0

    .line 4220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\nNo."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": get null pointer"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4217
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4223
    :cond_0
    iget-wide v3, v5, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 4224
    .local v3, total_time:J
    iget-boolean v6, v5, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v6, :cond_1

    .line 4225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v5, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    sub-long/2addr v8, v10

    add-long/2addr v3, v8

    .line 4227
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\nNo."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": TAG = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v5, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , FLAG = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/android/server/PowerManagerService;->getWakeLockFlagLocked(Lcom/android/server/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4229
    .end local v3           #total_time:J
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4231
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "debugWakeLock in ForeGround Mode, result String="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    return-object v2

    .line 4229
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #result:Ljava/lang/String;
    .end local v5           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public debugWakeLockUnderBG(ZZ)Ljava/lang/String;
    .locals 3
    .parameter "isStartBgMode"
    .parameter "isSkipByTag"

    .prologue
    .line 4239
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4244
    if-eqz p1, :cond_1

    .line 4245
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-nez v0, :cond_0

    .line 4246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    .line 4248
    iput-boolean p2, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockSkippedByTag:Z

    .line 4249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->debugWakeLock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    .line 4250
    const-string v0, "BackGround Mode Starts now."

    monitor-exit v1

    .line 4262
    :goto_0
    return-object v0

    .line 4253
    :cond_0
    const-string v0, "BackGround Mode Starts already!"

    monitor-exit v1

    goto :goto_0

    .line 4265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4257
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    if-eqz v0, :cond_2

    .line 4258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsWakeLockBGDbgModeRunning:Z

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->debugWakeLock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    .line 4260
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockBGDbgModeResult:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 4262
    :cond_2
    const-string v0, "BackGround Mode Stops already."

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    invoke-virtual {v14, v15}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_0

    .line 1406
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    :goto_0
    return-void

    .line 1412
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1414
    .local v7, now:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v15

    .line 1415
    :try_start_0
    const-string v14, "Power Manager State:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mIsPowered="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mPowerState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mScreenOffTime="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ms"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPartialCount="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mWakeLockState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mUserState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPowerState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLocks.gather="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mNextTimeout="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " now="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v7

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "s from now"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mDimScreen="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mStayOnConditions="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mPreparingForScreenOn="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mSkippedScreenOn="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mScreenOffReason="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mUserState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mBroadcastQueue={"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "}"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mBroadcastWhy={"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "}"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPokey="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mPokeAwakeonSet="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mKeyboardVisible="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mUserActivityAllowed="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mKeylightDelay="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mDimDelay="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mScreenOffDelay="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPreventScreenOn="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "  mScreenBrightnessOverride="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "  mButtonBrightnessOverride="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mScreenOffTimeoutSetting="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMaximumScreenOffTimeout="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLastScreenOnTime="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mBroadcastWakeLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mStayOnWhilePluggedInScreenDimLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mStayOnWhilePluggedInPartialLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mPreventScreenOnPartialLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximityPartialLock="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximityWakeLockCount="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximitySensorEnabled="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximitySensorActive="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mProximityPendingValue="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLastProximityEventTime="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLightSensorEnabled="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorAdjustSetting="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLightSensorValue="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorPendingValue="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mHighestLightSensorValue="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mWaitingForFirstLightSensor="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLightSensorPendingDecrease="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorPendingIncrease="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mLightSensorScreenBrightness="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorScreenBrightnessWait="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessWait:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorButtonBrightness="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mLightSensorKeyboardBrightness="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mUseSoftwareAutoBrightness="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mAutoBrightessEnabled="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const-string v16, "mScreenBrightnessAnimator: "

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v14}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v2

    .line 1475
    .local v2, N:I
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1476
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mLocks.size="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 1478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v14, v5}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1479
    .local v13, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v14, v13, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v14, v14, 0x3f

    invoke-static {v14}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v12

    .line 1480
    .local v12, type:Ljava/lang/String;
    const-string v3, ""

    .line 1481
    .local v3, acquireCausesWakeup:Ljava/lang/String;
    iget v14, v13, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v16, 0x1000

    and-int v14, v14, v16

    if-eqz v14, :cond_1

    .line 1482
    const-string v3, "ACQUIRE_CAUSES_WAKEUP "

    .line 1484
    :cond_1
    const-string v4, ""

    .line 1485
    .local v4, activated:Ljava/lang/String;
    iget-wide v10, v13, Lcom/android/server/PowerManagerService$WakeLock;->total_time:J

    .line 1486
    .local v10, total_time:J
    iget-boolean v14, v13, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v14, :cond_2

    .line 1487
    const-string v4, " activated"

    .line 1488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    iget-wide v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->active_since:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    add-long v10, v10, v16

    .line 1490
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " \'"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " (minState="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ", uid="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ", pid="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v13, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " total="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "ms)"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1495
    .end local v3           #acquireCausesWakeup:Ljava/lang/String;
    .end local v4           #activated:Ljava/lang/String;
    .end local v10           #total_time:J
    .end local v12           #type:Ljava/lang/String;
    .end local v13           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1496
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mPokeLocks.size="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1498
    .local v9, p:Lcom/android/server/PowerManagerService$PokeLock;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    poke lock \'"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v9, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\':"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_4

    const-string v14, " POKE_LOCK_IGNORE_TOUCH_EVENTS"

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_5

    const-string v14, " POKE_LOCK_SHORT_TIMEOUT"

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_6

    const-string v14, " POKE_LOCK_MEDIUM_TIMEOUT"

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1508
    .end local v2           #N:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1498
    .restart local v2       #N:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_4
    :try_start_1
    const-string v14, ""

    goto :goto_3

    :cond_5
    const-string v14, ""

    goto :goto_4

    :cond_6
    const-string v14, ""

    goto :goto_5

    .line 1507
    .end local v9           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1508
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableUserActivity(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 3503
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUserActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3506
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3507
    if-nez p1, :cond_0

    .line 3509
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 3511
    :cond_0
    monitor-exit v1

    .line 3512
    return-void

    .line 3511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableUserActivityForce(ZZ)V
    .locals 4
    .parameter "enabled"
    .parameter "force"

    .prologue
    .line 3490
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUserActivityForce enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3492
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3493
    if-nez p1, :cond_0

    .line 3495
    if-eqz p2, :cond_0

    .line 3496
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 3498
    :cond_0
    monitor-exit v1

    .line 3499
    return-void

    .line 3498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 1000
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method getPolicyLocked()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 3704
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    if-nez v0, :cond_1

    .line 3706
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3707
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3711
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method getStayOnConditionsLocked()I
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedWakeLockFlags()I
    .locals 2

    .prologue
    .line 3789
    const/16 v0, 0x1f

    .line 3793
    .local v0, result:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 3794
    or-int/lit8 v0, v0, 0x20

    .line 3797
    :cond_0
    return v0
.end method

.method public goToSleep(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 3305
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isKeyguardNotShowing()Z

    move-result v1

    .line 3306
    .local v1, isKeyguardNotShowing:Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3307
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 3308
    const-string v2, "PowerManagerService"

    const-string v3, "reset mSyncKeyguard in goToSleep()"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSyncKeyguard:Lcom/android/server/PowerManagerService$SyncKeyguard;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    .line 3311
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/PowerManagerService;->goToSleepWithReason(JI)V

    .line 3312
    return-void
.end method

.method public goToSleepWithReason(JI)V
    .locals 3
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3322
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 3323
    monitor-exit v1

    .line 3324
    return-void

    .line 3323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
    .locals 4
    .parameter "context"
    .parameter "lights"
    .parameter "activity"
    .parameter "battery"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 726
    iput-object p2, p0, Lcom/android/server/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 727
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    .line 728
    iput-object p3, p0, Lcom/android/server/PowerManagerService;->mActivityService:Landroid/app/IActivityManager;

    .line 729
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 730
    iput-object p4, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 732
    invoke-virtual {p2, v3}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    .line 733
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 734
    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    .line 735
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 736
    const-string v0, "1"

    const-string v1, "ro.config.headless"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    .line 738
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 739
    new-instance v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const-string v1, "mScreenBrightnessUpdaterThread"

    const/4 v2, -0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    .line 741
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->start()V

    .line 743
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    monitor-enter v1

    .line 744
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 746
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    goto :goto_0

    .line 751
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 754
    new-instance v0, Lcom/android/server/PowerManagerService$1;

    const-string v1, "PowerManagerService"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$1;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 761
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 763
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 764
    :goto_1
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_1

    .line 766
    :try_start_4
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 767
    :catch_1
    move-exception v0

    goto :goto_1

    .line 751
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 771
    :cond_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 773
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 774
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 777
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 779
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 780
    return-void

    .line 771
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 779
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method initInThread()V
    .locals 14

    .prologue
    const/high16 v4, 0x5000

    const/4 v13, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 783
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 785
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "sleep_broadcast"

    invoke-direct {v1, p0, v12, v3, v12}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 787
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Screen Dim"

    invoke-direct {v1, p0, v13, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 789
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Partial"

    invoke-direct {v1, p0, v12, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 791
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "PreventScreenOn Partial"

    invoke-direct {v1, p0, v12, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 793
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "Proximity Partial"

    invoke-direct {v1, p0, v12, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 796
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    .line 797
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 799
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    .line 800
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 803
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 805
    .local v7, resources:Landroid/content/res/Resources;
    const v1, 0x1110014

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 808
    const v1, 0x1110013

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    .line 811
    const v1, 0x10e0022

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 815
    const v1, 0x1110011

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    .line 817
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_0

    .line 818
    const v1, 0x1070029

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    .line 820
    const v1, 0x107002a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    .line 823
    const v1, 0x107002b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValuesDown:[I

    .line 826
    const v1, 0x107002c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    .line 828
    const v1, 0x107002d

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    .line 830
    const v1, 0x10e0023

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 835
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?)"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "stay_on_while_plugged_in"

    aput-object v5, v4, v11

    const-string v5, "screen_off_timeout"

    aput-object v5, v4, v12

    const/4 v5, 0x2

    const-string v11, "dim_screen"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const-string v11, "screen_brightness"

    aput-object v11, v4, v5

    const/4 v5, 0x4

    const-string v11, "screen_brightness_mode"

    aput-object v11, v4, v5

    const/4 v5, 0x5

    const-string v11, "screen_brightness_eco_mode"

    aput-object v11, v4, v5

    const-string v5, "window_animation_scale"

    aput-object v5, v4, v13

    const/4 v5, 0x7

    const-string v11, "transition_animation_scale"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 849
    .local v9, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v9, v3, v12, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 850
    new-instance v10, Lcom/android/server/PowerManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 851
    .local v10, settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 854
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v10, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 857
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 858
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BatteryReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 860
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 861
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BootCompletedReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 863
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 864
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$DockReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 867
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 868
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$KeyguardDoneDrawReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    const-string v4, "com.android.internal.policy.impl.KeyguardViewMediator.DONE_DRAW"

    invoke-virtual {v1, v3, v6, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 872
    new-instance v8, Lcom/android/server/PowerManagerService$SDHotPlugReceiver;

    invoke-direct {v8, p0, v2}, Lcom/android/server/PowerManagerService$SDHotPlugReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 873
    .local v8, sdReceiver:Lcom/android/server/PowerManagerService$SDHotPlugReceiver;
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 874
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SD_INSERTED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string v1, "file"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 876
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 878
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 879
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    const-string v1, "file"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 887
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 888
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/PowerManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$2;-><init>(Lcom/android/server/PowerManagerService;)V

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 899
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 901
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/PowerManagerService$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/PowerManagerService$3;-><init>(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v12, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 908
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    .line 910
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 911
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 912
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 913
    monitor-exit v2

    .line 914
    return-void

    .line 913
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isScreenBright()Z
    .locals 3

    .prologue
    .line 2918
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2919
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 2912
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2913
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2914
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStayAwake()Z
    .locals 2

    .prologue
    .line 3481
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3482
    const/4 v0, 0x1

    .line 3483
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logPointerDownEvent()V
    .locals 4

    .prologue
    .line 1866
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1868
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 1871
    :cond_0
    return-void
.end method

.method logPointerUpEvent()V
    .locals 6

    .prologue
    .line 1858
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 1859
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1861
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 3785
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 3786
    return-void

    .line 3785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 1027
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 1028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1030
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 1031
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1042
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 1034
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v2

    .line 1039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 1045
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 1046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1048
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 1049
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 1052
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v2

    .line 1057
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preventScreenOn(Z)V
    .locals 5
    .parameter "prevent"

    .prologue
    const/4 v3, 0x1

    .line 1903
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1906
    if-eqz p1, :cond_0

    .line 1910
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1915
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1916
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1957
    :goto_0
    monitor-exit v1

    .line 1958
    return-void

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1927
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-ne v0, v3, :cond_1

    .line 1929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1934
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1936
    const-string v0, "PowerManagerService"

    const-string v2, "preventScreenOn: turning on after a prior preventScreenOn(true)!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1955
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0

    .line 1957
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 10
    .parameter "reason"

    .prologue
    .line 3334
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 3335
    .local v6, stack:[Ljava/lang/StackTraceElement;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 3337
    .local v1, element:Ljava/lang/StackTraceElement;
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \t|----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3341
    .end local v1           #element:Ljava/lang/StackTraceElement;
    :cond_0
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.REBOOT"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3344
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Too early to call reboot()"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3347
    :cond_2
    move-object v2, p1

    .line 3348
    .local v2, finalReason:Ljava/lang/String;
    new-instance v5, Lcom/android/server/PowerManagerService$11;

    invoke-direct {v5, p0, v2}, Lcom/android/server/PowerManagerService$11;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    .line 3357
    .local v5, runnable:Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3360
    monitor-enter v5

    .line 3363
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3364
    :catch_0
    move-exception v7

    goto :goto_1

    .line 3367
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 4
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1224
    .local v0, uid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1225
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1229
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    .line 1230
    monitor-exit v2

    .line 1231
    return-void

    .line 1230
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAttentionLight(ZI)V
    .locals 4
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 3884
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, p2, v3, v0, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 3886
    return-void

    :cond_0
    move v0, v1

    .line 3885
    goto :goto_0
.end method

.method public setAutoBrightnessAdjustment(F)V
    .locals 6
    .parameter "adj"

    .prologue
    .line 3863
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3864
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 3865
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    .line 3866
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eqz v3, :cond_1

    .line 3868
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3871
    .local v0, identity:J
    :try_start_1
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 3872
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v2, v3

    .line 3873
    .local v2, value:I
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3874
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3877
    .end local v2           #value:I
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3880
    .end local v0           #identity:J
    :cond_1
    monitor-exit v4

    .line 3881
    return-void

    .line 3877
    .restart local v0       #identity:J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3880
    .end local v0           #identity:J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public setBacklightBrightness(I)V
    .locals 7
    .parameter "brightness"

    .prologue
    .line 3837
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 3840
    :try_start_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3841
    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-lez v3, :cond_0

    .line 3842
    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-le p1, v3, :cond_0

    .line 3843
    iget p1, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 3846
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3850
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 3852
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3856
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3858
    :goto_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v5, v6}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3859
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3860
    return-void

    .line 3853
    :catch_0
    move-exception v0

    .line 3854
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "PowerManagerService"

    const-string v5, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3856
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3859
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 3856
    .restart local v1       #identity:J
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setBacklightBrightnessOff(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    .line 3803
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mShutdownFlag:Z

    if-eqz v3, :cond_0

    .line 3804
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3805
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 3806
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 3808
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3809
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3810
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3811
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 3812
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 3814
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3818
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3820
    :goto_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3821
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3823
    .end local v1           #identity:J
    :cond_0
    return-void

    .line 3815
    .restart local v1       #identity:J
    :catch_0
    move-exception v0

    .line 3816
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "PowerManagerService"

    const-string v5, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3818
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3821
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 3818
    .restart local v1       #identity:J
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setButtonBrightnessOverride(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1978
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-eq v0, p1, :cond_0

    .line 1979
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setButtonBrightnessOverride "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/16 v2, 0xc

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1985
    :cond_0
    monitor-exit v1

    .line 1986
    return-void

    .line 1985
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setButtonLight(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3273
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    if-eqz v0, :cond_0

    .line 3275
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3276
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 3277
    iget v0, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3279
    :cond_0
    monitor-exit v1

    .line 3280
    return-void

    .line 3279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method



.method public setKeyboardVisibility(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    .line 3449
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 3451
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyboardVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eq v0, p1, :cond_1

    .line 3454
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 3458
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3459
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v0, :cond_0

    .line 3461
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3462
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v6, v0

    .line 3463
    .local v6, value:I
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3464
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 3467
    .end local v6           #value:I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3470
    :cond_1
    monitor-exit v7

    .line 3471
    return-void

    .line 3470
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 3826
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3827
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 3828
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxBrightness brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3830
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxBrightness updateLightsLocked mPowerState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 3833
    :cond_0
    monitor-exit v1

    .line 3834
    return-void

    .line 3833
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaximumScreenOffTimeount(I)V
    .locals 3
    .parameter "timeMs"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 626
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 628
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 629
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 18
    .parameter "pokey"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 1314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DEVICE_POWER"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    if-nez p2, :cond_0

    .line 1316
    const-string v14, "PowerManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPokeLock got null token for tag=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :goto_0
    return-void

    .line 1320
    :cond_0
    and-int/lit8 v14, p1, 0x6

    const/4 v15, 0x6

    if-ne v14, v15, :cond_1

    .line 1321
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "setPokeLock can\'t have both POKE_LOCK_SHORT_TIMEOUT and POKE_LOCK_MEDIUM_TIMEOUT"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1325
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v15

    .line 1326
    if-eqz p1, :cond_5

    .line 1327
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1328
    .local v12, p:Lcom/android/server/PowerManagerService$PokeLock;
    const/4 v10, 0x0

    .line 1329
    .local v10, oldPokey:I
    if-eqz v12, :cond_4

    .line 1330
    iget v10, v12, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1331
    move/from16 v0, p1

    iput v0, v12, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1336
    :goto_1
    and-int/lit8 v11, v10, 0x6

    .line 1337
    .local v11, oldTimeout:I
    and-int/lit8 v8, p1, 0x6

    .line 1338
    .local v8, newTimeout:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_2

    if-eq v11, v8, :cond_2

    .line 1339
    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    .line 1348
    .end local v8           #newTimeout:I
    .end local v10           #oldPokey:I
    .end local v11           #oldTimeout:I
    .end local v12           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1349
    .restart local v10       #oldPokey:I
    const/4 v5, 0x0

    .line 1350
    .local v5, cumulative:I
    const/4 v4, 0x0

    .line 1351
    .local v4, awakeOnSet:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1352
    .restart local v12       #p:Lcom/android/server/PowerManagerService$PokeLock;
    iget v14, v12, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    or-int/2addr v5, v14

    .line 1353
    iget-boolean v14, v12, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    if-eqz v14, :cond_3

    .line 1354
    const/4 v4, 0x1

    goto :goto_3

    .line 1333
    .end local v4           #awakeOnSet:Z
    .end local v5           #cumulative:I
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v12, Lcom/android/server/PowerManagerService$PokeLock;

    .end local v12           #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/server/PowerManagerService$PokeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1334
    .restart local v12       #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1369
    .end local v10           #oldPokey:I
    .end local v12           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1342
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1343
    .local v13, rLock:Lcom/android/server/PowerManagerService$PokeLock;
    if-eqz v13, :cond_2

    .line 1344
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 1357
    .end local v13           #rLock:Lcom/android/server/PowerManagerService$PokeLock;
    .restart local v4       #awakeOnSet:Z
    .restart local v5       #cumulative:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v10       #oldPokey:I
    :cond_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1358
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1360
    and-int/lit8 v9, v10, 0x6

    .line 1361
    .local v9, oldCumulativeTimeout:I
    and-int/lit8 v7, p1, 0x6

    .line 1363
    .local v7, newCumulativeTimeout:I
    if-eq v9, v7, :cond_7

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 1367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iget v14, v14, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 1369
    :cond_7
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 3697
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3698
    :try_start_0
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 3699
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3700
    monitor-exit v1

    .line 3701
    return-void

    .line 3700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenBrightnessOverride(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1964
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-eq v0, p1, :cond_0

    .line 1965
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightnessOverride "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 1967
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1971
    :cond_0
    monitor-exit v1

    .line 1972
    return-void

    .line 1971
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStayOnSetting(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    return-void
.end method

.method public shutdown(ZZ)V
    .locals 5
    .parameter "confirm"
    .parameter "wait"

    .prologue
    const/4 v4, 0x0

    .line 3307
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isPoweroffAlarmShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3318
    :goto_0
    return-void

    .line 3312
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3314
    .local v0, ident:J
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/server/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method systemReady()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3715
    new-instance v3, Landroid/hardware/SystemSensorManager;

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3716
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 3717
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3718
    .local v2, resources:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    .line 3722
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_0

    .line 3723
    const v3, 0x1070029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    .line 3725
    const v3, 0x107002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    .line 3727
    const v3, 0x107002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    .line 3729
    const v3, 0x107002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    .line 3731
    const v3, 0x10e0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    .line 3733
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    .line 3739
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_3

    .line 3741
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 3747
    :goto_1
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->registerQbReceiver()V

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 3748
    :try_start_0
    const-string v3, "PowerManagerService"

    const-string v7, "system ready!"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 3751
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v3}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v3}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v3

    const/16 v7, 0xa

    if-gt v3, v7, :cond_4

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    .line 3753
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    if-nez v3, :cond_1

    .line 3754
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsLowBattery:Z

    if-nez v3, :cond_5

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 3758
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3760
    .local v0, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 3761
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3765
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3767
    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3768
    return-void

    .end local v0           #identity:J
    :cond_2
    move v3, v5

    .line 3718
    goto/16 :goto_0

    .line 3744
    :cond_3
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_1

    :cond_4
    move v3, v5

    .line 3751
    goto :goto_2

    :cond_5
    move v4, v5

    .line 3754
    goto :goto_3

    .line 3762
    .restart local v0       #identity:J
    :catch_0
    move-exception v3

    .line 3765
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 3767
    .end local v0           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3765
    .restart local v0       #identity:J
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public timeSinceScreenOn()J
    .locals 5

    .prologue
    .line 3440
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3441
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3442
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 3444
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_0

    .line 3445
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 8
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1201
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1202
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1203
    .local v2, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1204
    const/4 p2, 0x0

    .line 1206
    :cond_0
    if-eqz p2, :cond_1

    .line 1207
    invoke-virtual {p0, v3, v2}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1209
    :cond_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1210
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, p1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 1211
    .local v0, index:I
    if-gez v0, :cond_2

    .line 1212
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wake lock not active"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1219
    .end local v0           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1214
    .restart local v0       #index:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v0}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1215
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-object v1, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1216
    .local v1, oldsource:Landroid/os/WorkSource;
    if-eqz p2, :cond_3

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    iput-object v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1217
    invoke-virtual {p0, v4, v1}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1218
    invoke-virtual {p0, v4, p2}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1219
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    return-void

    .line 1216
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"

    .prologue
    const/4 v6, 0x0

    .line 2961
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2963
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->shouldLog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2964
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not have DEVICE_POWER permission.  pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_0
    :goto_0
    return-void

    .line 2970
    :cond_1
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    goto :goto_0
.end method

.method public userActivity(JZI)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"

    .prologue
    const/4 v7, 0x0

    .line 2974
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 2975
    return-void
.end method

.method public userActivity(JZIZ)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 2978
    const-wide/16 v3, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 2979
    return-void
.end method

.method public userActivityWithForce(JZZ)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    .line 2956
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, p4

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 2958
    return-void
.end method
