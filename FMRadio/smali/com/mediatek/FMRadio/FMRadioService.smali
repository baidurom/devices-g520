.class public Lcom/mediatek/FMRadio/FMRadioService;
.super Landroid/app/Service;
.source "FMRadioService.java"

# interfaces
.implements Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;,
        Lcom/mediatek/FMRadio/FMRadioService$Record;,
        Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;,
        Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION_FROMATVSERVICE_POWERUP:Ljava/lang/String; = "com.mediatek.app.mtv.POWER_ON"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final ACTION_STATE_STOPED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_STOPED"

.field public static final ACTION_STATION_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_STATION_CHANGED"

.field public static final ACTION_TOATVSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_TOFMSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

.field public static final ACTION_TOFMTXSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

.field public static final ACTION_TOMUSICSERVICE_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final BT_PROPERTIES:Ljava/lang/String; = "bt.fmoverbt"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field private static final FM_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final FM_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.FMRadio"

.field public static final FM_POWER_DOWN_MSG:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

.field public static final FM_POWER_UP_MSG:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

.field private static final FOR_PROPRIETARY:I = 0x4

.field private static final HEADSET_PLUG_IN:I = 0x1

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final OPTION:Ljava/lang/String; = "option"

.field public static final RDS_EVENT_AF:I = 0x80

.field public static final RDS_EVENT_LAST_RADIOTEXT:I = 0x40

.field public static final RDS_EVENT_PROGRAMNAME:I = 0x8

.field private static final RECODING_FILE_NAME:Ljava/lang/String; = "name"

.field public static final SERVICECMD:Ljava/lang/String; = "com.huawei.android.FMRadio.fmradioservicecommand"

.field public static final SOUND_POWER_DOWN_MSG:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final STATION_TYPE_FAVORITE:I = 0x2

.field public static final STATION_TYPE_SEARCHED:I = 0x3

.field public static final STR_MEDIABTNRECEIVER_CLASS:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "FmRx/Service"


# instance fields
.field private mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mDefaultSDCardPath:Ljava/lang/String;

.field private mErrorType:I

.field private mFMPlayer:Landroid/media/MediaPlayer;

.field mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

.field private mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

.field private mForcedUseForMedia:I

.field private mICallBack:Landroid/os/IBinder;

.field private mIsAFEnabled:Z

.field private mIsAudioFocusHeld:Z

.field private mIsDeviceOpen:Z

.field private mIsInRecordingMode:Z

.field private mIsMakePowerDown:Z

.field private mIsMediaButtonReceiver:Z

.field private mIsPSRTEnabled:Z

.field private mIsPowerUp:Z

.field private mIsPowerUping:Z

.field private mIsRDSThreadExit:Z

.field private mIsScanning:Z

.field private mIsSeeking:Z

.field private mIsServiceInit:Z

.field private mIsShortAntennaSupport:Z

.field private mIsSpeakerUsed:Z

.field private mIsStopScanCalled:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mRDSThread:Ljava/lang/Thread;

.field private mRecordState:I

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/FMRadio/FMRadioService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSDListener:Landroid/content/BroadcastReceiver;

.field private mUsingFMViaBTController:Z

.field private mValueHeadSetPlug:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const-class v0, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->STR_MEDIABTNRECEIVER_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

    .line 126
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 133
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mICallBack:Landroid/os/IBinder;

    .line 135
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 137
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 139
    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecordState:I

    .line 141
    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mErrorType:I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    .line 147
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 155
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z

    .line 157
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z

    .line 159
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    .line 161
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    .line 163
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 165
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 167
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z

    .line 169
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    .line 171
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 173
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 175
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 177
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    .line 180
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    .line 182
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    .line 184
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    .line 186
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 188
    iput v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I

    .line 190
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 192
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 195
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 197
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    .line 199
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Landroid/os/IBinder;

    .line 203
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 205
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 211
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    .line 2019
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$3;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2089
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$4;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2405
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->stopFMFocusLoss(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->unRegisterMediaButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/FMRadio/FMRadioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/FMRadio/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->exitFM()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocusAync(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2502(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioService;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioService;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->initDevice(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2902(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mValueHeadSetPlug:I

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->closeDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioService;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioService;FZ)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioService;->seekStation(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startScan()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioService;[I)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->insertSearchedStation([I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocus(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setAudioChannel(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->activeAF()I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startRecording()V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startPlayback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopPlayback()V

    return-void
.end method

.method static synthetic access$4500(Lcom/mediatek/FMRadio/FMRadioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->saveRecording(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->handleBtConnectState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->fmOverBtController(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    return-void
.end method

.method private activeAF()I
    .locals 4

    .prologue
    .line 964
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 965
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v0, -0x1

    .line 971
    :goto_0
    return v0

    .line 969
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v0

    .line 970
    .local v0, frequency:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.activeAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private chipSupportOverBt()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1193
    const-string v3, "bt.fmoverbt"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1194
    .local v0, result:I
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bt.fmoverbt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    if-ne v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private closeDevice()Z
    .locals 4

    .prologue
    .line 405
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FMRadioService.closeDevice"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, isDeviceClose:Z
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    if-eqz v1, :cond_0

    .line 408
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    move-result v0

    .line 409
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 411
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 415
    return v0

    .line 409
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private connectBtDevice()V
    .locals 3

    .prologue
    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FmRx/Service"

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP sent to A2dp service!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 594
    return-void
.end method

.method private enableFMAudio(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1786
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.enableFMAudio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_1

    .line 1788
    :cond_0
    const-string v1, "FmRx/Service"

    const-string v2, "mFMPlayer is null in Service.enableFMAudio"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :goto_0
    return-void

    .line 1792
    :cond_1
    if-nez p1, :cond_3

    .line 1793
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1794
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already disabled."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1797
    :cond_2
    const-string v1, "FmRx/Service"

    const-string v2, "stop FM audio."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 1802
    :cond_3
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1803
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already enabled."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1808
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1809
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1816
    :goto_1
    const-string v1, "FmRx/Service"

    const-string v2, "Start FM audio."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string v1, "FmRx/Service"

    const-string v2, "<<< FMRadioService.enableFMAudio"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1812
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1813
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private exitFM()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1510
    const-string v1, "FmRx/Service"

    const-string v2, "service.exitFM start"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v1, :cond_0

    .line 1513
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 1514
    .local v0, fmState:I
    const/4 v1, 0x7

    if-ne v1, v0, :cond_3

    .line 1515
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1516
    const-string v1, "FmRx/Service"

    const-string v2, "Stop playback FMRecorder."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    .end local v0           #fmState:I
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    if-eqz v1, :cond_2

    .line 1527
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopScan()Z

    .line 1533
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1535
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1536
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v1, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1538
    const-string v1, "FmRx/Service"

    const-string v2, "service.exitFM end"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    return-void

    .line 1517
    .restart local v0       #fmState:I
    :cond_3
    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 1519
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1521
    const-string v1, "FmRx/Service"

    const-string v2, "Discard Recording."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fmOverBtController(I)V
    .locals 5
    .parameter "fmOverBTState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2329
    packed-switch p1, :pswitch_data_0

    .line 2361
    const-string v1, "FmRx/Service"

    const-string v2, "invalid fm over bt state"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :goto_0
    return-void

    .line 2331
    :pswitch_0
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2332
    const-string v1, "FmRx/Service"

    const-string v2, "failed to set FM over BT via Controller!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2335
    :cond_0
    const-string v1, "FmRx/Service"

    const-string v2, "setFMViaBTController(true) succeeded!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 2339
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2340
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2341
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2342
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2343
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setRecordingMode(Z)V

    .line 2344
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2345
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100111

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2346
    const-string v1, "key_is_recording_mode"

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2347
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2349
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    goto :goto_0

    .line 2353
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    goto :goto_0

    .line 2357
    :pswitch_2
    const-string v1, "FmRx/Service"

    const-string v2, "ACTION_FM_OVER_BT_CONTROLLER: FM over BT already on-going!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getContextCount(Landroid/content/Context;I)I
    .locals 8
    .parameter "context"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 1551
    const-string v0, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioStation.getStationCount Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const/4 v7, 0x0

    .line 1553
    .local v7, iRet:I
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 1554
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1556
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1557
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1558
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1559
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1560
    add-int/lit8 v7, v7, 0x1

    .line 1562
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1565
    :catch_0
    move-exception v0

    .line 1567
    if-eqz v6, :cond_1

    .line 1568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1571
    :cond_1
    :goto_1
    const-string v0, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getStationCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return v7

    .line 1567
    :cond_2
    if-eqz v6, :cond_1

    .line 1568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1567
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private handleBtConnectState(I)V
    .locals 4
    .parameter "connectState"

    .prologue
    const/4 v3, 0x0

    .line 2280
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 2320
    :goto_0
    return-void

    .line 2284
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2317
    const-string v1, "FmRx/Service"

    const-string v2, "invalid fm over bt connect state"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2287
    :sswitch_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    if-eqz v1, :cond_1

    .line 2288
    const-string v1, "FmRx/Service"

    const-string v2, "ACTION_CONNECTION_STATE_CHANGED: FM over BT already enabled, ignore this message"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2291
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->chipSupportOverBt()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2292
    const-string v1, "FmRx/Service"

    const-string v2, "chip not support fm over bt, ignore this message"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2295
    :cond_2
    const-string v1, "FmRx/Service"

    const-string v2, "ACTION_CONNECTION_STATE_CHANGED: disable FM audio first to avoid I2S noise!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 2297
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->connectBtDevice()V

    goto :goto_0

    .line 2302
    :sswitch_1
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2303
    const-string v1, "FmRx/Service"

    const-string v2, "failed to set FM over BT via Host!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2306
    :cond_3
    const-string v1, "FmRx/Service"

    const-string v2, "setFMViaBTController(false) succeeded!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 2308
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 2310
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2311
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100111

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2312
    const-string v1, "key_is_recording_mode"

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2313
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2284
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private initDevice(F)Z
    .locals 4
    .parameter "frequency"

    .prologue
    const/4 v3, 0x1

    .line 545
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.initDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 548
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 550
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 553
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "FmRx/Service"

    const-string v1, "RDS is supported. Start the RDS thread."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 560
    const-string v0, "FmRx/Service"

    const-string v1, "acquire wake lock"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->setBtStatus(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 564
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerPhoneOn()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 565
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 567
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 569
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 571
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 572
    const-string v0, "FmRx/Service"

    const-string v1, "Error while trying to switch to short antenna: "

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_4
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    .line 578
    :cond_5
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 581
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.initDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method private insertSearchedStation([I)[I
    .locals 10
    .parameter "channels"

    .prologue
    .line 2367
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertSearchedStation.firstValidChannel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 2369
    .local v3, firstValidChannel:I
    const/4 v0, 0x0

    .line 2370
    .local v0, channelNum:I
    if-eqz p1, :cond_4

    .line 2371
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 2372
    array-length v6, p1

    .line 2374
    .local v6, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2375
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const v7, 0x7f040017

    invoke-virtual {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2376
    .local v1, defaultStationName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 2377
    aget v7, p1, v4

    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2378
    if-nez v0, :cond_0

    .line 2379
    aget v3, p1, v4

    .line 2382
    :cond_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    aget v8, p1, v4

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2383
    sget-object v7, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "COLUMN_STATION_NAME"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "COLUMN_STATION_FREQ"

    aget v9, p1, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "COLUMN_STATION_TYPE"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2389
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 2376
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2394
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.mediatek.FMRadio.FMRadioContentProvider"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2401
    .end local v1           #defaultStationName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #size:I
    :cond_4
    :goto_1
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertSearchedStation.firstValidChannel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",channelNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v0, v7, v8

    return-object v7

    .line 2395
    .restart local v1       #defaultStationName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6       #size:I
    :catch_0
    move-exception v2

    .line 2396
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when applyBatch searched stations "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2397
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2398
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when applyBatch searched stations "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerPhoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 381
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mForcedUseForMedia:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyActivityStateChanged(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 2211
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2212
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyActivityStatusChanged:clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2214
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2215
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/FMRadio/FMRadioService$Record;

    .line 2218
    .local v2, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    iget-object v1, v2, Lcom/mediatek/FMRadio/FMRadioService$Record;->mCallback:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 2220
    .local v1, listener:Lcom/mediatek/FMRadio/FMRadioListener;
    if-nez v1, :cond_1

    .line 2221
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2222
    monitor-exit v4

    .line 2229
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .end local v1           #listener:Lcom/mediatek/FMRadio/FMRadioListener;
    .end local v2           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :cond_0
    :goto_1
    return-void

    .line 2225
    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .restart local v1       #listener:Lcom/mediatek/FMRadio/FMRadioListener;
    .restart local v2       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :cond_1
    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/FMRadioListener;->onCallBack(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2227
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .end local v1           #listener:Lcom/mediatek/FMRadio/FMRadioListener;
    .end local v2           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private openDevice()Z
    .locals 3

    .prologue
    .line 391
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.openDevice"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->opendev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 395
    :cond_0
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.openDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method private powerUpFM(F)Z
    .locals 7
    .parameter "frequency"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 514
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> FMRadioService.powerUp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v4, :cond_0

    .line 517
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< FMRadioService.powerUp: already power up"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_0
    return v2

    .line 520
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcastToStopOtherAPP()V

    .line 522
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->requestAudioFocus()Z

    move-result v4

    if-nez v4, :cond_1

    .line 523
    const-string v2, "FmRx/Service"

    const-string v4, "FM can\'t get audio focus when power up"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 524
    goto :goto_0

    .line 526
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 527
    .local v0, time:J
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performance test. service native power up start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 529
    const-string v2, "FmRx/Service"

    const-string v4, "Error: powerup failed."

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 530
    goto :goto_0

    .line 532
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 533
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performance test. service native power up end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 536
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 539
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    .line 540
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.powerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    goto :goto_0
.end method

.method private registerMediaButton()V
    .locals 4

    .prologue
    .line 1856
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    if-nez v1, :cond_0

    .line 1859
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1860
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1862
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mediatek.FMRadio"

    sget-object v3, Lcom/mediatek/FMRadio/FMRadioService;->STR_MEDIABTNRECEIVER_CLASS:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1864
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    .line 1867
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private registerSDListener()V
    .locals 3

    .prologue
    .line 1885
    const-string v1, "FmRx/Service"

    const-string v2, "registerSDListener >>> "

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1887
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioService$2;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 1923
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1924
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1925
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1926
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1927
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1928
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1929
    const-string v1, "FmRx/Service"

    const-string v2, "registerSDListener <<< "

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    return-void
.end method

.method private remove(I)V
    .locals 4
    .parameter "hashCode"

    .prologue
    .line 2248
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2249
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2250
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/FMRadioService$Record;

    .line 2252
    .local v1, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    iget v2, v1, Lcom/mediatek/FMRadio/FMRadioService$Record;->mHashCode:I

    if-ne v2, p1, :cond_0

    .line 2253
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2256
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    .end local v1           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/FMRadio/FMRadioService$Record;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2257
    return-void
.end method

.method private removeNotification()V
    .locals 2

    .prologue
    .line 1841
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.removeNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopForeground(Z)V

    .line 1843
    return-void
.end method

.method private saveRecording(Ljava/lang/String;)V
    .locals 2
    .parameter "newName"

    .prologue
    .line 1306
    const-string v0, "FmRx/Service"

    const-string v1, ">>> saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1308
    if-eqz p1, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/FMRadio/FMRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 1310
    const-string v0, "FmRx/Service"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->discardRecording()V

    .line 1315
    :cond_1
    const-string v0, "FmRx/Service"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private seekStation(FZ)F
    .locals 9
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    const/4 v8, 0x0

    .line 767
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> FMRadioService.seek: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v5, :cond_0

    .line 770
    const-string v5, "FmRx/Service"

    const-string v6, "FM is not powered up"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/high16 v2, -0x4080

    .line 787
    :goto_0
    return v2

    .line 774
    :cond_0
    invoke-direct {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 775
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 777
    .local v3, startSeekTime:J
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] Test FMRadio Native seek time start ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {p1, p2}, Lcom/mediatek/FMRadio/FMRadioNative;->seek(FZ)F

    move-result v2

    .line 779
    .local v2, fRet:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 780
    .local v0, endSeekTime:J
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] Test FMRadio Native seek time end ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    .line 785
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 786
    const-string v5, "FmRx/Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< FMRadioService.seek: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastToStopOtherAPP()V
    .locals 3

    .prologue
    .line 601
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v1, intentToMusic:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, intentToFMTx:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 611
    return-void
.end method

.method private setAudioChannel(Z)Z
    .locals 3
    .parameter "isMono"

    .prologue
    .line 1164
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1166
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v0, 0x0

    .line 1169
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private setBtStatus(Z)Z
    .locals 1
    .parameter "isPowerUp"

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method private setLRText(Ljava/lang/String;)V
    .locals 4
    .parameter "lrtText"

    .prologue
    .line 1746
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.setLRText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1748
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 1749
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1750
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100100

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1751
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1755
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setMute(Z)I
    .locals 4
    .parameter "mute"

    .prologue
    .line 992
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 993
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v0, -0x1

    .line 1000
    :goto_0
    return v0

    .line 997
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setmute(Z)I

    move-result v0

    .line 999
    .local v0, iRet:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPS(Ljava/lang/String;)V
    .locals 4
    .parameter "ps"

    .prologue
    .line 1728
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.setPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1730
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 1731
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1732
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100011

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1733
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1737
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setRDS(Z)I
    .locals 4
    .parameter "on"

    .prologue
    .line 908
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 909
    const/4 v0, -0x1

    .line 920
    :goto_0
    return v0

    .line 911
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v0, -0x1

    .line 913
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->rdsset(Z)I

    move-result v0

    .line 917
    :cond_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V

    .line 918
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V

    .line 919
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRecordingMode(Z)V
    .locals 3
    .parameter "isRecording"

    .prologue
    .line 1349
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> setRecordingMode: isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    .line 1351
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_2

    .line 1352
    if-nez p1, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1355
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1357
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 1358
    const-string v0, "FmRx/Service"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :goto_0
    return-void

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->resetRecorder()V

    .line 1364
    :cond_2
    const-string v0, "FmRx/Service"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1824
    const-string v4, "FmRx/Service"

    const-string v5, "FMRadioService.showNotification"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1826
    .local v1, notificationIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1828
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    const v4, 0x7f020029

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1829
    .local v0, notification:Landroid/app/Notification;
    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x22

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MHz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1831
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1833
    const-string v4, "FmRx/Service"

    const-string v5, "Add notification to the title bar."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/mediatek/FMRadio/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 1835
    return-void
.end method

.method private startPlayback()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1247
    const-string v1, "FmRx/Service"

    const-string v2, ">>> startPlayback"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->requestAudioFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1250
    const-string v1, "FmRx/Service"

    const-string v2, "can\'t get audio focus when play recording file"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :goto_0
    return v0

    .line 1254
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v1, :cond_1

    .line 1255
    const-string v1, "FmRx/Service"

    const-string v2, "FMRecorder is null !!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1259
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 1261
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->startPlayback()V

    .line 1263
    const-string v0, "FmRx/Service"

    const-string v1, "<<< startPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startRDSThread()V
    .locals 2

    .prologue
    .line 1624
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.startRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z

    .line 1626
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1706
    :goto_0
    return-void

    .line 1629
    :cond_0
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$1;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 1703
    const-string v0, "FmRx/Service"

    const-string v1, "Start RDS Thread."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1705
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FMRadioService.startRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startRecording()V
    .locals 3

    .prologue
    .line 1207
    const-string v0, "FmRx/Service"

    const-string v1, ">>> startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    .line 1209
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default sd card file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v0, :cond_0

    .line 1211
    new-instance v0, Lcom/mediatek/FMRadio/FMRecorder;

    invoke-direct {v0}, Lcom/mediatek/FMRadio/FMRecorder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 1212
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0, p0}, Lcom/mediatek/FMRadio/FMRecorder;->registerRecorderStateListener(Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;)V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->startRecording()V

    .line 1215
    const-string v0, "FmRx/Service"

    const-string v1, "<<< startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return-void
.end method

.method private startScan()[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 801
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FMRadioService.startScan"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v1, 0x0

    .line 804
    .local v1, iChannels:[I
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 805
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 807
    const/4 v2, 0x0

    .line 808
    .local v2, shortChannels:[S
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    if-nez v4, :cond_0

    .line 809
    iput-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    .line 810
    const-string v4, "FmRx/Service"

    const-string v5, "startScan native method:start"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->autoscan()[S

    move-result-object v2

    .line 812
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScan native method:end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    .line 816
    :cond_0
    invoke-direct {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 817
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    if-eqz v4, :cond_1

    .line 823
    new-array v2, v8, [S

    .end local v2           #shortChannels:[S
    const/16 v4, -0x64

    aput-short v4, v2, v7

    .line 824
    .restart local v2       #shortChannels:[S
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 826
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 827
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 833
    :goto_0
    if-eqz v2, :cond_2

    .line 834
    array-length v3, v2

    .line 835
    .local v3, size:I
    new-array v1, v3, [I

    .line 836
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 837
    aget-short v4, v2, v0

    aput v4, v1, v0

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 830
    .end local v0           #i:I
    .end local v3           #size:I
    :cond_1
    const-string v4, "FmRx/Service"

    const-string v5, "startScan: scan complete, but don\'t enable audio yet!"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    :cond_2
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< FMRadioService.startScan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-object v1
.end method

.method private stopFMFocusLoss(I)V
    .locals 4
    .parameter "focusState"

    .prologue
    .line 1983
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 1985
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_STOPED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1986
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1988
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    if-eqz v2, :cond_1

    .line 1991
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopScan()Z

    .line 1992
    const-string v2, "FmRx/Service"

    const-string v3, "need to stop FM, so stop scan channel."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocusAync(I)V

    .line 1997
    const-string v2, "FmRx/Service"

    const-string v3, "need to stop FM, so powerdown FM."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v2, :cond_3

    .line 2001
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 2002
    .local v0, fmState:I
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 2003
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2004
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2005
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecording()Z

    .line 2007
    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    .line 2008
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2009
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2010
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopPlayback()V

    .line 2014
    .end local v0           #fmState:I
    :cond_3
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    .line 1277
    const-string v0, "FmRx/Service"

    const-string v1, ">>> stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1282
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 1285
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "<<< stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-void
.end method

.method private stopRDSThread()V
    .locals 2

    .prologue
    .line 1712
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.stopRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z

    .line 1716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 1718
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FMRadioService.stopRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    return-void
.end method

.method private stopRecording()Z
    .locals 2

    .prologue
    .line 1227
    const-string v0, "FmRx/Service"

    const-string v1, ">>> stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v0, :cond_0

    .line 1229
    const-string v0, "FmRx/Service"

    const-string v1, "stopRecording called without a valid recorder!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 v0, 0x0

    .line 1234
    :goto_0
    return v0

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1233
    const-string v0, "FmRx/Service"

    const-string v1, "<<< stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchAntenna(I)I
    .locals 4
    .parameter "antenna"

    .prologue
    .line 1099
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.switchAntenna:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->switchAntenna(I)I

    move-result v0

    .line 1108
    .local v0, ret:I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.switchAntenna: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return v0
.end method

.method private tuneStation(F)Z
    .locals 7
    .parameter "frequency"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 716
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioService.tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v2, :cond_1

    .line 718
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 719
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    move-result v0

    .line 720
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 722
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 723
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 724
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V

    .line 726
    :cond_0
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 727
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .end local v0           #bRet:Z
    :goto_0
    return v0

    .line 732
    :cond_1
    const-string v2, "FmRx/Service"

    const-string v3, "FM is not powered up"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 734
    const/4 v1, 0x0

    .line 735
    .local v1, tune:Z
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 737
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->initDevice(F)Z

    move-result v1

    .line 739
    :cond_2
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 740
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioService.tune: mIsPowerup:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 741
    goto :goto_0
.end method

.method private unRegisterMediaButton()V
    .locals 4

    .prologue
    .line 1870
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    if-eqz v1, :cond_0

    .line 1871
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1872
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1874
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mediatek.FMRadio"

    sget-object v3, Lcom/mediatek/FMRadio/FMRadioService;->STR_MEDIABTNRECEIVER_CLASS:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1876
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMediaButtonReceiver:Z

    .line 1879
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private updateAudioFocus(I)V
    .locals 3
    .parameter "focusState"

    .prologue
    .line 2141
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.updateAudioFocus"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    packed-switch p1, :pswitch_data_0

    .line 2167
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2144
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2145
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUDIOFOCUS_LOSS: mPausedByTransientLossOfFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->powerDownAsync()V

    goto :goto_0

    .line 2150
    :pswitch_2
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_1

    .line 2151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2153
    :cond_1
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUDIOFOCUS_LOSS_TRANSIENT: mPausedByTransientLossOfFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->powerDownAsync()V

    goto :goto_0

    .line 2158
    :pswitch_3
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUDIOFOCUS_GAIN: mPausedByTransientLossOfFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_0

    .line 2160
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    goto :goto_0

    .line 2142
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateAudioFocusAync(I)V
    .locals 5
    .parameter "focusState"

    .prologue
    const/16 v4, 0x1e

    .line 2127
    const/4 v1, 0x1

    .line 2128
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2129
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2130
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "key_audiofocus_changed"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2131
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2132
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2133
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2134
    return-void
.end method

.method private updateNotification()V
    .locals 2

    .prologue
    .line 1849
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.updateNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1851
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 1853
    :cond_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 2084
    return-void
.end method

.method public activeAFAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 959
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 960
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 961
    return-void
.end method

.method public getAudioChannelSetting()Z
    .locals 2

    .prologue
    .line 1137
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1139
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v0, 0x0

    .line 1142
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    goto :goto_0
.end method

.method public getCapArray()I
    .locals 2

    .prologue
    .line 1116
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readCapArray"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1118
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/4 v0, -0x1

    .line 1121
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readCapArray()S

    move-result v0

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 3

    .prologue
    .line 1052
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.getFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    return v0
.end method

.method public getHardwareVersion()[I
    .locals 1

    .prologue
    .line 1188
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getHardwareVersion()[I

    move-result-object v0

    return-object v0
.end method

.method public getLRText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 949
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.getLRText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method public getPS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 939
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.getPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method public getRdsBler()I
    .locals 2

    .prologue
    .line 1176
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRdsBler"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1178
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v0, -0x1

    .line 1181
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRdsBler()S

    move-result v0

    goto :goto_0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->recordTime()J

    move-result-wide v0

    .line 1328
    :goto_0
    return-wide v0

    .line 1327
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRecorderState()I
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 1385
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRecordingMode()Z
    .locals 1

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsInRecordingMode:Z

    return v0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 1397
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    .line 1128
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRssi"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1130
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const/4 v0, -0x1

    .line 1133
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getStereoMono()Z
    .locals 2

    .prologue
    .line 1763
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public initService(I)V
    .locals 3
    .parameter "iCurrentStation"

    .prologue
    .line 1031
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.initService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    .line 1033
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 1034
    return-void
.end method

.method public isDeviceOpen()Z
    .locals 3

    .prologue
    .line 424
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isDeviceOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method public isFmViaBt()Z
    .locals 1

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return v0
.end method

.method public isMakePowerDown()Z
    .locals 3

    .prologue
    .line 694
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.mIsMakePowerDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    return v0
.end method

.method public isPowerUp()Z
    .locals 3

    .prologue
    .line 673
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isPowerUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method public isPowerUping()Z
    .locals 3

    .prologue
    .line 684
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isPowerUping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    return v0
.end method

.method public isRDSSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1009
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->isRDSsupport()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1010
    .local v0, isRDSSupported:Z
    :goto_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return v0

    .line 1009
    .end local v0           #isRDSSupported:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 2268
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2269
    .local v0, unmountSDCard:Ljava/lang/String;
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmount sd card file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method public isServiceInit()Z
    .locals 3

    .prologue
    .line 1042
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isServiceInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    return v0
.end method

.method public isShortAntennaSupport()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z

    return v0
.end method

.method public isSpeakerUsed()Z
    .locals 3

    .prologue
    .line 1020
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.isEarphoneUsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1543
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1545
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1546
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 1548
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1411
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1412
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FMRadioService.onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;

    .line 1414
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1415
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1416
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v4, "FmRx/Service"

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1417
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1418
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 1419
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1420
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1422
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const-string v5, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1438
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1440
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->registerMediaButton()V

    .line 1443
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "FmRadioServiceThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v2, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1445
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    .line 1448
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1449
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1450
    const-string v4, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1451
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1452
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1453
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1455
    const-string v4, "com.huawei.android.FMRadio.fmradioservicecommand"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1467
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1468
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1469
    const-string v4, "FmRx/Service"

    const-string v5, "Register broadcast receiver."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1474
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->registerSDListener()V

    .line 1478
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->openDevice()Z

    .line 1480
    const-string v4, "FmRx/Service"

    const-string v5, "<<< FMRadioService.onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #handlerThread:Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 1423
    :catch_0
    move-exception v0

    .line 1425
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1427
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1429
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1431
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1432
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1434
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 1435
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1485
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FMRadioService.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1488
    const-string v0, "FmRx/Service"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1490
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1492
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->abandonAudioFocus()V

    .line 1493
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->exitFM()V

    .line 1496
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1497
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 1499
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1500
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1503
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1504
    return-void
.end method

.method public onPlayRecordFileComplete()V
    .locals 2

    .prologue
    .line 1975
    const-string v0, "FmRx/Service"

    const-string v1, "service.onPlayRecordFileComplete"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 1977
    return-void
.end method

.method public onRecorderError(I)V
    .locals 5
    .parameter "error"

    .prologue
    const/4 v2, 0x4

    .line 1954
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecorderError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const/16 v1, 0x64

    if-ne v1, p1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mErrorType:I

    .line 1960
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1961
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v3, 0x100110

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1962
    const-string v1, "key_recording_error_type"

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mErrorType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1963
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1966
    if-ne v2, p1, :cond_0

    .line 1967
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 1969
    :cond_0
    return-void

    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    move v1, p1

    .line 1958
    goto :goto_0
.end method

.method public onRecorderStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1939
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecorderStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecordState:I

    .line 1941
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1942
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callback_flag"

    const v2, 0x100101

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1943
    const-string v1, "key_is_recording_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1944
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1945
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1578
    const-string v8, "FmRx/Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FMRadioService.onStartCommand intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " startId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v4

    .line 1581
    .local v4, iRet:I
    if-nez p1, :cond_1

    .line 1582
    const-string v8, "FmRx/Service"

    const-string v9, "onStart intent == null"

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_0
    :goto_0
    return v4

    .line 1585
    :cond_1
    const-string v8, "command"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1586
    .local v0, cmd:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    if-nez v8, :cond_0

    .line 1589
    const/4 v8, 0x3

    invoke-static {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService;->getContextCount(Landroid/content/Context;I)I

    move-result v5

    .line 1590
    .local v5, iSearchedNum:I
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService;->getContextCount(Landroid/content/Context;I)I

    move-result v3

    .line 1591
    .local v3, iFavoriteNum:I
    add-int v7, v5, v3

    .line 1592
    .local v7, sum:I
    const-string v8, "FmRx/Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "iSearchedNum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    const-string v8, "FmRx/Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "iFavoriteNum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const-string v8, "FmRx/Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-string v8, "next"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1596
    iget-boolean v8, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v8, :cond_0

    .line 1597
    if-nez v7, :cond_2

    .line 1598
    const-string v8, "FmRx/Service"

    const-string v9, "no channel in channel list"

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1601
    :cond_2
    const-string v8, "FmRx/Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " channel in channel list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioStation;->getNextStation(Landroid/content/Context;)I

    move-result v6

    .line 1604
    .local v6, iStation:I
    const-string v8, "FmRx/Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "iStation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    int-to-float v8, v6

    const/high16 v9, 0x4120

    div-float/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStationAsync(F)V

    .line 1606
    invoke-static {p0, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 1607
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.mediatek.FMRadio.FMRadioService.ACTION_STATION_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1608
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1609
    .end local v2           #i:Landroid/content/Intent;
    .end local v6           #iStation:I
    :catch_0
    move-exception v1

    .line 1610
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public powerDown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 628
    const-string v2, "FmRx/Service"

    const-string v3, ">>> FMRadioService.powerDown"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v2, :cond_0

    .line 631
    const-string v1, "FmRx/Service"

    const-string v2, "Error: device is already power down."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    return v0

    .line 635
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I

    .line 636
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I

    .line 637
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 639
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 640
    const-string v0, "FmRx/Service"

    const-string v2, "Error: powerdown failed."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 641
    goto :goto_0

    .line 644
    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z

    .line 645
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 647
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 648
    const-string v2, "FmRx/Service"

    const-string v3, "RDS is supported. Stop the RDS thread."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V

    .line 652
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->removeNotification()V

    .line 653
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 656
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 657
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 658
    const-string v2, "FmRx/Service"

    const-string v3, "release wake lock"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_3
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->setBtStatus(Z)Z

    .line 663
    const-string v1, "FmRx/Service"

    const-string v2, "<<< FMRadioService.powerDown: true"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public powerDownAsync()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 622
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 623
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 624
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 625
    return-void
.end method

.method public powerUpAsync(F)V
    .locals 8
    .parameter "frequency"

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x1

    .line 494
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z

    .line 496
    const-string v4, "FmRx/Service"

    const-string v5, "send intent to stop hwmusic"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.mediacenter.musicservicecommand.pause"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, intent_hw:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 500
    const/4 v1, 0x1

    .line 501
    .local v1, bundleSize:I
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v4, v7}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 502
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 503
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 504
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "frequency"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 505
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v4, v7}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 506
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 507
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v4, v3}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    return-void
.end method

.method public registerFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 2186
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2189
    const/4 v3, 0x0

    .line 2190
    .local v3, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2191
    .local v0, hashCode:I
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2192
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    move-object v4, v3

    .end local v3           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .local v4, record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2193
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2194
    .end local v4           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v3       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_start_2
    iget v5, v3, Lcom/mediatek/FMRadio/FMRadioService$Record;->mHashCode:I

    if-ne v0, v5, :cond_0

    .line 2195
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2203
    :goto_1
    return-void

    .line 2192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    .end local v3           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v4       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    goto :goto_0

    .line 2198
    :cond_1
    :try_start_3
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/mediatek/FMRadio/FMRadioService$Record;-><init>(Lcom/mediatek/FMRadio/FMRadioService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2199
    .end local v4           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v3       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :try_start_4
    iput v0, v3, Lcom/mediatek/FMRadio/FMRadioService$Record;->mHashCode:I

    .line 2200
    iput-object p1, v3, Lcom/mediatek/FMRadio/FMRadioService$Record;->mCallback:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 2201
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    monitor-exit v6

    goto :goto_1

    .end local v0           #hashCode:I
    .end local v1           #i:I
    .end local v2           #n:I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v0       #hashCode:I
    .restart local v1       #i:I
    .restart local v2       #n:I
    .restart local v4       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    .restart local v3       #record:Lcom/mediatek/FMRadio/FMRadioService$Record;
    goto :goto_2
.end method

.method public requestAudioFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2068
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    if-eqz v2, :cond_0

    .line 2075
    :goto_0
    return v1

    .line 2072
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 2074
    .local v0, audioFocus:I
    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    .line 2075
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAudioFocusHeld:Z

    goto :goto_0

    .line 2074
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public resumeFMAudio()V
    .locals 2

    .prologue
    .line 1070
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.resumeFMAudio"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    if-nez v0, :cond_0

    .line 1072
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 1074
    :cond_0
    return-void
.end method

.method public saveRecordingAsync(Ljava/lang/String;)V
    .locals 5
    .parameter "newName"

    .prologue
    const/16 v4, 0x1a

    .line 1296
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1297
    const/4 v1, 0x1

    .line 1298
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1299
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1301
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1302
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1303
    return-void
.end method

.method public seekStationAsync(FZ)V
    .locals 5
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    const/16 v4, 0x10

    .line 754
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 755
    const/4 v1, 0x2

    .line 756
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 757
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 758
    const-string v3, "option"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 759
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 760
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 761
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 762
    return-void
.end method

.method public setAudioChannelAsync(Z)V
    .locals 5
    .parameter "isMono"

    .prologue
    const/4 v4, 0x6

    .line 1153
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1154
    const/4 v1, 0x1

    .line 1155
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1156
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1158
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1159
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1160
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1161
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .parameter "station"

    .prologue
    .line 1063
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 1064
    return-void
.end method

.method public setMuteAsync(Z)V
    .locals 5
    .parameter "mute"

    .prologue
    const/4 v4, 0x7

    .line 982
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 983
    const/4 v1, 0x1

    .line 984
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 985
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 986
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 987
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 988
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 989
    return-void
.end method

.method public setRDSAsync(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v4, 0x5

    .line 898
    const/4 v1, 0x1

    .line 899
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 900
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 901
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 902
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 903
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 904
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 905
    return-void
.end method

.method public setRecordingModeAsync(Z)V
    .locals 5
    .parameter "isRecording"

    .prologue
    const/16 v4, 0x15

    .line 1339
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1340
    const/4 v1, 0x1

    .line 1341
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1342
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1343
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1344
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1345
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1346
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 3
    .parameter "isSpeaker"

    .prologue
    .line 370
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.useSpeaker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mForcedUseForMedia:I

    .line 373
    const/4 v0, 0x4

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mForcedUseForMedia:I

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 375
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z

    .line 376
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FMRadioService.useSpeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStereoMono(Z)Z
    .locals 3
    .parameter "isMono"

    .prologue
    .line 1775
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result v0

    return v0
.end method

.method public startPlaybackAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 1242
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1243
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1244
    return-void
.end method

.method public startRecordingAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x16

    .line 1202
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1203
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1204
    return-void
.end method

.method public startScanAsync()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 796
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 797
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 798
    return-void
.end method

.method public stopPlaybackAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x19

    .line 1272
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1273
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1274
    return-void
.end method

.method public stopRecordingAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 1222
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1223
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1224
    return-void
.end method

.method public stopScan()Z
    .locals 4

    .prologue
    .line 859
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FMRadioService.stopScan"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 862
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v0, 0x0

    .line 878
    :goto_0
    return v0

    .line 866
    :cond_0
    const/4 v0, 0x0

    .line 868
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 869
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 871
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsScanning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSeeking:Z

    if-eqz v1, :cond_2

    .line 872
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 873
    const-string v1, "FmRx/Service"

    const-string v2, "native stop scan:start"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stopscan()Z

    move-result v0

    .line 875
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native stop scan:end --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_2
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.stopScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchAntennaAsync(I)V
    .locals 5
    .parameter "antenna"

    .prologue
    const/4 v4, 0x4

    .line 1084
    const/4 v1, 0x1

    .line 1085
    .local v1, bundleSize:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1087
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1088
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "switch_anntenna_value"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1089
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1090
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1091
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1092
    return-void
.end method

.method public tuneStationAsync(F)V
    .locals 5
    .parameter "frequency"

    .prologue
    const/16 v4, 0xf

    .line 706
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 707
    const/4 v1, 0x1

    .line 708
    .local v1, bundleSize:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 709
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 710
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 711
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 712
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFmServiceHandler:Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 713
    return-void
.end method

.method public unregisterFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2238
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->remove(I)V

    .line 2239
    return-void
.end method
