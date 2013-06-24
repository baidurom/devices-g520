.class public Lcom/android/phone/BluetoothHeadsetService;
.super Landroid/app/Service;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CONNECT_HEADSET_DELAYED:I = 0x1

.field private static final DBG:Z = true

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PREF_LAST_HEADSET:Ljava/lang/String; = "lastHeadsetAddress"

.field private static final PREF_NAME:Ljava/lang/String; = null

.field private static final RFCOMM_CONNECTED:I = 0x1

.field private static final RFCOMM_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Bluetooth HSHFP"

.field private static sHasStarted:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAg:Landroid/bluetooth/BluetoothAudioGateway;

.field private mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;

.field private mHandler:Landroid/os/Handler;

.field private final mIncomingConnectionHandler:Landroid/os/Handler;

.field private mIsAgStarted:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;",
            ">;"
        }
    .end annotation
.end field

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothHeadsetService;->PREF_NAME:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIsAgStarted:Z

    .line 175
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$1;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    .line 356
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$2;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$3;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    .line 751
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$4;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$4;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/phone/BluetoothHeadsetService;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->rejectIncomingConnection(Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHeadsetService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->broadcastHfpState(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHeadsetService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIsAgStarted:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/phone/BluetoothHeadsetService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mIsAgStarted:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/phone/BluetoothHeadsetService;->logWarn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method private adjustOtherHeadsetPriorities(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "connectedDevice"

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    .line 644
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 646
    const/16 v2, 0x64

    invoke-direct {p0, v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 649
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private broadcastHfpState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1150
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 1152
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1153
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1154
    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method private declared-synchronized getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 147
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 148
    .local v2, state:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 153
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    invoke-virtual {v1, p1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 665
    :goto_0
    return v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Bluetooth HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while getting priority for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private declared-synchronized getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .parameter "device"

    .prologue
    const/16 v8, 0x3e8

    .line 669
    monitor-enter p0

    const/4 v3, 0x0

    .line 670
    .local v3, remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :try_start_0
    const-string v6, "[API] getSdpRecordsAndConnect"

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 671
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 745
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 677
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    move-object v3, v0

    if-eqz v3, :cond_2

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 680
    :cond_2
    const-string v6, "getSdpRecordsAndConnect failed"

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->logWarn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 669
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 684
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    .line 685
    .local v5, uuids:[Landroid/os/ParcelUuid;
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 686
    .local v2, localUuids:[Landroid/os/ParcelUuid;
    const/4 v4, 0x0

    .line 687
    .local v4, type:I
    if-eqz v5, :cond_9

    .line 688
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v5, v6}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v2, v6}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 690
    const-string v6, "SDP UUID: TYPE_HANDSFREE"

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 691
    const/4 v4, 0x2

    .line 692
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v6, v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$602(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 693
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v6}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 696
    .local v1, channel:I
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 697
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 700
    :cond_4
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    const/16 v7, 0x4e20

    invoke-virtual {v6, p1, v7, v4}, Landroid/bluetooth/BluetoothAudioGateway;->waitForAsyncConnect(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v6

    if-lez v6, :cond_5

    .line 710
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-ge v6, v8, :cond_0

    .line 711
    const/16 v6, 0x3e8

    invoke-direct {p0, p1, v6}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 706
    :cond_5
    const-string v6, "[ERR] waitForAsyncConnect failed"

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 707
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 714
    .end local v1           #channel:I
    :cond_6
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v5, v6}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {v2, v6}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 716
    const-string v6, "SDP UUID: TYPE_HEADSET"

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 717
    const/4 v4, 0x1

    .line 718
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v6, v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$602(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 719
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v6}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 722
    .restart local v1       #channel:I
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 723
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 726
    :cond_7
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    const/16 v7, 0x4e20

    invoke-virtual {v6, p1, v7, v4}, Landroid/bluetooth/BluetoothAudioGateway;->waitForAsyncConnect(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v6

    if-lez v6, :cond_8

    .line 736
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-ge v6, v8, :cond_0

    .line 737
    const/16 v6, 0x3e8

    invoke-direct {p0, p1, v6}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 732
    :cond_8
    const-string v6, "[ERR] waitForAsyncConnect failed"

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 733
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_2

    .line 742
    .end local v1           #channel:I
    :cond_9
    const-string v6, "SDP UUID: TYPE_UNKNOWN"

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 743
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v6, v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$602(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 744
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1138
    const-string v0, "Bluetooth HSHFP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void
.end method

.method private static logInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1141
    const-string v0, "Bluetooth HSHFP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return-void
.end method

.method private static logWarn(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1144
    const-string v0, "Bluetooth HSHFP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][HFG]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void
.end method

.method private rejectIncomingConnection(Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAudioGateway;->disconnect()V

    .line 354
    return-void
.end method

.method private setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Bluetooth HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting priority for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized setState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v5, 0x2

    .line 608
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    .line 609
    .local v2, prevState:I
    if-eq p2, v2, :cond_3

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Headset  state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 612
    if-ne v2, v5, :cond_0

    .line 614
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->disconnectHeadset()V

    .line 616
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 619
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 620
    if-nez p2, :cond_1

    .line 622
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$602(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 625
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3, p2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$002(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 627
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 628
    if-ne p2, v5, :cond_2

    .line 630
    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v3}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 631
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->adjustOtherHeadsetPriorities(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4, p2, v2}, Landroid/bluetooth/IBluetooth;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 640
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 636
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Bluetooth HSHFP"

    const-string v4, "sendConnectionStateChange: exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 608
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #prevState:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 89
    const-string v2, "[API] onCreate"

    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 90
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 92
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/BluetoothHeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;

    .line 93
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 95
    new-instance v2, Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v3, v4}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    .line 97
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/BluetoothHeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 108
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 109
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bluetooth service not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 112
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1124
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1125
    const-string v1, "Stopping BluetoothHeadsetService"

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 1126
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothHeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1127
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 1128
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    .line 1129
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mIsAgStarted:Z

    .line 1130
    sput-boolean v2, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    .line 1131
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1132
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 1133
    invoke-direct {p0, v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1135
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    .line 158
    const-string v0, "[API] onStart"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 160
    const-string v0, "Stopping BluetoothHeadsetService: device does not have BT"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->logWarn(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService;->stopSelf()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    if-nez v0, :cond_0

    .line 164
    const-string v0, "Starting BluetoothHeadsetService"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    .line 167
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mIsAgStarted:Z

    .line 168
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    .line 170
    :cond_2
    sput-boolean v2, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    goto :goto_0
.end method
