.class public Landroid/server/BluetoothService;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$Reaper;,
        Landroid/server/BluetoothService$RemoteService;,
        Landroid/server/BluetoothService$ServiceRecordClient;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final DOCK_ADDRESS_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_addr"

.field private static final DOCK_PIN_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_pin"

.field private static final INCOMING_CONNECTION_FILE:Ljava/lang/String; = "/data/misc/bluetooth/incoming_connection.conf"

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final MESSAGE_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x2

.field private static final MESSAGE_DISCOVERABLE_TIMEOUT:I = 0x4

.field private static final MESSAGE_REMOVE_SERVICE_RECORD:I = 0x3

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final RFCOMM_RECORD_REAPER:I = 0xa

.field private static final RFCOMM_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_service_settings"

.field private static final SHARED_PREFERENCE_DOCK_ADDRESS:Ljava/lang/String; = "dock_bluetooth_address"

.field private static final STATE_CHANGE_REAPER:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothService"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static mDockAddress:Ljava/lang/String;


# instance fields
.field private final ACTION_DISCOVERABLE_TIMEOUT:Ljava/lang/String;

.field private final mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterConnectionState:I

.field private final mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

.field private mAdapterSdpHandles:[I

.field private mAdapterUuids:[Landroid/os/ParcelUuid;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowConnect:Z

.field private mAllowUpdateProfileState:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

.field private mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

.field private mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

.field private final mBondState:Landroid/server/BluetoothBondState;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceOobData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field private final mDeviceProfileState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDeviceProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

.field private final mDeviceServiceChannelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDockPin:Ljava/lang/String;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

.field private final mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mIncomingConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

.field private mIsAirplaneSensitive:Z

.field private mIsAirplaneToggleable:Z

.field private mNativeData:I

.field private mPan:Landroid/bluetooth/BluetoothPan;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSSPDebugMode:Z

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/server/BluetoothService$ServiceRecordClient;",
            ">;"
        }
    .end annotation
.end field

.field private mStateChangeTracker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidCallbackTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/server/BluetoothService$RemoteService;",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidIntentTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .line 218
    invoke-static {}, Landroid/server/BluetoothService;->classInitNative()V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    .line 170
    const-string v2, "android.server.BluetoothService.action.DISCOVERABLE_TIMEOUT"

    iput-object v2, p0, Landroid/server/BluetoothService;->ACTION_DISCOVERABLE_TIMEOUT:Ljava/lang/String;

    .line 173
    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 178
    iput-boolean v5, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    .line 179
    iput-boolean v4, p0, Landroid/server/BluetoothService;->mAllowUpdateProfileState:Z

    .line 181
    iput v4, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 190
    iput-boolean v4, p0, Landroid/server/BluetoothService;->mSSPDebugMode:Z

    .line 562
    new-instance v2, Landroid/server/BluetoothService$1;

    invoke-direct {v2, p0}, Landroid/server/BluetoothService$1;-><init>(Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    .line 1871
    new-instance v2, Landroid/server/BluetoothService$2;

    invoke-direct {v2, p0}, Landroid/server/BluetoothService$2;-><init>(Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2173
    new-instance v2, Landroid/server/BluetoothService$3;

    invoke-direct {v2, p0}, Landroid/server/BluetoothService$3;-><init>(Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 222
    const-string v2, "[API] BluetoothService"

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    .line 229
    const-string v2, "batteryinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 231
    invoke-direct {p0}, Landroid/server/BluetoothService;->initializeNativeDataNative()V

    .line 233
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledNative()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 234
    const-string v2, "BluetoothService"

    const-string v3, "Bluetooth daemons already running - runtime restart? "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 238
    :cond_0
    new-instance v2, Landroid/server/BluetoothBondState;

    invoke-direct {v2, p1, p0}, Landroid/server/BluetoothBondState;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    .line 239
    new-instance v2, Landroid/server/BluetoothAdapterProperties;

    invoke-direct {v2, p1, p0}, Landroid/server/BluetoothAdapterProperties;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    .line 240
    new-instance v2, Landroid/server/BluetoothDeviceProperties;

    invoke-direct {v2, p0}, Landroid/server/BluetoothDeviceProperties;-><init>(Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    .line 242
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    .line 245
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    .line 246
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    .line 247
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    .line 248
    new-instance v2, Landroid/bluetooth/BluetoothProfileState;

    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 249
    new-instance v2, Landroid/bluetooth/BluetoothProfileState;

    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 251
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 252
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 254
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/server/BluetoothService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.server.BluetoothService.action.DISCOVERABLE_TIMEOUT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 256
    .local v0, discoverableTimeOutIntent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mPendingIntent:Landroid/app/PendingIntent;

    .line 258
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 261
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v2, "android.server.BluetoothService.action.DISCOVERABLE_TIMEOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Landroid/server/BluetoothInputProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    .line 265
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Landroid/server/BluetoothPanProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    .line 266
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Landroid/server/BluetoothHealthProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothHealthProfileHandler;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    .line 267
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    .line 268
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    .line 269
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/server/BluetoothService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1202(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$200(Landroid/server/BluetoothService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-static {p0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    sput-object p0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Landroid/server/BluetoothService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized addReservedSdpRecords(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 609
    .local v1, svcIdentifiers:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 610
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v2

    aput v2, v1, v0

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->addReservedServiceRecordsNative([I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    monitor-exit p0

    return-void

    .line 608
    .end local v0           #i:I
    .end local v1           #svcIdentifiers:[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native addReservedServiceRecordsNative([I)[I
.end method

.method private native addRfcommServiceRecordNative(Ljava/lang/String;JJS)I
.end method

.method private autoConnect()V
    .locals 10

    .prologue
    .line 2662
    monitor-enter p0

    .line 2663
    :try_start_0
    iget-boolean v8, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    if-nez v8, :cond_1

    .line 2664
    const-string v8, "BluetoothService"

    const-string v9, "Not auto-connecting devices because of temporary BT on state."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    monitor-exit p0

    .line 2682
    :cond_0
    return-void

    .line 2667
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2669
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 2670
    .local v2, bonds:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2673
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v1, v3

    .line 2674
    .local v6, path:Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2675
    .local v0, address:Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2676
    .local v7, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v7, :cond_2

    .line 2677
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 2678
    .local v5, msg:Landroid/os/Message;
    const/16 v8, 0x65

    iput v8, v5, Landroid/os/Message;->what:I

    .line 2679
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2673
    .end local v5           #msg:Landroid/os/Message;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2667
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bonds:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method static bluezStringToScanMode(ZZ)I
    .locals 2
    .parameter "pairable"
    .parameter "discoverable"

    .prologue
    .line 2196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] bluezStringToScanMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2197
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2198
    const/16 v0, 0x17

    .line 2202
    :goto_0
    return v0

    .line 2199
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 2200
    const/16 v0, 0x15

    goto :goto_0

    .line 2202
    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private native cancelDeviceCreationNative(Ljava/lang/String;)Z
.end method

.method private native cancelPairingUserInputNative(Ljava/lang/String;I)Z
.end method

.method private declared-synchronized checkAndRemoveRecord(II)V
    .locals 4
    .parameter "handle"
    .parameter "pid"

    .prologue
    .line 1753
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothService$ServiceRecordClient;

    .line 1754
    .local v0, client:Landroid/server/BluetoothService$ServiceRecordClient;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    if-ne p2, v1, :cond_1

    .line 1755
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    .line 1759
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1762
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1765
    :cond_1
    monitor-exit p0

    return-void

    .line 1753
    .end local v0           #client:Landroid/server/BluetoothService$ServiceRecordClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 4
    .parameter "value"

    .prologue
    .line 960
    const/4 v1, 0x0

    .line 962
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 963
    array-length v3, v1

    new-array v2, v3, [Landroid/os/ParcelUuid;

    .line 965
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 966
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    aput-object v3, v2, v0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_0
    return-object v2
.end method

.method private convertToAdapterState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 2872
    packed-switch p1, :pswitch_data_0

    .line 2882
    const-string v0, "BluetoothService"

    const-string v1, "Error in convertToAdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2874
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2876
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 2878
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2880
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2872
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private native createDeviceNative(Ljava/lang/String;)Z
.end method

.method private createIncomingConnectionStateFile()V
    .locals 4

    .prologue
    .line 2923
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2924
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2926
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2931
    :cond_0
    :goto_0
    return-void

    .line 2927
    :catch_0
    move-exception v0

    .line 2928
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothService"

    const-string v3, "IOException: cannot create file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native createPairedDeviceNative(Ljava/lang/String;I)Z
.end method

.method private native createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z
.end method

.method private dumpAclConnectedDevices(Ljava/io/PrintWriter;)V
    .locals 6
    .parameter "pw"

    .prologue
    .line 2128
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 2129
    .local v2, devicesObjectPath:[Ljava/lang/String;
    const-string v5, "\n--ACL connected devices--"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    if-eqz v2, :cond_0

    .line 2131
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2132
    .local v1, device:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2135
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #device:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method private dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2120
    const-string v3, "\n--Application Service Records--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2121
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

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

    check-cast v0, Ljava/lang/Integer;

    .line 2122
    .local v0, handle:Ljava/lang/Integer;
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$ServiceRecordClient;

    iget v3, v3, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2123
    .local v2, pid:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tpid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2125
    .end local v0           #handle:Ljava/lang/Integer;
    .end local v2           #pid:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "pw"
    .parameter "device"

    .prologue
    .line 2103
    iget-object v0, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2117
    :goto_0
    return-void

    .line 2105
    :sswitch_0
    const-string v0, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2108
    :sswitch_1
    const-string v0, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2111
    :sswitch_2
    const-string v0, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2114
    :sswitch_3
    const-string v0, "getConnectionState() = STATE_AUDIO_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2103
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method private dumpHeadsetService(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2008
    const-string v3, "\n--Headset Service--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2009
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_2

    .line 2010
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2011
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2012
    const-string v3, "No headsets connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2021
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2022
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 2024
    const-string v3, "--Connected and Disconnected Headsets"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2026
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2027
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO audio connected to device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2014
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2015
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ngetConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2016
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V

    .line 2017
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatteryUsageHint() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2032
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    return-void

    .line 2022
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private dumpInputDeviceProfile(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2035
    const-string v3, "\n--Bluetooth Service- Input Device Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v3, :cond_1

    .line 2037
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2038
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2039
    const-string v3, "No input devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2059
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothInputDevice;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 2061
    const-string v3, "--Connected and Disconnected input devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2063
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2041
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2043
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Priority of Connected device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 2048
    :pswitch_0
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2051
    :pswitch_1
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2054
    :pswitch_2
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2066
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    return-void

    .line 2059
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2046
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpKnownDevices(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "pw"

    .prologue
    .line 2138
    const-string v8, "\n--Known devices--"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v8}, Landroid/server/BluetoothDeviceProperties;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2140
    .local v0, address:Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    .line 2141
    .local v1, bondState:I
    const-string v8, "%s %10s (%d) %s\n"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Landroid/server/BluetoothService;->toBondStateString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v11, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2146
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 2147
    .local v7, uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-nez v7, :cond_3

    .line 2148
    const-string v8, "\tuuids = null"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2159
    :cond_1
    iget-object v8, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/server/BluetoothService$RemoteService;

    .line 2160
    .local v5, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v8, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tPENDING CALLBACK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2150
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_3
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 2151
    .local v6, uuid:Landroid/os/ParcelUuid;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2152
    .local v2, channel:Ljava/lang/Integer;
    if-nez v2, :cond_4

    .line 2153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2155
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RFCOMM channel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2165
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #bondState:I
    .end local v2           #channel:Ljava/lang/Integer;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #uuid:Landroid/os/ParcelUuid;
    .end local v7           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_5
    return-void
.end method

.method private dumpPanProfile(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2069
    const-string v3, "\n--Bluetooth Service- Pan Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v3, :cond_1

    .line 2071
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2072
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2073
    const-string v3, "No Pan devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2092
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothPan;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 2094
    const-string v3, "--Connected and Disconnected Pan devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2095
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2096
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2075
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2077
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2081
    :pswitch_0
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2084
    :pswitch_1
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2087
    :pswitch_2
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2099
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    return-void

    .line 2092
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2079
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpProfileState(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 1996
    const-string v0, "\n--Profile State dump--"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n Headset profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n A2dp profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n HID profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n PAN profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2005
    return-void
.end method

.method private native getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .locals 3
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 1658
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private native getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private getProfileProxy()V
    .locals 4

    .prologue
    .line 2168
    const-string v0, "getProfileProxy"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2169
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2171
    return-void
.end method

.method private initProfileState()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2646
    const-string v7, "initProfileState"

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2647
    const/4 v2, 0x0

    .line 2648
    .local v2, bonds:[Ljava/lang/String;
    const-string v7, "Devices"

    invoke-virtual {p0, v7, v8}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 2649
    .local v6, val:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2650
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2652
    :cond_0
    if-nez v2, :cond_2

    .line 2659
    :cond_1
    return-void

    .line 2655
    :cond_2
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 2656
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2657
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v0, v8}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2655
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private native initializeNativeDataNative()V
.end method

.method private isBondingFeasible(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 1089
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return v0

    .line 1093
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1098
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1099
    const-string v1, "BluetoothService"

    const-string v2, "Ignoring createBond(): another device is bonding"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1106
    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    .line 1108
    const-string v1, "BluetoothService"

    const-string v2, "Ignoring createBond(): this device is already bonding or bonded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1112
    :cond_3
    sget-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1113
    invoke-direct {p0}, Landroid/server/BluetoothService;->writeDockPin()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1114
    const-string v1, "BluetoothService"

    const-string v2, "Error while writing Pin for the dock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1118
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEnabledInternal()Z
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isEnabledNative()I
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3033
    const-string v0, "BluetoothService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    return-void
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .locals 10
    .parameter "address"
    .parameter "result"

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v7, 0xa

    .line 761
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 762
    .local v0, attempt:I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 764
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 770
    .local v1, message:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 771
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 773
    .local v2, postResult:Z
    if-nez v2, :cond_0

    .line 774
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private native readAdapterOutOfBandDataNative()[B
.end method

.method public static declared-synchronized readDockBluetoothAddress()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 272
    const-class v6, Landroid/server/BluetoothService;

    monitor-enter v6

    :try_start_0
    sget-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 274
    :cond_1
    const/4 v3, 0x0

    .line 277
    .local v3, file:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/sys/class/switch/dock/bt_addr"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 278
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .local v4, file:Ljava/io/BufferedInputStream;
    const/16 v7, 0x11

    :try_start_2
    new-array v0, v7, [B

    .line 279
    .local v0, address:[B
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 280
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 281
    .local v1, dockAddress:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 283
    sput-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    .line 284
    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 294
    if-eqz v4, :cond_0

    .line 296
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v7

    goto :goto_0

    .line 286
    :cond_2
    :try_start_4
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CheckBluetoothAddress failed for car dock address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 294
    if-eqz v4, :cond_3

    .line 296
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_1
    move-object v3, v4

    .line 302
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :cond_4
    :goto_2
    const/4 v7, 0x0

    :try_start_6
    sput-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 289
    :catch_1
    move-exception v2

    .line 290
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_7
    const-string v7, "BluetoothService"

    const-string v8, "FileNotFoundException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 294
    if-eqz v3, :cond_4

    .line 296
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 297
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    goto :goto_2

    .line 291
    :catch_3
    move-exception v2

    .line 292
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_9
    const-string v7, "BluetoothService"

    const-string v8, "IOException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 294
    if-eqz v3, :cond_4

    .line 296
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 294
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_5
    if-eqz v3, :cond_5

    .line 296
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 294
    :cond_5
    :goto_6
    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 297
    :catch_4
    move-exception v7

    goto :goto_6

    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v0       #address:[B
    .restart local v1       #dockAddress:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v7

    goto :goto_1

    .line 294
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 291
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 289
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private readIncomingConnectionState()V
    .locals 12

    .prologue
    .line 2943
    iget-object v10, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v10

    .line 2944
    const/4 v2, 0x0

    .line 2946
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2947
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2948
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2950
    .local v1, file:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 2951
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2952
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 2953
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2954
    .local v8, value:[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v9, v8

    const/4 v11, 0x3

    if-ne v9, v11, :cond_0

    .line 2955
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2956
    .local v7, val1:Ljava/lang/Integer;
    new-instance v6, Landroid/util/Pair;

    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-direct {v6, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2957
    .local v6, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v9, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 2960
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7           #val1:Ljava/lang/Integer;
    .end local v8           #value:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 2961
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException: readIncomingConnectionState"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2965
    if-eqz v2, :cond_1

    .line 2967
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2973
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2974
    return-void

    .line 2965
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 2967
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_3
    move-object v2, v3

    .line 2972
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 2962
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2963
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: readIncomingConnectionState"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2965
    if-eqz v2, :cond_1

    .line 2967
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 2968
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_2

    .line 2965
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v2, :cond_4

    .line 2967
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 2965
    :cond_4
    :goto_6
    :try_start_9
    throw v9

    .line 2973
    :catchall_1
    move-exception v9

    :goto_7
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v9

    .line 2968
    :catch_3
    move-exception v11

    goto :goto_6

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :catch_4
    move-exception v9

    goto :goto_3

    .line 2973
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 2965
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 2962
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 2960
    :catch_6
    move-exception v0

    goto :goto_1
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 5
    .parameter "filter"

    .prologue
    .line 1908
    const-string v3, "[API] registerForAirplaneMode()"

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1909
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1910
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1912
    .local v0, airplaneModeRadios:Ljava/lang/String;
    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1915
    .local v2, toggleableRadios:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    .line 1917
    if-nez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    .line 1919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[API] registerForAirplaneMode(): mIsAirplaneSensitive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsAirplaneToggleable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1921
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_0

    .line 1922
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1924
    :cond_0
    return-void

    .line 1915
    :cond_1
    const-string v3, "bluetooth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0

    .line 1917
    :cond_2
    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1
.end method

.method private native removeDeviceNative(Ljava/lang/String;)Z
.end method

.method private native removeReservedServiceRecordsNative([I)Z
.end method

.method private native removeServiceRecordNative(I)Z
.end method

.method static scanModeToBluezString(I)Ljava/lang/String;
    .locals 2
    .parameter "mode"

    .prologue
    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] scanModeToBluezString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2207
    packed-switch p0, :pswitch_data_0

    .line 2215
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2209
    :pswitch_1
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 2211
    :pswitch_2
    const-string v0, "connectable"

    goto :goto_0

    .line 2213
    :pswitch_3
    const-string v0, "discoverable"

    goto :goto_0

    .line 2207
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native setLinkTimeoutNative(Ljava/lang/String;I)Z
.end method

.method private native setPairingConfirmationNative(Ljava/lang/String;ZI)Z
.end method

.method private native setPasskeyNative(Ljava/lang/String;II)Z
.end method

.method private native setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private setPropertyBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 824
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private setPropertyInteger(Ljava/lang/String;I)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 818
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 820
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 812
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 814
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private native setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z
.end method

.method private native setSSPDebugModeNative(Z)Z
.end method

.method private native setupNativeDataNative()Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private native startDiscoveryNative(I)Z
.end method

.method private native stopDiscoveryNative()Z
.end method

.method private native tearDownNativeDataNative()Z
.end method

.method private static toBondStateString(I)Ljava/lang/String;
    .locals 1
    .parameter "bondState"

    .prologue
    .line 786
    packed-switch p0, :pswitch_data_0

    .line 794
    const-string v0, "??????"

    :goto_0
    return-object v0

    .line 788
    :pswitch_0
    const-string/jumbo v0, "not bonded"

    goto :goto_0

    .line 790
    :pswitch_1
    const-string v0, "bonding"

    goto :goto_0

    .line 792
    :pswitch_2
    const-string v0, "bonded"

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private truncateIncomingConnectionFile()V
    .locals 5

    .prologue
    .line 2977
    const/4 v1, 0x0

    .line 2979
    .local v1, r:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/misc/bluetooth/incoming_connection.conf"

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2980
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .local v2, r:Ljava/io/RandomAccessFile;
    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 2986
    if-eqz v2, :cond_0

    .line 2988
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v1, v2

    .line 2994
    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return-void

    .line 2981
    :catch_0
    move-exception v0

    .line 2982
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2986
    if-eqz v1, :cond_1

    .line 2988
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2989
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 2983
    :catch_2
    move-exception v0

    .line 2984
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2986
    if-eqz v1, :cond_1

    .line 2988
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 2986
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_2

    .line 2988
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2986
    :cond_2
    :goto_5
    throw v3

    .line 2989
    :catch_3
    move-exception v4

    goto :goto_5

    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v3

    goto :goto_0

    .line 2986
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 2983
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 2981
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .locals 3
    .parameter "state"
    .parameter "prevState"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2887
    packed-switch p2, :pswitch_data_0

    .line 2901
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 2918
    :cond_0
    :goto_1
    return v0

    .line 2889
    :pswitch_0
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    goto :goto_0

    .line 2893
    :pswitch_1
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    goto :goto_0

    .line 2897
    :pswitch_2
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    goto :goto_0

    .line 2903
    :pswitch_3
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 2904
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_1

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eq v2, v0, :cond_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2907
    :pswitch_4
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 2908
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 2911
    :pswitch_5
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 2912
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_2

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    if-eq v2, v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2915
    :pswitch_6
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 2887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2901
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateProfileConnectionState(III)V
    .locals 10
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2779
    const/4 v2, 0x1

    .line 2780
    .local v2, numDev:I
    move v1, p2

    .line 2781
    .local v1, newHashState:I
    const/4 v4, 0x1

    .line 2793
    .local v4, update:Z
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2794
    .local v3, stateNumDev:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 2795
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2796
    .local v0, currHashState:I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2798
    if-ne p2, v0, :cond_2

    .line 2799
    add-int/lit8 v2, v2, 0x1

    .line 2818
    .end local v0           #currHashState:I
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 2819
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2822
    :cond_1
    return-void

    .line 2800
    .restart local v0       #currHashState:I
    :cond_2
    if-eq p2, v8, :cond_3

    if-ne p2, v7, :cond_4

    if-eq v0, v8, :cond_4

    .line 2803
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 2804
    :cond_4
    if-ne v2, v7, :cond_5

    if-ne p3, v0, :cond_5

    .line 2805
    const/4 v4, 0x1

    goto :goto_0

    .line 2806
    :cond_5
    if-le v2, v7, :cond_7

    if-ne p3, v0, :cond_7

    .line 2807
    add-int/lit8 v2, v2, -0x1

    .line 2809
    if-eq v0, v8, :cond_6

    if-ne v0, v7, :cond_0

    .line 2811
    :cond_6
    move v1, v0

    goto :goto_0

    .line 2814
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateSdpRecords()V
    .locals 6

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v2, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 621
    .local v0, R:Landroid/content/res/Resources;
    const v3, 0x111002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_0
    const v3, 0x1110028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_1
    invoke-direct {p0, v2}, Landroid/server/BluetoothService;->addReservedSdpRecords(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    const-wide/16 v3, 0x32

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 640
    :goto_0
    const v3, 0x111002a

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 642
    const/4 v3, 0x1

    const-string/jumbo v4, "nap"

    const-string/jumbo v5, "pan1"

    invoke-virtual {p0, v3, v4, v5}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 646
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/ParcelUuid;

    iput-object v3, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 653
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 654
    iget-object v4, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    aput-object v3, v4, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 638
    .end local v1           #i:I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 656
    .restart local v1       #i:I
    :cond_3
    monitor-exit p0

    return-void

    .line 616
    .end local v0           #R:Landroid/content/res/Resources;
    .end local v1           #i:I
    .end local v2           #uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private validateProfileConnectionState(I)Z
    .locals 2
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 2865
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized writeDockPin()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 307
    monitor-enter p0

    const/4 v1, 0x0

    .line 309
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/switch/dock/bt_pin"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 315
    .local v3, pin:I
    const-string v6, "%04d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    .line 316
    iget-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 323
    if-eqz v2, :cond_0

    .line 325
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v1, v2

    .line 332
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #pin:I
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_1
    monitor-exit p0

    return v4

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v4, "BluetoothService"

    const-string v6, "FileNotFoundException while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    if-eqz v1, :cond_1

    .line 325
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 331
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    :try_start_5
    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v5

    .line 332
    goto :goto_1

    .line 320
    :catch_1
    move-exception v0

    .line 321
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v4, "BluetoothService"

    const-string v6, "IOException while while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 323
    if-eqz v1, :cond_1

    .line 325
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 326
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 323
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v1, :cond_2

    .line 325
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 323
    :cond_2
    :goto_6
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 307
    :catchall_1
    move-exception v4

    :goto_7
    monitor-exit p0

    throw v4

    .line 326
    :catch_3
    move-exception v5

    goto :goto_6

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catch_4
    move-exception v5

    goto :goto_0

    .line 323
    .end local v3           #pin:I
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 320
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 318
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 307
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_7
.end method


# virtual methods
.method addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;
    .locals 6
    .parameter "address"
    .parameter "setTrust"

    .prologue
    .line 2621
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;Z)V

    .line 2623
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    .line 2625
    return-object v0
.end method

.method public declared-synchronized addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    .locals 14
    .parameter "serviceName"
    .parameter "uuid"
    .parameter "channel"
    .parameter "b"

    .prologue
    .line 1670
    monitor-enter p0

    const/4 v12, -0x1

    .line 1672
    .local v12, realChannel:I
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] addRfcommServiceRecord("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1673
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    const/4 v11, -0x1

    .line 1738
    :goto_0
    monitor-exit p0

    return v11

    .line 1676
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    move/from16 v0, p3

    if-ge v0, v1, :cond_2

    .line 1678
    :cond_1
    const/4 v11, -0x1

    goto :goto_0

    .line 1680
    :cond_2
    :try_start_1
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1681
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to register a reserved UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/4 v11, -0x1

    goto :goto_0

    .line 1685
    :cond_3
    const-string v1, "bluetooth_socket"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 1686
    .local v8, binder:Landroid/os/IBinder;
    if-eqz v8, :cond_4

    .line 1688
    invoke-static {v8}, Landroid/bluetooth/IBluetoothSocket$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 1691
    .local v13, socketService:Landroid/bluetooth/IBluetoothSocket;
    :try_start_2
    move/from16 v0, p3

    invoke-interface {v13, v0}, Landroid/bluetooth/IBluetoothSocket;->getRealServerChannel(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v12

    .line 1700
    const/4 v13, 0x0

    .line 1710
    :goto_1
    const/4 v1, -0x1

    if-ne v1, v12, :cond_5

    .line 1712
    :try_start_3
    const-string v1, "[API] addRfcommServiceRecord: getRealServerChannel() error!"

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1713
    move/from16 v12, p3

    .line 1719
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    int-to-short v7, v12

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/server/BluetoothService;->addRfcommServiceRecordNative(Ljava/lang/String;JJS)I

    move-result v11

    .line 1722
    .local v11, handle:I
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1723
    const/4 v1, -0x1

    if-ne v11, v1, :cond_6

    .line 1724
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 1693
    .end local v11           #handle:I
    :catch_0
    move-exception v10

    .line 1695
    .local v10, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "BluetoothService"

    const-string v2, ""

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1696
    const/4 v11, -0x1

    .line 1700
    const/4 v13, 0x0

    goto/16 :goto_0

    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    const/4 v13, 0x0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1670
    .end local v8           #binder:Landroid/os/IBinder;
    .end local v13           #socketService:Landroid/bluetooth/IBluetoothSocket;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1705
    .restart local v8       #binder:Landroid/os/IBinder;
    :cond_4
    :try_start_6
    const-string v1, "[API] addRfcommServiceRecord: Bluetooth Socket service is not available!"

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1706
    const/4 v13, 0x0

    .line 1707
    .restart local v13       #socketService:Landroid/bluetooth/IBluetoothSocket;
    const/4 v12, -0x1

    goto :goto_1

    .line 1717
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] addRfcommServiceRecord: Real channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1727
    .restart local v11       #handle:I
    :cond_6
    new-instance v9, Landroid/server/BluetoothService$ServiceRecordClient;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/server/BluetoothService$ServiceRecordClient;-><init>(Landroid/server/BluetoothService$1;)V

    .line 1728
    .local v9, client:Landroid/server/BluetoothService$ServiceRecordClient;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v9, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    .line 1729
    move-object/from16 v0, p4

    iput-object v0, v9, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    .line 1730
    new-instance v1, Landroid/server/BluetoothService$Reaper;

    iget v2, v9, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    const/16 v3, 0xa

    invoke-direct {v1, p0, v11, v2, v3}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;III)V

    iput-object v1, v9, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    .line 1731
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1733
    :try_start_7
    iget-object v1, v9, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1734
    :catch_1
    move-exception v10

    .line 1735
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_8
    const-string v1, "BluetoothService"

    const-string v2, ""

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1736
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method public allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 6
    .parameter "device"
    .parameter "allow"

    .prologue
    const/4 v2, 0x0

    .line 2413
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2416
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2427
    :goto_0
    return v2

    .line 2420
    :cond_0
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2421
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 2422
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingProfileConnect("

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

    goto :goto_0

    .line 2426
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingProfileConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2427
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, p2, v2}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z

    move-result v2

    goto :goto_0
.end method

.method allowIncomingTethering()Z
    .locals 2

    .prologue
    .line 2266
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2267
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->allowIncomingTethering()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized attemptAutoPair(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 717
    const-string v0, "0000"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    const/4 v0, 0x1

    .line 720
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelBondProcess(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 1181
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] cancelBondProcess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1182
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1198
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1186
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1190
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 1194
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->cancelDeviceCreationNative(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1198
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelDiscovery()Z
    .locals 3

    .prologue
    .line 1068
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] cancelDiscovery()"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1073
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->stopDiscoveryNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1068
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelPairingUserInput(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 1564
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] cancelPairingUserInput("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1565
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1587
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1569
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1572
    const/16 v2, 0xb

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1574
    const-string v2, "[err]the device is not in bonding state"

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1564
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1577
    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-virtual {v2, p1, v3, v4}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 1579
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1580
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1581
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 1582
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelUserInputNative("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "available, ignoring. Maybe the PasskeyAgent Request was already cancelled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "by the remote or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1587
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->cancelPairingUserInputNative(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z
    .locals 7
    .parameter "on"
    .parameter "callback"
    .parameter "binder"

    .prologue
    const/4 v3, 0x0

    .line 1821
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1825
    .local v1, pid:I
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1826
    if-eqz p1, :cond_2

    .line 1827
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 1837
    :try_start_0
    new-instance v4, Landroid/server/BluetoothService$Reaper;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v1, v5}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;II)V

    const/4 v5, 0x0

    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    :cond_1
    if-eqz p1, :cond_4

    .line 1846
    const/4 v2, 0x3

    .line 1851
    .local v2, type:I
    :goto_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v3, v2, p2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1852
    const/4 v3, 0x1

    .end local v2           #type:I
    :cond_2
    :goto_2
    return v3

    .line 1831
    :cond_3
    if-nez p1, :cond_0

    .line 1832
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1848
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const/4 v2, 0x4

    .restart local v2       #type:I
    goto :goto_1
.end method

.method declared-synchronized cleanNativeAfterShutoffBluetooth()V
    .locals 1

    .prologue
    .line 492
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 493
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cleanupAfterFinishDisable()V
    .locals 5

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v4}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 450
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 451
    .local v3, srHandle:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 448
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #srHandle:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 453
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 455
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 456
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 457
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 458
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 459
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 460
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    .line 462
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/server/BluetoothService;->mAllowUpdateProfileState:Z

    .line 465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 467
    .local v1, ident:J
    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 470
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    :goto_1
    monitor-exit p0

    return-void

    .line 470
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 468
    :catch_0
    move-exception v4

    .line 470
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method clearApplicationStateChangeTracker()V
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1861
    return-void
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 2475
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2478
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .parameter "device"
    .parameter "config"

    .prologue
    .line 2465
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2468
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectHeadset(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2563
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    .line 2573
    :cond_0
    :goto_0
    return v2

    .line 2565
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2566
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2567
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2568
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 2569
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2570
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    move v2, v3

    .line 2571
    goto :goto_0
.end method

.method public connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 2336
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2339
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 2340
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2341
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 2345
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2346
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native connectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 2286
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2289
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native connectPanDeviceNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public connectSink(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 2591
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 2603
    :goto_0
    return v2

    .line 2593
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2594
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_1

    .line 2595
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2596
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2597
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2598
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2599
    const/4 v2, 0x1

    goto :goto_0

    .line 2601
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no BluetoothDeviceProfileState for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized createBond(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 1122
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] createBond("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1123
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1132
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1125
    :cond_1
    const v1, 0xea60

    :try_start_1
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->createPairedDeviceNative(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    const/4 v0, 0x1

    goto :goto_0

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createBondOutOfBand(Ljava/lang/String;[B[B)Z
    .locals 2
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const/4 v0, 0x0

    .line 1137
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1139
    :cond_1
    const v1, 0xea60

    :try_start_1
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-virtual {p0, p1, p2, p3}, Landroid/server/BluetoothService;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    .line 1144
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1147
    const/4 v0, 0x1

    goto :goto_0

    .line 1137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native createChannelNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method native destroyChannelNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public disable()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized disable(Z)Z
    .locals 5
    .parameter "saveSetting"

    .prologue
    const/4 v1, 0x1

    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 399
    .local v0, adapterState:I
    packed-switch v0, :pswitch_data_0

    .line 405
    :pswitch_0
    const/4 v1, 0x0

    .line 409
    :goto_0
    :pswitch_1
    monitor-exit p0

    return v1

    .line 408
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    .end local v0           #adapterState:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method synchronized native declared-synchronized disableNative()I
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .parameter "device"
    .parameter "config"
    .parameter "id"

    .prologue
    .line 2485
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2488
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized disconnectDevices()V
    .locals 3

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 415
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 414
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 418
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 419
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 421
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public disconnectHeadset(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 2577
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 2587
    :cond_0
    :goto_0
    return v2

    .line 2579
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2580
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2581
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2582
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2583
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2584
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2585
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 2351
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2354
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 2355
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2356
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 2360
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2361
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native disconnectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 2309
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2312
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native disconnectPanDeviceNative(Ljava/lang/String;)Z
.end method

.method native disconnectPanServerDeviceNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public disconnectSink(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 2607
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 2617
    :cond_0
    :goto_0
    return v2

    .line 2609
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2610
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2611
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2612
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x34

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2613
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2614
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2615
    const/4 v2, 0x1

    goto :goto_0
.end method

.method synchronized native declared-synchronized discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1966
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "BluetoothService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 1993
    :goto_0
    return-void

    .line 1972
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAirplaneSensitive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAirplaneToggleable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDiscovering() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1981
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1983
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1986
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpKnownDevices(Ljava/io/PrintWriter;)V

    .line 1987
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpAclConnectedDevices(Ljava/io/PrintWriter;)V

    .line 1988
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpHeadsetService(Ljava/io/PrintWriter;)V

    .line 1989
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpInputDeviceProfile(Ljava/io/PrintWriter;)V

    .line 1990
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpPanProfile(Ljava/io/PrintWriter;)V

    .line 1991
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V

    .line 1992
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpProfileState(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public enable()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0, v0, v0}, Landroid/server/BluetoothService;->enable(ZZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(ZZ)Z
    .locals 4
    .parameter "saveSetting"
    .parameter "allowConnect"

    .prologue
    const/4 v0, 0x1

    .line 511
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 520
    :goto_0
    monitor-exit p0

    return v0

    .line 518
    :cond_0
    :try_start_1
    iput-boolean p2, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    .line 519
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synchronized native declared-synchronized enableNative()I
.end method

.method public enableNoAutoConnect()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, v0, v0}, Landroid/server/BluetoothService;->enable(ZZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    .locals 8
    .parameter "address"
    .parameter "uuid"
    .parameter "callback"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1374
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[API] fetchRemoteUuids("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1375
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    const-string v7, "Need BLUETOOTH permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 1418
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1378
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1382
    new-instance v3, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v3, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 1383
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    if-eqz p2, :cond_2

    iget-object v5, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1389
    :cond_2
    iget-object v5, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1392
    if-eqz p2, :cond_3

    .line 1393
    iget-object v5, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v6, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v6, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v5, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v2, v4

    .line 1395
    goto :goto_0

    .line 1402
    :cond_4
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1403
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1404
    if-eqz p2, :cond_6

    .line 1405
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1410
    .local v2, ret:Z
    :goto_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    if-eqz p2, :cond_5

    .line 1412
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    :cond_5
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1416
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1417
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1770

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1374
    .end local v0           #message:Landroid/os/Message;
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #ret:Z
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1407
    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #service:Landroid/server/BluetoothService$RemoteService;
    :cond_6
    :try_start_2
    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .restart local v2       #ret:Z
    goto :goto_1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothService;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    .line 362
    return-void

    .line 360
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    throw v0
.end method

.method declared-synchronized finishDisable()V
    .locals 8

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 429
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xa

    const/4 v7, 0x3

    invoke-virtual {v5, v0, v6, v7}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 435
    .restart local v0       #address:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->removeProfileState(Ljava/lang/String;)V

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 428
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getAdapterConnectionState()I
    .locals 1

    .prologue
    .line 2761
    iget v0, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    return v0
.end method

.method native getAdapterPathNative()Ljava/lang/String;
.end method

.method getAdapterProperties()Landroid/server/BluetoothAdapterProperties;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    return-object v0
.end method

.method synchronized native declared-synchronized getAdapterPropertiesNative()[Ljava/lang/Object;
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 941
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v0, "Address"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "objectPath"

    .prologue
    const/4 v2, 0x0

    .line 2219
    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v3}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 2220
    .local v0, adapterObjectPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2221
    :cond_0
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  or deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :goto_0
    return-object v2

    .line 2225
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2226
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  is not a prefix of deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bluetoothd crashed ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2231
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2232
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_3

    const/16 v2, 0x5f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2234
    :cond_3
    const-string v3, "BluetoothService"

    const-string v4, "getAddressFromObjectPath: Address being returned is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getApplicationStateChangeCallbacks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1864
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "address"

    .prologue
    .line 2746
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getAuthorizationAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2747
    .local v0, data:Ljava/lang/Integer;
    return-object v0
.end method

.method public getBluetoothState()I
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    return v0
.end method

.method getBluetoothStateInternal()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothAdapterState()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .locals 3
    .parameter "address"

    .prologue
    .line 1236
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] getBondState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1239
    const/high16 v0, -0x8000

    .line 1241
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native getChannelApplicationNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native getChannelFdNative(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public getConnectedHealthDevices()Ljava/util/List;
    .locals 3
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
    .line 2534
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2537
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothHealthProfileHandler;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectedInputDevices()Ljava/util/List;
    .locals 3
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
    .line 2373
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2375
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothInputProfileHandler;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectedPanDevices()Ljava/util/List;
    .locals 3
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
    .line 2294
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2296
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;
    .locals 2
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method getDeviceProperties()Landroid/server/BluetoothDeviceProperties;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    return-object v0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    .line 1033
    const-string v1, "[API] getDiscoverableTimeout()"

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1034
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v1, "DiscoverableTimeout"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, timeout:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1037
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1039
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method declared-synchronized getDockPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 2526
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2529
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
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
    .line 2543
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2546
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIncomingState(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2935
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2936
    invoke-direct {p0}, Landroid/server/BluetoothService;->createIncomingConnectionStateFile()V

    .line 2937
    invoke-direct {p0}, Landroid/server/BluetoothService;->readIncomingConnectionState()V

    .line 2939
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 2366
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2368
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 2389
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2391
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
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
    .line 2381
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2383
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getKnownDevices()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2637
    const/4 v0, 0x0

    .line 2638
    .local v0, bonds:[Ljava/lang/String;
    const-string v2, "Devices"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2639
    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2640
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2642
    :cond_0
    return-object v0
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "device"
    .parameter "config"

    .prologue
    .line 2494
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2497
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native getMainChannelNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 947
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v0, "Name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNumberOfApplicationStateChangeTrackers()I
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "address"

    .prologue
    .line 2239
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v1}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 2240
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2241
    const-string v1, "BluetoothService"

    const-string v2, "Error: Object Path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    const/4 v1, 0x0

    .line 2245
    :goto_0
    return-object v1

    .line 2244
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2245
    goto :goto_0
.end method

.method public getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 2279
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2281
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPanDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
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
    .line 2302
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2304
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .parameter "profile"

    .prologue
    .line 2765
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    iget-object v1, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2768
    .local v0, state:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 2770
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "checkState"

    .prologue
    .line 911
    if-eqz p2, :cond_0

    .line 912
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 917
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    const/4 v0, 0x0

    .line 1004
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Alias"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteClass(Ljava/lang/String;)I
    .locals 5
    .parameter "address"

    .prologue
    const/high16 v1, -0x100

    .line 1319
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1320
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    :cond_0
    :goto_0
    return v1

    .line 1323
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Class"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "address"

    .prologue
    .line 782
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 1262
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1265
    :goto_0
    return-object v1

    .line 1264
    :cond_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1265
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 983
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    const/4 v0, 0x0

    .line 987
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Name"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .locals 5
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v1, -0x1

    .line 1432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] getRemoteServiceChannel("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1433
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return v1

    .line 1436
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1437
    const/high16 v1, -0x8000

    goto :goto_0

    .line 1440
    :cond_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceProperties;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1441
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1445
    :cond_3
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1446
    .local v0, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1447
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 3
    .parameter "address"

    .prologue
    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] getRemoteUuids("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1341
    const/4 v0, 0x0

    .line 1343
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getSSPDebugMode()Z
    .locals 3

    .prologue
    .line 1768
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] isSSPDebugModeOn() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mSSPDebugMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1769
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mSSPDebugMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScanMode()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1043
    const-string v4, "[API] getScanMode()"

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1044
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1046
    const/16 v4, 0x14

    .line 1054
    :goto_0
    return v4

    .line 1050
    :cond_0
    const-string v4, "Pairable"

    invoke-virtual {p0, v4, v7}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, pairProp:Ljava/lang/String;
    const-string v4, "Discoverable"

    invoke-virtual {p0, v4, v7}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, discProp:Ljava/lang/String;
    if-nez v2, :cond_1

    move v3, v1

    .line 1053
    .local v3, pairable:Z
    :goto_1
    if-nez v0, :cond_2

    .line 1054
    .local v1, discoverable:Z
    :goto_2
    invoke-static {v3, v1}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v4

    goto :goto_0

    .line 1052
    .end local v1           #discoverable:Z
    .end local v3           #pairable:Z
    :cond_1
    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 1053
    .restart local v3       #pairable:Z
    :cond_2
    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2
.end method

.method public getTrustState(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 1295
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1296
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_0
    :goto_0
    return v1

    .line 1300
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Trusted"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1304
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 6
    .parameter "address"

    .prologue
    .line 1347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[API] getUuidFromCache("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1348
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v5, "UUIDs"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 1360
    :cond_0
    return-object v2

    .line 1351
    :cond_1
    const/4 v1, 0x0

    .line 1353
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1354
    array-length v4, v1

    new-array v2, v4, [Landroid/os/ParcelUuid;

    .line 1356
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1357
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[API] getUuidFromCache="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    .line 953
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v1, "UUIDs"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 956
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method handleInputDevicePropertyChange(Ljava/lang/String;Z)V
    .locals 2
    .parameter "address"
    .parameter "connected"

    .prologue
    .line 2437
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2438
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    .line 2439
    monitor-exit v1

    .line 2440
    return-void

    .line 2439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .parameter "device"
    .parameter "state"
    .parameter "role"

    .prologue
    .line 2327
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2328
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 2329
    monitor-exit v1

    .line 2330
    return-void

    .line 2329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V
    .locals 2
    .parameter "device"
    .parameter "iface"
    .parameter "state"
    .parameter "role"

    .prologue
    .line 2320
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2321
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 2322
    monitor-exit v1

    .line 2323
    return-void

    .line 2322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized initAfterA2dpRegistration()V
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v0}, Landroid/server/BluetoothEventLoop;->getProfileProxy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initAfterRegistration()V
    .locals 3

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 341
    new-instance v0, Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v0, v1, p0, v2}, Landroid/server/BluetoothAdapterStateMachine;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    .line 342
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->start()V

    .line 343
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothEventLoop()Landroid/server/BluetoothEventLoop;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initBluetoothAfterTurningOn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 678
    const-string v2, "Discoverable"

    invoke-virtual {p0, v2, v4}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, discoverable:Ljava/lang/String;
    const-string v2, "DiscoverableTimeout"

    invoke-virtual {p0, v2, v4}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, timeout:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 681
    const-string v2, "BluetoothService"

    const-string v3, "Null DiscoverableTimeout property"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v1, "1"

    .line 685
    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    const-string v2, "Discoverable"

    invoke-direct {p0, v2, v4}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    .line 688
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v2}, Landroid/server/BluetoothBondState;->initBondState()V

    .line 689
    invoke-direct {p0}, Landroid/server/BluetoothService;->initProfileState()V

    .line 690
    invoke-direct {p0}, Landroid/server/BluetoothService;->getProfileProxy()V

    .line 691
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/server/BluetoothService;->mAllowUpdateProfileState:Z

    .line 692
    return-void
.end method

.method final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1928
    const-string v2, "[API] isAirplaneModeOn()"

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1929
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isApplicationStateChangeTrackerEmpty()Z
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isBluetoothDock(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    .line 1254
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] isBluetoothDock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1255
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_service_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1258
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock_bluetooth_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1254
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isDiscovering()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1077
    const-string v2, "[API] isDiscovering() : "

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1078
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v2, "Discovering"

    invoke-virtual {p0, v2, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, discoveringProperty:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1085
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method declared-synchronized isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 725
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isRemoteDeviceInCache(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 929
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->isInCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTetheringOn()Z
    .locals 3

    .prologue
    .line 2259
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2261
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->isTetheringOn()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public listBonds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1226
    const-string v0, "[API] listBonds()"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method lookupInputDevicesMatchingStates([I)Ljava/util/List;
    .locals 2
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
    .line 2431
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2432
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized makeServiceChannelCallbacks(Ljava/lang/String;)V
    .locals 7
    .parameter "address"

    .prologue
    .line 1945
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[API] makeServiceChannelCallbacks("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1946
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1947
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1948
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$RemoteService;

    .line 1949
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v4, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1950
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up failed UUID channel lookup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    .local v0, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v0, :cond_1

    .line 1955
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1959
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1945
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1956
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v3       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1962
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "address"
    .parameter "rejected"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2713
    monitor-enter p0

    .line 2714
    :try_start_0
    iget-boolean v4, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    if-nez v4, :cond_1

    .line 2715
    const-string v3, "BluetoothService"

    const-string v4, "Not allowing a2dp connection because of temporary BT on state."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit p0

    .line 2738
    :cond_0
    :goto_0
    return v2

    .line 2718
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2720
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2721
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2722
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2723
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_3

    .line 2724
    iget-object v2, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_2

    .line 2726
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2727
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 2728
    sget-object v2, Landroid/bluetooth/BluetoothDeviceProfileState;->OBJ_CONNECT_HFP_OUTGOING:Ljava/lang/Integer;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2729
    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v0, v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_2
    :goto_1
    move v2, v3

    .line 2736
    goto :goto_0

    .line 2718
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2733
    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :cond_3
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2734
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method public notifyIncomingConnection(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "address"
    .parameter "rejected"

    .prologue
    const/4 v2, 0x0

    .line 2685
    monitor-enter p0

    .line 2686
    :try_start_0
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    if-nez v3, :cond_1

    .line 2687
    const-string v3, "BluetoothService"

    const-string v4, "Not allowing incoming connection because of temporary BT on state."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    monitor-exit p0

    .line 2709
    :cond_0
    :goto_0
    return v2

    .line 2690
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2691
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2692
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2693
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2694
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_3

    .line 2695
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 2697
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2698
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2699
    sget-object v2, Landroid/bluetooth/BluetoothDeviceProfileState;->OBJ_CONNECT_A2DP_OUTGOING:Ljava/lang/Integer;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2700
    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2707
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2690
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2704
    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :cond_3
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2705
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method notifyIncomingHidConnection(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 2552
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2553
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v1, :cond_0

    .line 2554
    const/4 v2, 0x0

    .line 2559
    :goto_0
    return v2

    .line 2556
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2557
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2558
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2559
    const/4 v2, 0x1

    goto :goto_0
.end method

.method declared-synchronized onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 729
    monitor-enter p0

    if-nez p2, :cond_1

    .line 730
    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 731
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 734
    :cond_1
    if-ne p2, v1, :cond_2

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 736
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 737
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 738
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_0

    .line 742
    :cond_3
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 743
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "devicePath"
    .parameter "channelPath"
    .parameter "exists"

    .prologue
    .line 2511
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2512
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2514
    monitor-exit v1

    .line 2515
    return-void

    .line 2514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHealthDeviceChannelConnectionError(II)V
    .locals 2
    .parameter "channelCode"
    .parameter "newState"

    .prologue
    .line 2519
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2520
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelConnectionError(II)V

    .line 2522
    monitor-exit v1

    .line 2523
    return-void

    .line 2522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "devicePath"
    .parameter "channelPath"

    .prologue
    .line 2503
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2504
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    monitor-exit v1

    .line 2507
    return-void

    .line 2506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized prepareBluetooth()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 546
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothService;->setupNativeDataNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 559
    :goto_0
    monitor-exit p0

    return v0

    .line 549
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 551
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    const-wide/16 v0, 0x32

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 558
    :goto_1
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothService;->updateSdpRecords()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 559
    const/4 v0, 0x1

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    goto :goto_1

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readOutOfBandData()[B
    .locals 3

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1177
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->readAdapterOutOfBandDataNative()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 3
    .parameter "config"
    .parameter "callback"

    .prologue
    .line 2447
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2450
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method native releaseChannelFdNative(Ljava/lang/String;)Z
.end method

.method public declared-synchronized removeBond(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 1202
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] removeBond("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1203
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1215
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1207
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1210
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 1211
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v0, :cond_0

    .line 1212
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1213
    const/4 v1, 0x1

    goto :goto_0

    .line 1202
    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeBondInternal(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1221
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    .line 1222
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeDeviceNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeProfileState(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 2629
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2630
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v0, :cond_0

    .line 2634
    :goto_0
    return-void

    .line 2632
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->doQuit()V

    .line 2633
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeServiceRecord(I)V
    .locals 4
    .parameter "handle"

    .prologue
    .line 1742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] removeServiceRecord("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1743
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1750
    :goto_0
    return-void

    .line 1747
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1748
    .local v0, message:Landroid/os/Message;
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1749
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method runBluetooth()V
    .locals 5

    .prologue
    .line 700
    invoke-direct {p0}, Landroid/server/BluetoothService;->autoConnect()V

    .line 703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 705
    .local v1, ident:J
    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 711
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "BluetoothService"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 709
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public declared-synchronized sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4
    .parameter "device"
    .parameter "profile"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 2827
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/server/BluetoothService;->mAllowUpdateProfileState:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2862
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2829
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendConnectionStateChange:profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prevState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2831
    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2837
    :cond_2
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendConnectionStateChange: prevState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2827
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2842
    :cond_3
    :try_start_2
    invoke-direct {p0, p2, p3, p4}, Landroid/server/BluetoothService;->updateProfileConnectionState(III)V

    .line 2844
    invoke-direct {p0, p3, p4}, Landroid/server/BluetoothService;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2845
    iput p3, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 2847
    if-nez p3, :cond_4

    .line 2848
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 2851
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2852
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2853
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2855
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2857
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2858
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2859
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTION_STATE_CHANGE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public sendProfileStateMessage(II)V
    .locals 2
    .parameter "profile"
    .parameter "cmd"

    .prologue
    .line 2751
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2752
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2753
    if-nez p1, :cond_1

    .line 2754
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2758
    :cond_0
    :goto_0
    return-void

    .line 2755
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2756
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method declared-synchronized sendUuidIntent(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 1935
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 1936
    .local v1, uuid:[Landroid/os/ParcelUuid;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1937
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] sendUuidIntent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1938
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1939
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1940
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1941
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    monitor-exit p0

    return-void

    .line 1935
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uuid:[Landroid/os/ParcelUuid;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setA2dpService(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "a2dpService"

    .prologue
    .line 2742
    iput-object p1, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 2743
    return-void
.end method

.method native setAuthorizationNative(Ljava/lang/String;ZI)Z
.end method

.method public setBluetoothTethering(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2272
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2274
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->setBluetoothTethering(Z)V

    .line 2275
    monitor-exit v1

    .line 2276
    return-void

    .line 2275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method declared-synchronized setBondState(Ljava/lang/String;I)Z
    .locals 1
    .parameter "address"
    .parameter "state"

    .prologue
    .line 1245
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBondState(Ljava/lang/String;II)Z
    .locals 2
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 1249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z
    .locals 4
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    .line 1152
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1164
    :goto_0
    monitor-exit p0

    return v1

    .line 1156
    :cond_0
    :try_start_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1159
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting out of band data for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    const/4 v1, 0x1

    goto :goto_0

    .line 1152
    .end local v0           #value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDiscoverableTimeout(I)Z
    .locals 3
    .parameter "timeout"

    .prologue
    .line 839
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v0, "DiscoverableTimeout"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 2396
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2399
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLinkTimeout(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "num_slots"

    .prologue
    .line 2249
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2250
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/server/BluetoothService;->setLinkTimeoutNative(Ljava/lang/String;I)Z

    move-result v1

    .line 2252
    .local v1, result:Z
    if-nez v1, :cond_0

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Link Timeout to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slots failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_0
    return-void
.end method

.method public declared-synchronized setName(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    if-nez p1, :cond_0

    .line 802
    const/4 v0, 0x0

    .line 804
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "Name"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setPairable()V
    .locals 3

    .prologue
    .line 898
    monitor-enter p0

    :try_start_0
    const-string v1, "Pairable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, pairableString:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 900
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "null pairableString"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 903
    :cond_1
    :try_start_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    const-string v1, "Pairable"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 898
    .end local v0           #pairableString:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPairingConfirmation(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "address"
    .parameter "confirm"

    .prologue
    const/4 v1, 0x0

    .line 1511
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] setPairingConfirmation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1512
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1529
    :goto_0
    monitor-exit p0

    return v1

    .line 1515
    :cond_0
    const/16 v2, 0xb

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1517
    const-string v2, "[err]the device is not in bonding state"

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1511
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1521
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1522
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1523
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 1524
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1529
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPairingConfirmationNative(Ljava/lang/String;ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized setPasskey(Ljava/lang/String;I)Z
    .locals 5
    .parameter "address"
    .parameter "passkey"

    .prologue
    const/4 v1, 0x0

    .line 1486
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] setPasskey("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1487
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1507
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1490
    :cond_1
    const/16 v2, 0xb

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1492
    const-string v2, "[err]the device is not in bonding state"

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1486
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1496
    :cond_2
    if-ltz p2, :cond_0

    const v2, 0xf423f

    if-gt p2, v2, :cond_0

    :try_start_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1499
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1500
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1501
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 1502
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1507
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPasskeyNative(Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized setPin(Ljava/lang/String;[B)Z
    .locals 7
    .parameter "address"
    .parameter "pin"

    .prologue
    const/4 v3, 0x0

    .line 1452
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[API] setPin("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_1

    move-object v4, p2

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1453
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 1482
    :cond_0
    :goto_1
    monitor-exit p0

    return v3

    .line 1452
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1456
    :cond_2
    const/16 v4, 0xb

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1458
    const-string v4, "[err]the device is not in bonding state"

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1452
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1462
    :cond_3
    if-eqz p2, :cond_0

    :try_start_2
    array-length v4, p2

    if-lez v4, :cond_0

    array-length v4, p2

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1466
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1467
    iget-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v4}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1468
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_4

    .line 1469
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPin("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") called but no native data available, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or by bluez.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1477
    :cond_4
    :try_start_3
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF8"

    invoke-direct {v1, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1482
    .local v1, pinString:Ljava/lang/String;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Landroid/server/BluetoothService;->setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_1

    .line 1478
    .end local v1           #pinString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1479
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v4, "BluetoothService"

    const-string v5, "UTF8 not supported?!?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "address"
    .parameter "alias"

    .prologue
    .line 1015
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    const/4 v0, 0x0

    .line 1020
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alias"

    invoke-direct {p0, v0, v1, p2}, Landroid/server/BluetoothService;->setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 933
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothDeviceProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method public declared-synchronized setRemoteOutOfBandData(Ljava/lang/String;)Z
    .locals 8
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 1533
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    const-string v7, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 1560
    :goto_0
    monitor-exit p0

    return v4

    .line 1536
    :cond_0
    const/16 v5, 0xb

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 1538
    const-string v5, "[err]the device is not in bonding state"

    invoke-static {v5}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1533
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1541
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1542
    iget-object v5, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v5}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1543
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 1544
    const-string v5, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRemoteOobData("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") called but no native data available, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or by bluez.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1550
    :cond_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1552
    .local v3, val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    if-nez v3, :cond_3

    .line 1554
    const/16 v4, 0x10

    new-array v1, v4, [B

    .line 1555
    .local v1, hash:[B
    const/16 v4, 0x10

    new-array v2, v4, [B

    .line 1560
    .local v2, randomizer:[B
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/server/BluetoothService;->setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z

    move-result v4

    goto :goto_0

    .line 1557
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    :cond_3
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    .line 1558
    .restart local v1       #hash:[B
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v2       #randomizer:[B
    goto :goto_1
.end method

.method public declared-synchronized setSSPDebugMode(Z)Z
    .locals 3
    .parameter "SSPDebugMode"

    .prologue
    const/4 v0, 0x0

    .line 1774
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] setSSPDebugModeOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1775
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1784
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1777
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/server/BluetoothService;->mSSPDebugMode:Z

    if-eq v1, p1, :cond_2

    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->setSSPDebugModeNative(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1779
    :cond_2
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mSSPDebugMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1780
    const/4 v0, 0x1

    goto :goto_0

    .line 1774
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanMode(II)Z
    .locals 8
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 845
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v6, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    packed-switch p1, :pswitch_data_0

    .line 872
    :pswitch_0
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested invalid scan mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    const/4 v4, 0x0

    .line 878
    :goto_0
    monitor-exit p0

    return v4

    .line 852
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Landroid/server/BluetoothService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 853
    const/4 v1, 0x0

    .line 854
    .local v1, pairable:Z
    const/4 v0, 0x0

    .line 876
    .local v0, discoverable:Z
    :goto_1
    const-string v4, "Discoverable"

    invoke-direct {p0, v4, v0}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 877
    const-string v4, "Pairable"

    invoke-direct {p0, v4, v1}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 878
    const/4 v4, 0x1

    goto :goto_0

    .line 857
    .end local v0           #discoverable:Z
    .end local v1           #pairable:Z
    :pswitch_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Landroid/server/BluetoothService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 858
    const/4 v1, 0x1

    .line 859
    .restart local v1       #pairable:Z
    const/4 v0, 0x0

    .line 860
    .restart local v0       #discoverable:Z
    goto :goto_1

    .line 862
    .end local v0           #discoverable:Z
    .end local v1           #pairable:Z
    :pswitch_3
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Landroid/server/BluetoothService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 863
    const/4 v1, 0x1

    .line 864
    .restart local v1       #pairable:Z
    const/4 v0, 0x1

    .line 865
    .restart local v0       #discoverable:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-int/lit16 v6, p2, 0x3e8

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 866
    .local v2, trigerTime:J
    if-lez p2, :cond_0

    .line 867
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v6, p0, Landroid/server/BluetoothService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 869
    :cond_0
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT Discoverable for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 845
    .end local v0           #discoverable:Z
    .end local v1           #pairable:Z
    .end local v2           #trigerTime:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setTrust(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1274
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] setTrust("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1275
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1276
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1281
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trusted"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v1, v2, v0}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized shutoffBluetooth()V
    .locals 3

    .prologue
    .line 478
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeReservedServiceRecordsNative([I)Z

    .line 479
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "nap"

    const-string/jumbo v2, "pan1"

    invoke-virtual {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 481
    invoke-direct {p0}, Landroid/server/BluetoothService;->tearDownNativeDataNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscovery(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 1058
    monitor-enter p0

    :try_start_0
    const-string v0, "[API] startDiscovery()"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1064
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->startDiscoveryNative(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized switchConnectable(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 890
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 891
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 892
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 893
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v1, 0x36

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .parameter "config"

    .prologue
    .line 2455
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2458
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native unregisterHealthApplicationNative(Ljava/lang/String;)Z
.end method

.method declared-synchronized updateBluetoothState(Ljava/lang/String;)V
    .locals 3
    .parameter "uuids"

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 666
    .local v0, adapterUuids:[Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :cond_0
    monitor-exit p0

    return-void

    .line 664
    .end local v0           #adapterUuids:[Landroid/os/ParcelUuid;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateDeviceServiceChannelCache(Ljava/lang/String;)V
    .locals 13
    .parameter "address"

    .prologue
    .line 1591
    const-string v10, "BluetoothService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateDeviceServiceChannelCache("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 1597
    .local v3, deviceUuids:[Landroid/os/ParcelUuid;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1599
    .local v0, applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    .line 1600
    :try_start_0
    iget-object v10, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/server/BluetoothService$RemoteService;

    .line 1601
    .local v7, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v10, v7, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1602
    iget-object v10, v7, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1605
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1620
    .local v9, uuidToChannelMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 1621
    .local v8, uuid:Landroid/os/ParcelUuid;
    invoke-static {v3, v8}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1622
    invoke-direct {p0, p1, v8}, Landroid/server/BluetoothService;->getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v2

    .line 1623
    .local v2, channel:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    const-string v10, "BluetoothService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\tuuid(application): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1628
    .end local v2           #channel:I
    .end local v8           #uuid:Landroid/os/ParcelUuid;
    :cond_3
    monitor-enter p0

    .line 1630
    :try_start_2
    iget-object v10, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1631
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1632
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/server/BluetoothService$RemoteService;

    .line 1633
    .restart local v7       #service:Landroid/server/BluetoothService$RemoteService;
    iget-object v10, v7, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1634
    iget-object v10, v7, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1635
    iget-object v10, v7, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1637
    .restart local v2       #channel:I
    const-string v10, "BluetoothService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making callback for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with result "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v10, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IBluetoothCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1640
    .local v1, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v1, :cond_5

    .line 1642
    :try_start_3
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1646
    :cond_5
    :goto_3
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1653
    .end local v1           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v2           #channel:I
    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v7           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_1
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 1643
    .restart local v1       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v2       #channel:I
    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v7       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_0
    move-exception v4

    .local v4, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v10, "BluetoothService"

    const-string v11, ""

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1652
    .end local v1           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v2           #channel:I
    .end local v4           #e:Landroid/os/RemoteException;
    .end local v7           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_6
    iget-object v10, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v10, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1654
    return-void
.end method

.method updateRemoteDevicePropertiesCache(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 937
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    .line 938
    return-void
.end method

.method public writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 11
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2998
    .local p2, data:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v8

    .line 2999
    :try_start_0
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3001
    invoke-direct {p0}, Landroid/server/BluetoothService;->truncateIncomingConnectionFile()V

    .line 3002
    const/4 v3, 0x0

    .line 3003
    .local v3, out:Ljava/io/BufferedWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3005
    .local v6, value:Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3006
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3007
    .local v0, devAddress:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3008
    .local v5, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3011
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 3016
    .end local v0           #devAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 3017
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3021
    if-eqz v3, :cond_0

    .line 3023
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3029
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3030
    return-void

    .line 3015
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_1
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3021
    if-eqz v4, :cond_2

    .line 3023
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_3
    move-object v3, v4

    .line 3028
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 3018
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 3019
    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3021
    if-eqz v3, :cond_0

    .line 3023
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 3024
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_2

    .line 3021
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_3

    .line 3023
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 3021
    :cond_3
    :goto_6
    :try_start_b
    throw v7

    .line 3029
    .end local v3           #out:Ljava/io/BufferedWriter;
    .end local v6           #value:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v7

    .line 3024
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v6       #value:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v9

    goto :goto_6

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v7

    goto :goto_3

    .line 3021
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 3018
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 3016
    :catch_6
    move-exception v1

    goto :goto_1
.end method
