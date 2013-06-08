.class public Landroid/server/BluetoothA2dpService;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;,
        Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;
    }
.end annotation


# static fields
.field public static final ACTION_FM_OVER_BT_CONTROLLER:Ljava/lang/String; = "android.server.a2dp.action.FM_OVER_BT_CONTROLLER"

.field public static final ACTION_FM_OVER_BT_HOST:Ljava/lang/String; = "android.server.a2dp.action.FM_OVER_BT_HOST"

.field static final AVRCP_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.avrcp.IBTAvrcpService"

.field public static final BLUETOOTH_A2DP_SERVICE:Ljava/lang/String; = "bluetooth_a2dp"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetooth_enabled"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field public static final EXTRA_RESULT_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.RESULT_STATE"

.field public static final FMSTART_ALREADY:I = 0x2

.field public static final FMSTART_FAILED:I = 0x1

.field public static final FMSTART_SUCCESS:I = 0x0

.field public static final FM_START_FAILED:I = 0x21

.field private static final FM_VIA_CONTROLLER:I = 0x0

.field private static final FM_VIA_HOST:I = 0x1

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field public static final MSG_FM_POWER_DOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

.field public static final MSG_FM_POWER_UP:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

.field private static final PROPERTY_STATE:Ljava/lang/String; = "State"

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpService"

.field private static sSinkCount:I


# instance fields
.field private mA2dpDisconnecting:I

.field private mA2dpState:I

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mFmOverBtMode:Z

.field private mFmOverBtOn:Z

.field private mFmResult:I

.field private mFmStartReq:Z

.field private mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetA2dpState:I

.field private mWM:Landroid/net/wifi/WifiManager;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 4
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 137
    new-instance v1, Landroid/server/BluetoothA2dpService$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothA2dpService$1;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    .line 207
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 208
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "BluetoothA2dpService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 210
    new-instance v1, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;-><init>(Landroid/server/BluetoothA2dpService;Landroid/server/BluetoothA2dpService$1;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    .line 212
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 214
    iput-object p2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 215
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->initNative()Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not init BluetoothA2dpService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 225
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 226
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->addFmAndWifiActions()V

    .line 233
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    .line 237
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    .line 239
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 240
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p0}, Landroid/server/BluetoothService;->setA2dpService(Landroid/server/BluetoothA2dpService;)V

    .line 243
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->initFmOverBtFeature()V

    .line 246
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 248
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$1000(Landroid/server/BluetoothA2dpService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/server/BluetoothA2dpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/server/BluetoothA2dpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/server/BluetoothA2dpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtMode:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->stopFm()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothA2dpService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->handleFMandWifiAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addAudioSink(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private addFmAndWifiActions()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method private adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "connectedDevice"

    .prologue
    .line 753
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 754
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 759
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private synchronized native declared-synchronized avrcpVolumeDownNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized avrcpVolumeUpNative(Ljava/lang/String;)Z
.end method

.method private checkSinkSuspendState(I)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 762
    const/4 v0, 0x1

    .line 765
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[a2dp] checkSinkSuspendState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 766
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 767
    const/4 v1, 0x0

    .line 793
    :goto_0
    return v1

    .line 770
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 771
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_1
    move v1, v0

    .line 793
    goto :goto_0

    .line 772
    :cond_1
    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 773
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=false"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 775
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private native cleanupNative()V
.end method

.method private synchronized native declared-synchronized connectSinkNative(Ljava/lang/String;)Z
.end method

.method private convertBluezSinkStringToState(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 260
    const-string v0, "disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    .line 262
    :cond_0
    const-string v0, "connecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    const/4 v0, 0x2

    goto :goto_0

    .line 266
    :cond_2
    const-string/jumbo v0, "playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    const/16 v0, 0xa

    goto :goto_0

    .line 270
    :cond_3
    const-string v0, "fmstartfailed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    const/16 v0, 0x21

    goto :goto_0

    .line 275
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1183
    const-string v0, "BluetoothA2dpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void
.end method

.method private decA2dpThroughput4WifiOn()V
    .locals 0

    .prologue
    .line 1112
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->decA2dpThroughput4WifiOnNative()V

    .line 1113
    return-void
.end method

.method private native decA2dpThroughput4WifiOnNative()V
.end method

.method private synchronized native declared-synchronized disconnectSinkNative(Ljava/lang/String;)Z
.end method

.method private fmOverBtViaController()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1044
    const-string v0, "fmOverBtViaController On"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1045
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    if-ge v0, v1, :cond_1

    .line 1046
    const-string v0, "A2dp is not connected!"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1047
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1048
    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1049
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    if-lt v0, v1, :cond_0

    .line 1053
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    if-ne v0, v1, :cond_2

    .line 1054
    const-string/jumbo v0, "mA2dpState == BluetoothA2dp.STATE_CONNECTED"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1058
    :goto_1
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendStartReqNative()I

    move-result v0

    if-nez v0, :cond_3

    .line 1059
    const-string v0, "BluetoothA2dpService"

    const-string v1, "[A2DP]fmSendStartReqNative fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1061
    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1062
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    goto :goto_0

    .line 1056
    :cond_2
    const-string/jumbo v0, "mA2dpState == BluetoothA2dp.STATE_PLAYING"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1065
    :cond_3
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    goto :goto_0
.end method

.method private fmOverBtViaHost()V
    .locals 2

    .prologue
    .line 1083
    const-string v1, "fmOverBtViaHost On"

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1085
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.a2dp.action.FM_OVER_BT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1087
    return-void
.end method

.method private fmSendIntent()V
    .locals 3

    .prologue
    .line 1095
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.a2dp.action.FM_OVER_BT_CONTROLLER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.a2dp.extra.RESULT_STATE"

    iget v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1097
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1098
    return-void
.end method

.method private native fmSendStartReqNative()I
.end method

.method private native fmSendStopReqNative()V
.end method

.method private fmThroughPath()I
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method private synchronized native declared-synchronized getSinkPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private handleFMSinkStateChange(I)I
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1135
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 1136
    const-string v0, "BluetoothA2dpService"

    const-string v1, "FM Start Req Failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iput v3, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1139
    const/4 p1, 0x0

    .line 1141
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_0

    .line 1142
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1143
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1144
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    .line 1154
    :cond_0
    :goto_0
    return p1

    .line 1146
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1147
    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1148
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_0

    .line 1149
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1150
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1151
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    goto :goto_0
.end method

.method private handleFMandWifiAction(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 925
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 927
    const-string v2, "FM Power On!"

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 929
    const-string v2, "bt.fmoverbt"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 930
    const-string v2, "[A2DP] BT chip does not support Fm Over Bt, return."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 932
    iput v4, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 933
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget v2, p0, Landroid/server/BluetoothA2dpService;->mA2dpDisconnecting:I

    if-ne v2, v4, :cond_2

    .line 938
    const-string v2, "A2dp is disconnecting,return."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 940
    iput v4, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 941
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    goto :goto_0

    .line 944
    :cond_2
    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-nez v2, :cond_4

    .line 947
    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtMode:Z

    if-eqz v2, :cond_0

    .line 948
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmThroughPath()I

    move-result v2

    if-nez v2, :cond_3

    .line 949
    const-string v2, "FM_VIA_CONTROLLER"

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 950
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmOverBtViaController()V

    goto :goto_0

    .line 952
    :cond_3
    const-string v2, "FM_VIA_HOST"

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 953
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmOverBtViaHost()V

    goto :goto_0

    .line 957
    :cond_4
    const-string v2, "FM was Power On,ignore."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 959
    const/4 v2, 0x2

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 960
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    goto :goto_0

    .line 962
    :cond_5
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 963
    const-string v2, "FM Power Off!"

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 964
    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-eqz v2, :cond_6

    .line 965
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 967
    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtMode:Z

    if-eqz v2, :cond_0

    .line 968
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->stopFm()V

    goto :goto_0

    .line 971
    :cond_6
    const-string v2, "FM was Power down,ignore."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 973
    :cond_7
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 974
    const-string v2, "Receive WifiManager.WIFI_STATE_CHANGED_ACTION."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 975
    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 976
    .local v1, state:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 977
    const-string v2, "Wifi is on."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 978
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->decA2dpThroughput4WifiOn()V

    goto/16 :goto_0

    .line 979
    :cond_8
    if-ne v1, v4, :cond_0

    .line 980
    const-string v2, "Wifi is off."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 981
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->incA2dpThroughput4WifiOff()V

    goto/16 :goto_0
.end method

.method private handleFmSinkPlayingStateChange(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1024
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 1025
    const-string v0, "BluetoothA2dpService"

    const-string v1, "FM Start Req Failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iput v3, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1027
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_0

    .line 1028
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1029
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1030
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1033
    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Yi] hdl sink state start req:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1035
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_0

    .line 1036
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1037
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1038
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    goto :goto_0
.end method

.method private handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .parameter "device"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 739
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 741
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 744
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, p2}, Landroid/server/BluetoothA2dpService;->handleFmSinkPlayingStateChange(I)V

    .line 750
    return-void
.end method

.method private handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    .line 701
    invoke-direct {p0, p3}, Landroid/server/BluetoothA2dpService;->handleFMSinkStateChange(I)I

    move-result p3

    .line 703
    if-eq p3, p2, :cond_1

    .line 706
    invoke-direct {p0, p3}, Landroid/server/BluetoothA2dpService;->switchStatusOnSinkStateChange(I)V

    .line 708
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-direct {p0, p3}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z

    .line 711
    const/4 v1, -0x1

    iput v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 713
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 717
    const/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 720
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V

    .line 725
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, p3}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 727
    .local v0, delay:I
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 728
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p3, p1}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 736
    .end local v0           #delay:I
    :cond_1
    return-void
.end method

.method private handleWifiOnSinkStateChange(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1122
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 1124
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mWM:Landroid/net/wifi/WifiManager;

    .line 1125
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1126
    .local v0, wifistate:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Wifi state:."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1127
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1128
    const-string v1, "A2DP Wifi is on."

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->decA2dpThroughput4WifiOn()V

    .line 1132
    .end local v0           #wifistate:I
    :cond_0
    return-void
.end method

.method private incA2dpThroughput4WifiOff()V
    .locals 0

    .prologue
    .line 1116
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->incA2dpThroughput4WifiOffNative()V

    .line 1117
    return-void
.end method

.method private native incA2dpThroughput4WifiOffNative()V
.end method

.method private initFmOverBtFeature()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 994
    iput v1, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    .line 995
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtMode:Z

    .line 996
    iput v1, p0, Landroid/server/BluetoothA2dpService;->mA2dpDisconnecting:I

    .line 997
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 998
    return-void
.end method

.method private native initNative()Z
.end method

.method private isA2dpDisconnect([Ljava/lang/String;)Z
    .locals 4
    .parameter "propValues"

    .prologue
    .line 1001
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 1002
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1003
    .local v0, disconnect:Z
    const-string v3, "State"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-direct {p0, v3}, Landroid/server/BluetoothA2dpService;->convertBluezSinkStringToState(Ljava/lang/String;)I

    move-result v2

    .line 1005
    .local v2, state:I
    if-eqz v2, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1006
    const/4 v0, 0x1

    .line 1009
    .end local v2           #state:I
    :cond_0
    return v0
.end method

.method private declared-synchronized isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 375
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 377
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 378
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 381
    const/4 v1, 0x1

    goto :goto_0

    .line 370
    .end local v0           #path:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 445
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 446
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 456
    :goto_0
    :pswitch_0
    monitor-exit p0

    return v2

    .line 450
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 451
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 456
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 445
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDisconnectSinkNative(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "path"
    .parameter "device"

    .prologue
    .line 1013
    const/4 v0, 0x0

    .line 1014
    .local v0, isDisconnectSink:Z
    invoke-virtual {p0, p2}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 1016
    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    .line 1017
    const/4 v0, 0x1

    .line 1018
    const-string v1, "A2DP: onSinkPropertyChanged Priority is off, disconnect device "

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1020
    :cond_1
    return v0
.end method

.method private isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 192
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 193
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 194
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 195
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 196
    .local v0, dockDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    const/4 v3, 0x1

    .line 201
    .end local v0           #dockDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    return v3
.end method

.method private isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 279
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 280
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const/4 v1, 0x1

    .line 283
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 858
    const-string v0, "BluetoothA2dpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 9

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 323
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v2, v6, [Landroid/bluetooth/BluetoothDevice;

    .line 324
    .local v2, devices:[Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    check-cast v2, [Landroid/bluetooth/BluetoothDevice;

    .line 325
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    move-object v0, v2

    .local v0, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 326
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 327
    .local v5, state:I
    sparse-switch v5, :sswitch_data_0

    .line 325
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 333
    :sswitch_0
    iget-boolean v6, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-eqz v6, :cond_0

    .line 334
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 338
    :cond_0
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    .line 340
    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 322
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #state:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 343
    .restart local v0       #arr$:[Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #state:I
    :sswitch_1
    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, v1, v6, v7}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 348
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #state:I
    :cond_1
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 358
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "A2dpSuspended=true"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 361
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "bluetooth_enabled=false"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->stopNative()V

    .line 366
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.mediatek.bluetooth.avrcp.IBTAvrcpService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 12

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Devices"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, devices:Ljava/lang/String;
    const/4 v9, 0x0

    sput v9, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    .line 298
    if-eqz v3, :cond_1

    .line 299
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, paths:[Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 301
    .local v6, path:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, address:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 303
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 304
    .local v8, remoteUuids:[Landroid/os/ParcelUuid;
    if-eqz v8, :cond_0

    .line 305
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/os/ParcelUuid;

    const/4 v10, 0x0

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 308
    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 300
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #paths:[Ljava/lang/String;
    .end local v8           #remoteUuids:[Landroid/os/ParcelUuid;
    :cond_1
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "bluetooth_enabled=true"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 313
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "A2dpSuspended=false"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->startNative()V

    .line 318
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.mediatek.bluetooth.avrcp.IBTAvrcpService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 293
    .end local v3           #devices:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private onConnectSinkResult(Ljava/lang/String;Z)V
    .locals 4
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 806
    if-nez p2, :cond_0

    .line 807
    if-eqz p1, :cond_0

    .line 808
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 815
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 810
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 811
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 812
    .local v2, state:I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private declared-synchronized onSinkPropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "path"
    .parameter "propValues"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 610
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 613
    invoke-direct {p0, p2}, Landroid/server/BluetoothA2dpService;->isA2dpDisconnect([Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 696
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 620
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    aget-object v2, p2, v5

    .line 621
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 623
    const-string v5, "BluetoothA2dpService"

    const-string/jumbo v6, "onSinkPropertyChanged: Address of the remote device in null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 610
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 627
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 630
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothA2dpService;->isDisconnectSinkNative(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 635
    const-string v5, "State"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 636
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-direct {p0, v5}, Landroid/server/BluetoothA2dpService;->convertBluezSinkStringToState(Ljava/lang/String;)I

    move-result v4

    .line 637
    .local v4, state:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP: onSinkPropertyChanged newState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mPlayingA2dpDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 639
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 644
    if-eqz v4, :cond_3

    if-ne v4, v8, :cond_4

    .line 646
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 647
    const/4 v5, 0x3

    invoke-direct {p0, v1, v5, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 648
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP: onSinkPropertyChanged 2 newState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPlayingA2dpDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 655
    :cond_4
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    .line 657
    invoke-direct {p0, v1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 658
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 694
    :goto_1
    invoke-direct {p0, v4}, Landroid/server/BluetoothA2dpService;->handleWifiOnSinkStateChange(I)V

    goto/16 :goto_0

    .line 663
    :cond_5
    iput v4, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    .line 665
    const/16 v5, 0xa

    if-ne v4, v5, :cond_6

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_6

    .line 666
    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 667
    const/16 v5, 0xb

    invoke-direct {p0, v1, v4, v5}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 668
    :cond_6
    if-ne v4, v7, :cond_7

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_7

    .line 669
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 670
    const/16 v5, 0xb

    const/16 v6, 0xa

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 674
    const/16 v5, 0xb

    iput v5, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    goto :goto_1

    .line 677
    :cond_7
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 678
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 681
    .local v3, prevState:I
    if-nez v3, :cond_8

    if-ne v4, v7, :cond_8

    .line 684
    const-string v5, "a2dp: notifyIncomingA2dpConnection....."

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 685
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    .line 688
    :cond_8
    invoke-direct {p0, v1, v3, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private synchronized native declared-synchronized resumeSinkNative(Ljava/lang/String;)Z
.end method

.method private native startNative()V
.end method

.method private stopFm()V
    .locals 2

    .prologue
    .line 1070
    const-string/jumbo v0, "stop FM"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1072
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1076
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendStopReqNative()V

    goto :goto_0

    .line 1078
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    goto :goto_0
.end method

.method private native stopNative()V
.end method

.method private synchronized native declared-synchronized suspendSinkNative(Ljava/lang/String;)Z
.end method

.method private switchStatusOnSinkStateChange(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1158
    if-ne p1, v3, :cond_0

    .line 1159
    const/4 v0, 0x1

    iput v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpDisconnecting:I

    .line 1161
    :cond_0
    if-nez p1, :cond_1

    .line 1162
    iput v1, p0, Landroid/server/BluetoothA2dpService;->mA2dpDisconnecting:I

    .line 1165
    :cond_1
    if-gt p1, v2, :cond_3

    .line 1166
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-eqz v0, :cond_2

    .line 1167
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1169
    :cond_2
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_3

    .line 1170
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    .line 1174
    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v3, :cond_6

    .line 1175
    :cond_4
    sget v0, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    .line 1179
    :cond_5
    :goto_0
    return-void

    .line 1176
    :cond_6
    if-ne p1, v2, :cond_5

    .line 1177
    sget v0, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 6
    .parameter "device"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 586
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 598
    :goto_0
    monitor-exit p0

    return v2

    .line 592
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 593
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 594
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingConnect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 586
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 597
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/Integer;
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingConnect: A2DP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, p2, v3}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectSink("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 404
    :goto_0
    monitor-exit p0

    return v2

    .line 398
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 399
    .local v1, sinkDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 393
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sinkDevice:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 403
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    const/16 v2, 0x3e8

    :try_start_2
    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 404
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->connectSink(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 441
    :goto_0
    monitor-exit p0

    return v2

    .line 410
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 413
    .local v1, state:I
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 417
    goto :goto_0

    .line 420
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 428
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ge v2, v6, :cond_2

    .line 432
    const/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 434
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 436
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->connectSinkNative(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 438
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 439
    goto :goto_0

    .end local v0           #path:Ljava/lang/String;
    :pswitch_0
    move v2, v3

    .line 423
    goto :goto_0

    :pswitch_1
    move v2, v4

    .line 425
    goto :goto_0

    .restart local v0       #path:Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 441
    goto :goto_0

    .line 408
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 413
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 460
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectSink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 470
    :goto_0
    monitor-exit p0

    return v0

    .line 465
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-eqz v0, :cond_1

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 470
    :cond_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->disconnectSink(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 474
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 475
    .local v1, state:I
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, path:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 483
    :pswitch_0
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 484
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 486
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 489
    :goto_0
    monitor-exit p0

    return v2

    :pswitch_1
    move v2, v3

    .line 480
    goto :goto_0

    .line 489
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 474
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 847
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    const-string v5, "BluetoothA2dpService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 855
    :cond_0
    monitor-exit p0

    return-void

    .line 850
    :cond_1
    :try_start_1
    const-string v3, "Cached audio devices:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 852
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 853
    .local v2, state:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 847
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->cleanupNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 546
    .local v0, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-exit p0

    return-object v0

    .line 543
    .end local v0           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 538
    const/4 v1, 0x0

    .line 539
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 535
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    const-string v10, "Need BLUETOOTH permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v6, sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 553
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 554
    .local v5, sinkState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget v7, v0, v3

    .line 555
    .local v7, state:I
    if-ne v7, v5, :cond_1

    .line 556
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 550
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v6           #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7           #state:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 554
    .restart local v0       #arr$:[I
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #sinkState:I
    .restart local v6       #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v7       #state:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 561
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v7           #state:I
    :cond_2
    monitor-exit p0

    return-object v6
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 565
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mA2dpState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1103
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1104
    iput v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    .line 1107
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    goto :goto_0
.end method

.method public declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA2dpPlaying("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 389
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 519
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 522
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 531
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 525
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 527
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 530
    const/16 v2, 0xa

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 531
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 519
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setAudioPathToAudioTrack(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    .line 885
    new-instance v1, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;

    invoke-direct {v1, p0, p1}, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;-><init>(Landroid/server/BluetoothA2dpService;Landroid/os/IBinder;)V

    .line 888
    .local v1, hdl:Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 889
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[a2dp service]setAudioPathToAudioTrack could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 575
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 581
    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 577
    monitor-exit p0

    return v0

    .line 581
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 573
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 493
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "suspendSink("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), mTargetA2dpState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 496
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 513
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 499
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, path:Ljava/lang/String;
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 501
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 512
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "A2dpSuspended=true"

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 513
    goto :goto_0

    .line 493
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
