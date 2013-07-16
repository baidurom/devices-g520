.class public Lcom/mediatek/wfd/WfdManager;
.super Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;
.source "WfdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;,
        Lcom/mediatek/wfd/WfdManager$WfdServiceConnection;
    }
.end annotation


# static fields
.field public static final ACTION_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "com.mediatek.wfd.ORIENTATION_LANDSCAPE"

.field public static final ACTION_PICK_WFD_MIRACAST_PEER:Ljava/lang/String; = "com.mediatek.wfd.PICK_WFD_MIRACAST_PEER"

.field static final TAG:Ljava/lang/String; = "WfdManager"

.field private static mConnected:Z


# instance fields
.field connectAgainMAC:Ljava/lang/String;

.field private mConnectedDevice:Lcom/mediatek/common/externaldisplay/ExternalDevice;

.field private mContext:Landroid/content/Context;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEnablingStatus:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;

.field private mWfdService:Lcom/mediatek/common/wfd/IWfdService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;-><init>()V

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    .line 31
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    .line 32
    new-instance v1, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;-><init>(Lcom/mediatek/wfd/WfdManager;)V

    iput-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mReceiver:Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceList:Ljava/util/List;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceStateList:Ljava/util/List;

    .line 70
    const-string v1, "WfdManager"

    const-string v2, "constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    .line 72
    const-string v1, "wfd_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/wfd/IWfdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/wfd/IWfdService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    .line 73
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v1, :cond_0

    .line 74
    const-string v1, "WfdManager"

    const-string v2, "cannot find system service --> wfd_service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "mWfdService is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.wfd.enabled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.wfd.disabled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.wfd.startscan"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.wfd.stopscan"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.wfd.devicefound"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.wfd.connected"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.wfd.disconnected"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.wfd.deviceschanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mReceiver:Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/wfd/WfdManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.wfd.managercreated"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v1}, Lcom/mediatek/common/wfd/IWfdService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/wfd/WfdManager;)Lcom/mediatek/common/wfd/IWfdService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/wfd/WfdManager;Lcom/mediatek/common/wfd/IWfdService;)Lcom/mediatek/common/wfd/IWfdService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    return-object p1
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-boolean p0, Lcom/mediatek/wfd/WfdManager;->mConnected:Z

    return p0
.end method

.method static synthetic access$102(Lcom/mediatek/wfd/WfdManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/wfd/WfdManager;Landroid/content/Intent;)[Lcom/mediatek/common/externaldisplay/ExternalDevice;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdManager;->extractInfoFromIntent(Landroid/content/Intent;)[Lcom/mediatek/common/externaldisplay/ExternalDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wfd/WfdManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/WfdManager;->notifyEnablingStatusChange(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/wfd/WfdManager;Landroid/content/Intent;I)Lcom/mediatek/common/externaldisplay/ExternalDevice;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfd/WfdManager;->extractDeviceFromIntent(Landroid/content/Intent;I)Lcom/mediatek/common/externaldisplay/ExternalDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/wfd/WfdManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    return-object v0
.end method

.method private extractDeviceFromIntent(Landroid/content/Intent;I)Lcom/mediatek/common/externaldisplay/ExternalDevice;
    .locals 10
    .parameter "intent"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 573
    const-string v5, "device"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 574
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v0, :cond_1

    move-object v2, v4

    .line 609
    :cond_0
    :goto_0
    return-object v2

    .line 578
    :cond_1
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    if-nez v5, :cond_2

    .line 579
    new-instance v5, Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v5}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>()V

    iput-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    .line 581
    :try_start_0
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget-object v6, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/mediatek/common/wfd/IWfdService;->getDevicesWfdDeviceType(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_2
    :goto_1
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    if-nez v5, :cond_3

    .line 587
    const-string v5, "WfdManager"

    const-string v6, "wfd is null, should not happen"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_3
    if-eq v9, p2, :cond_4

    if-ne v8, p2, :cond_8

    .line 592
    :cond_4
    new-instance v2, Lcom/mediatek/wfd/ExtP2pDevice;

    invoke-direct {v2, v0, p2}, Lcom/mediatek/wfd/ExtP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 593
    .local v2, extDevice:Lcom/mediatek/wfd/ExtP2pDevice;
    const-string v5, "WfdManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractDeviceFromIntent(): extDevice= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    if-ne v9, p2, :cond_7

    .line 595
    iput-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mConnectedDevice:Lcom/mediatek/common/externaldisplay/ExternalDevice;

    .line 600
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v4, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 601
    iget-object v4, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 602
    iget-object v4, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceStateList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 582
    .end local v2           #extDevice:Lcom/mediatek/wfd/ExtP2pDevice;
    .end local v3           #i:I
    :catch_0
    move-exception v1

    .line 583
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 596
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #extDevice:Lcom/mediatek/wfd/ExtP2pDevice;
    :cond_7
    if-ne v8, p2, :cond_5

    .line 597
    iput-object v4, p0, Lcom/mediatek/wfd/WfdManager;->mConnectedDevice:Lcom/mediatek/common/externaldisplay/ExternalDevice;

    goto :goto_2

    .line 607
    .end local v2           #extDevice:Lcom/mediatek/wfd/ExtP2pDevice;
    :cond_8
    new-instance v2, Lcom/mediatek/wfd/ExtP2pDevice;

    invoke-direct {v2, v0}, Lcom/mediatek/wfd/ExtP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .restart local v2       #extDevice:Lcom/mediatek/wfd/ExtP2pDevice;
    goto :goto_0
.end method

.method private extractInfoFromIntent(Landroid/content/Intent;)[Lcom/mediatek/common/externaldisplay/ExternalDevice;
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 613
    const-string v5, "deviceArray"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 614
    .local v3, parcels:[Landroid/os/Parcelable;
    const-string v5, "stateArray"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 615
    .local v4, stateArray:[I
    if-eqz v3, :cond_0

    if-nez v4, :cond_2

    .line 616
    :cond_0
    const-string v5, "WfdManager"

    const-string v6, "extractInfoFromIntent, empty extra"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1
    :goto_0
    return-object v1

    .line 619
    :cond_2
    array-length v5, v3

    new-array v0, v5, [Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 620
    .local v0, deviceArray:[Landroid/net/wifi/p2p/WifiP2pDevice;
    array-length v5, v0

    array-length v6, v4

    if-ne v5, v6, :cond_3

    array-length v5, v0

    if-nez v5, :cond_4

    .line 621
    :cond_3
    const-string v5, "WfdManager"

    const-string v6, "extractInfoFromIntent, length mismatch"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    :cond_4
    array-length v5, v0

    new-array v1, v5, [Lcom/mediatek/wfd/ExtP2pDevice;

    .line 625
    .local v1, extDeviceArray:[Lcom/mediatek/wfd/ExtP2pDevice;
    iget-object v5, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 626
    iget-object v5, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceStateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 627
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 628
    iget-object v6, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceList:Ljava/util/List;

    aget-object v5, v3, v2

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v5, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceStateList:Ljava/util/List;

    aget v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v6, Lcom/mediatek/wfd/ExtP2pDevice;

    aget-object v5, v3, v2

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    aget v7, v4, v2

    invoke-direct {v6, v5, v7}, Lcom/mediatek/wfd/ExtP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    aput-object v6, v1, v2

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static from(Landroid/content/Context;)Lcom/mediatek/wfd/WfdManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    const-string v0, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "wfd_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfd/WfdManager;

    return-object v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 254
    const-string v0, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {p0}, Lcom/mediatek/wfd/WfdManager;->from(Landroid/content/Context;)Lcom/mediatek/wfd/WfdManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    const-string v0, "WfdManager"

    const-string v1, "isConnected(): can\'t find wfd_service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/mediatek/wfd/WfdManager;->mConnected:Z

    goto :goto_0
.end method

.method private notifyEnablingStatusChange(I)V
    .locals 3
    .parameter "statusCode"

    .prologue
    .line 636
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStatusChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStatusChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnEnableStatusChangeListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnEnableStatusChangeListener;->onEnableStatusChanged(Lcom/mediatek/common/externaldisplay/ExternalDevice;I)V

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelScan()I
    .locals 4

    .prologue
    .line 301
    const-string v1, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v1, :cond_0

    .line 303
    const/4 v1, -0x1

    .line 309
    :goto_0
    return v1

    .line 305
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v1}, Lcom/mediatek/common/wfd/IWfdService;->cancelScan()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 309
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 195
    const-string v1, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v1, :cond_0

    .line 197
    const/4 v1, -0x1

    .line 210
    :goto_0
    return v1

    .line 199
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    sget-boolean v2, Lcom/mediatek/wfd/WfdManager;->mConnected:Z

    if-ne v1, v2, :cond_1

    .line 200
    const-string v1, "WfdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTED then CONNECTING, to disconnect(), mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/wfd/WfdManager;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", next one mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v1}, Lcom/mediatek/common/wfd/IWfdService;->disconnect()I

    .line 202
    invoke-virtual {p1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfd/WfdManager;->connectAgainMAC:Ljava/lang/String;

    .line 210
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/wfd/WfdManager;->connectAgainMAC:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-virtual {p1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/common/wfd/IWfdService;->connect(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 344
    const-string v0, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mReceiver:Lcom/mediatek/wfd/WfdManager$MyBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    return-void
.end method

.method public disable(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x2

    .line 142
    const-string v3, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    if-ne v3, v5, :cond_2

    .line 144
    :cond_0
    const/4 v1, 0x0

    .line 160
    :cond_1
    :goto_0
    return v1

    .line 145
    :cond_2
    iget v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    move v1, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    iget v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v3}, Lcom/mediatek/common/wfd/IWfdService;->disable()I

    move-result v1

    .line 150
    .local v1, ret:I
    if-nez v1, :cond_1

    .line 151
    const/4 v3, 0x2

    iput v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    .line 152
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/mediatek/wfd/WfdManager;->notifyEnablingStatusChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v2

    .line 157
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    move v1, v2

    .line 160
    goto :goto_0
.end method

.method public disconnect()I
    .locals 4

    .prologue
    .line 227
    const-string v1, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v1, :cond_0

    .line 229
    const/4 v1, -0x1

    .line 235
    :goto_0
    return v1

    .line 231
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v1}, Lcom/mediatek/common/wfd/IWfdService;->disconnect()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 235
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 215
    const-string v1, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v1, :cond_0

    .line 217
    const/4 v1, -0x1

    .line 223
    :goto_0
    return v1

    .line 219
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v1}, Lcom/mediatek/common/wfd/IWfdService;->disconnect()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public emGetBitrateConrol()I
    .locals 4

    .prologue
    .line 450
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wfd_em_bitrate_control"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 451
    .local v0, emControl:I
    const-string v1, "WfdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emGetBitrateConrol(): emControl= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". This value is used for last time testing. It needs emSetBitrateConrol() again for this time to avoid mis-match."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v0
.end method

.method public emGetConfiguration()I
    .locals 4

    .prologue
    .line 432
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wfd_em_configuration"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 433
    .local v0, emConfig:I
    const-string v1, "WfdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emGetConfiguration(): emConfig= 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". This value is used for last time testing. It needs emSetConfiguration() again for this time to avoid mis-match."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return v0
.end method

.method public emSetBitrateConrol(I)V
    .locals 5
    .parameter "emControl"

    .prologue
    .line 440
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wfd_em_bitrate_control"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 441
    .local v1, result:Z
    const-string v2, "WfdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emSetBitrateConrol(): emControl= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v2, p1}, Lcom/mediatek/common/wfd/IWfdService;->emSetBitrateConrol(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public emSetConfiguration(I)V
    .locals 5
    .parameter "emConfig"

    .prologue
    .line 422
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wfd_em_configuration"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 423
    .local v1, result:Z
    const-string v2, "WfdManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emSetConfiguration(): emConfig= 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v2, p1}, Lcom/mediatek/common/wfd/IWfdService;->emSetConfiguration(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enable(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
    .locals 7
    .parameter "device"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v2, -0x1

    .line 120
    const-string v3, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    if-ne v3, v5, :cond_2

    .line 122
    :cond_0
    const/4 v1, 0x0

    .line 138
    :cond_1
    :goto_0
    return v1

    .line 123
    :cond_2
    iget v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    if-ne v3, v6, :cond_3

    move v1, v2

    .line 124
    goto :goto_0

    .line 125
    :cond_3
    iget v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    if-nez v3, :cond_4

    .line 127
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v3}, Lcom/mediatek/common/wfd/IWfdService;->enable()I

    move-result v1

    .line 128
    .local v1, ret:I
    if-nez v1, :cond_1

    .line 129
    const/4 v3, 0x3

    iput v3, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    .line 130
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/mediatek/wfd/WfdManager;->notifyEnablingStatusChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v2

    .line 135
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    move v1, v2

    .line 138
    goto :goto_0
.end method

.method public getConnectedDevice()Lcom/mediatek/common/externaldisplay/ExternalDevice;
    .locals 3

    .prologue
    .line 324
    const-string v0, "WfdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectedDevice(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mConnectedDevice:Lcom/mediatek/common/externaldisplay/ExternalDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/mediatek/wfd/WfdManager;->mConnectedDevice:Lcom/mediatek/common/externaldisplay/ExternalDevice;

    return-object v0
.end method

.method public getEnableStatus(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 115
    const-string v0, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v0, p0, Lcom/mediatek/wfd/WfdManager;->mEnablingStatus:I

    return v0
.end method

.method public getScannedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/externaldisplay/ExternalDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const-string v2, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v1, outDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/externaldisplay/ExternalDevice;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 317
    new-instance v4, Lcom/mediatek/wfd/ExtP2pDevice;

    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceStateList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v2, v3}, Lcom/mediatek/wfd/ExtP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-object v1
.end method

.method public getScannedDevicesNum()I
    .locals 2

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 644
    .local v0, total:I
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 648
    :cond_0
    return v0
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 337
    const-string v0, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public interrupt(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 240
    const-string v0, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoConnectEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    const-string v0, "WfdManager"

    const-string v1, "isAutoConnectEnabled(): FORCE to disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wfd_auto_connect_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    return v2
.end method

.method public isAutoScanEnabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 349
    iget-object v3, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wfd_auto_scan_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 350
    .local v2, enable:I
    const-string v3, "WfdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAutoScanEnabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-ne v6, v2, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 359
    .local v0, bEnable:Z
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v3, v0}, Lcom/mediatek/common/wfd/IWfdService;->setAutoScan(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_1
    return v0

    .line 355
    .end local v0           #bEnable:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #bEnable:Z
    goto :goto_0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    .line 264
    const-string v1, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v1}, Lcom/mediatek/common/wfd/IWfdService;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 270
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 3

    .prologue
    .line 106
    const-string v0, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 275
    const-string v2, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v2, :cond_0

    .line 283
    :goto_0
    return v1

    .line 279
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v2}, Lcom/mediatek/common/wfd/IWfdService;->isScanning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isSupported(I)Z
    .locals 3
    .parameter "operation"

    .prologue
    .line 330
    const-string v0, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public restore(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 247
    const-string v0, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public scan()I
    .locals 4

    .prologue
    .line 288
    const-string v1, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v1, :cond_0

    .line 290
    const/4 v1, -0x1

    .line 296
    :goto_0
    return v1

    .line 292
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    const/16 v2, 0xc8

    invoke-interface {v1, v2}, Lcom/mediatek/common/wfd/IWfdService;->scan(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 296
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoConnectStatus(Z)I
    .locals 3
    .parameter "enabled"

    .prologue
    .line 416
    const-string v0, "WfdManager"

    const-string v1, "setAutoConnectStatus(): FORCE to disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wfd_auto_connect_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoScanStatus(Z)I
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 367
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wfd_auto_scan_on"

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 368
    .local v1, result:Z
    const-string v2, "WfdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAutoScanStatus(): enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-nez p1, :cond_0

    .line 373
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v2}, Lcom/mediatek/common/wfd/IWfdService;->cancelNotificationOnStatusbarDetected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_1
    if-ne v3, v1, :cond_2

    .line 381
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v2, p1}, Lcom/mediatek/common/wfd/IWfdService;->setAutoScan(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    :goto_2
    return v3

    .end local v1           #result:Z
    :cond_1
    move v2, v4

    .line 367
    goto :goto_0

    .line 374
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 382
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 383
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    move v3, v4

    .line 387
    goto :goto_2
.end method

.method public setWpsMethod(I)I
    .locals 4
    .parameter "method"

    .prologue
    .line 165
    const-string v1, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v1, :cond_0

    .line 167
    const/4 v1, -0x1

    .line 173
    :goto_0
    return v1

    .line 169
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/wfd/IWfdService;->setWpsMethod(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public testWfdStartRtsp()I
    .locals 4

    .prologue
    .line 457
    const-string v1, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v1, :cond_0

    .line 459
    const/4 v1, -0x1

    .line 465
    :goto_0
    return v1

    .line 461
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v1}, Lcom/mediatek/common/wfd/IWfdService;->testWfdStartRtsp()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public testWfdStopRtsp()I
    .locals 4

    .prologue
    .line 469
    const-string v1, "WfdManager"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    if-nez v1, :cond_0

    .line 471
    const/4 v1, -0x1

    .line 477
    :goto_0
    return v1

    .line 473
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfd/WfdManager;->mWfdService:Lcom/mediatek/common/wfd/IWfdService;

    invoke-interface {v1}, Lcom/mediatek/common/wfd/IWfdService;->testWfdStartRtsp()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 477
    const/4 v1, 0x0

    goto :goto_0
.end method
