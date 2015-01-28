.class public Landroid/net/UsbDataStateTracker;
.super Ljava/lang/Object;
.source "UsbDataStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UsbDataStateTracker$1;,
        Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;,
        Landroid/net/UsbDataStateTracker$UdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_DNS1:Ljava/lang/String; = "192.168.0.1"

.field private static final DEFAULT_DNS2:Ljava/lang/String; = "8.8.8.8"

.field private static final TAG:Ljava/lang/String; = "UsbDataStateTracker"

.field private static final USB_IFACE_ADDR:Ljava/lang/String; = "192.168.0.100"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = true

.field private static mUsbDataStateReceiver:Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

.field private mDefaultRouteSet:Z

.field private mHandler:Landroid/os/Handler;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMassStorageActive:Z

.field private mMessenger:Landroid/os/Messenger;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field protected mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mUsbConnected:Z

.field private mUsbDataState:Lcom/android/internal/telephony/Phone$DataState;

.field protected mUserDataEnabled:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/INetworkManagementService;)V
    .locals 3
    .parameter "netType"
    .parameter "tag"
    .parameter "netd"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v2, p0, Landroid/net/UsbDataStateTracker;->mTeardownRequested:Z

    .line 84
    iput-boolean v2, p0, Landroid/net/UsbDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 85
    iput-boolean v2, p0, Landroid/net/UsbDataStateTracker;->mDefaultRouteSet:Z

    .line 101
    iput-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mUserDataEnabled:Z

    .line 102
    iput-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mPolicyDataEnabled:Z

    .line 116
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, "internet"

    invoke-direct {v0, p1, v2, p2, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 117
    iput-object p3, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    .line 118
    const-string/jumbo v0, "usbinternet"

    iput-object v0, p0, Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;

    .line 120
    return-void
.end method

.method static synthetic access$1000(Landroid/net/UsbDataStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/UsbDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/UsbDataStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/UsbDataStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/net/UsbDataStateTracker;->onHandleReadyForUsbInternet()V

    return-void
.end method

.method static synthetic access$1302(Landroid/net/UsbDataStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$1402(Landroid/net/UsbDataStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/UsbDataStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/UsbDataStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/UsbDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/UsbDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object p1
.end method

.method static synthetic access$500(Landroid/net/UsbDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/net/UsbDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/UsbDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/UsbDataStateTracker;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/UsbDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/UsbDataStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/UsbDataStateTracker;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$902(Landroid/net/UsbDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method private checkNullmCm()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 325
    :cond_0
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 14
    .parameter "enabled"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 402
    const-string v11, "UsbDataStateTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "configureUsbIface("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    .line 405
    .local v2, defaultDnsServers:[Ljava/lang/String;
    const-string v11, "192.168.0.1"

    aput-object v11, v2, v9

    .line 406
    const-string v11, "8.8.8.8"

    aput-object v11, v2, v10

    .line 408
    iget-object v11, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070019

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Landroid/net/UsbDataStateTracker;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 411
    new-array v6, v9, [Ljava/lang/String;

    .line 413
    .local v6, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v11}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 418
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v8, :cond_2

    aget-object v5, v1, v4

    .line 419
    .local v5, iface:Ljava/lang/String;
    invoke-direct {p0, v5}, Landroid/net/UsbDataStateTracker;->isUsb(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 420
    const/4 v7, 0x0

    .line 422
    .local v7, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v11, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v7

    .line 423
    if-eqz v7, :cond_0

    .line 424
    const-string v11, "192.168.0.100"

    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 425
    .local v0, addr:Ljava/net/InetAddress;
    new-instance v11, Landroid/net/LinkAddress;

    const/16 v12, 0x18

    invoke-direct {v11, v0, v12}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v7, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 426
    if-eqz p1, :cond_1

    .line 427
    invoke-virtual {v7}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 431
    :goto_1
    const-string/jumbo v11, "running"

    invoke-virtual {v7, v11}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 432
    iget-object v11, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5, v7}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 434
    iget-object v11, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v12, "rndis0"

    invoke-interface {v11, v12, v2}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V

    .line 435
    iget-object v11, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v11}, Landroid/os/INetworkManagementService;->cfgUsbInternet()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 418
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v7           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 414
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #iface:Ljava/lang/String;
    .end local v8           #len$:I
    :catch_0
    move-exception v3

    .line 415
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "UsbDataStateTracker"

    const-string v11, "Error listing Interfaces"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v3           #e:Ljava/lang/Exception;
    :goto_3
    return v9

    .line 429
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #iface:Ljava/lang/String;
    .restart local v7       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v8       #len$:I
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 437
    .end local v0           #addr:Ljava/net/InetAddress;
    :catch_1
    move-exception v3

    .line 438
    .local v3, e:Landroid/os/RemoteException;
    const-string v11, "UsbDataStateTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error configuring interface "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 439
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 440
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "UsbDataStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iface:Ljava/lang/String;
    .end local v7           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_2
    move v9, v10

    .line 447
    goto :goto_3
.end method

.method private getPhoneService(Z)V
    .locals 1
    .parameter "forceRefresh"

    .prologue
    .line 577
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 578
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UsbDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 580
    :cond_1
    return-void
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 5
    .parameter "iface"

    .prologue
    .line 451
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 452
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 454
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 451
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onHandleReadyForUsbInternet()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 459
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 460
    .local v1, mDefaultDnsServers:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "192.168.0.1"

    aput-object v3, v1, v2

    .line 461
    const-string v2, "168.95.1.1"

    aput-object v2, v1, v4

    .line 463
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 464
    invoke-direct {p0, v4}, Landroid/net/UsbDataStateTracker;->configureUsbIface(Z)Z

    .line 468
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/UsbDataStateTracker;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v1}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "UsbDataStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopUsbInternet err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v3, 0x1

    .line 337
    const-string v4, "UsbDataStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDetailed state, old ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and new state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-eq p1, v4, :cond_1

    .line 340
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    move v2, v3

    .line 341
    .local v2, wasConnecting:Z
    :goto_0
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 349
    move-object p2, v0

    .line 350
    :cond_0
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v4, p0, Landroid/net/UsbDataStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 352
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 354
    .end local v0           #lastReason:Ljava/lang/String;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #wasConnecting:Z
    :cond_1
    return-void

    .line 340
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "s"

    .prologue
    .line 186
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    .line 193
    :goto_0
    return-object v0

    .line 188
    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 190
    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 193
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method


# virtual methods
.method public defaultRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 384
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mDefaultRouteSet:Z

    .line 385
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 604
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/UsbDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 597
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/UsbDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Landroid/net/UsbDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 396
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 397
    return-void
.end method

.method public reconnect()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 493
    const-string v2, "UsbDataStateTracker"

    const-string/jumbo v3, "reconnect"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, retValue:Z
    invoke-virtual {p0, v4}, Landroid/net/UsbDataStateTracker;->setTeardownRequested(Z)V

    .line 496
    iget-object v2, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 497
    .local v1, wifimgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 499
    invoke-direct {p0}, Landroid/net/UsbDataStateTracker;->checkNullmCm()V

    .line 500
    iget-object v2, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 501
    iget-object v2, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 503
    return v0
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 373
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 568
    const-string v1, "UsbDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPolicyDataEnable(enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 570
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 571
    const v2, 0x42020

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 572
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mPolicyDataEnabled:Z

    .line 574
    :cond_0
    return-void

    .line 571
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 6
    .parameter "turnOn"

    .prologue
    const/4 v3, 0x0

    .line 533
    invoke-direct {p0, v3}, Landroid/net/UsbDataStateTracker;->getPhoneService(Z)V

    .line 538
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 539
    iget-object v2, p0, Landroid/net/UsbDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 540
    const-string v2, "UsbDataStateTracker"

    const-string v4, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    const-string v4, "UsbDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not set radio power to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_3

    const-string/jumbo v2, "on"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 552
    :goto_2
    return v2

    .line 545
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/UsbDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/UsbDataStateTracker;->getPhoneService(Z)V

    .line 538
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .parameter "isRequested"

    .prologue
    .line 380
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mTeardownRequested:Z

    .line 381
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 557
    const-string v1, "UsbDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUserDataEnable: E enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 559
    .local v0, channel:Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 560
    const v2, 0x4201d

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 561
    iput-boolean p1, p0, Landroid/net/UsbDataStateTracker;->mUserDataEnabled:Z

    .line 563
    :cond_0
    const-string v1, "UsbDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUserDataEnable: X enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 560
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    .line 129
    iput-object p2, p0, Landroid/net/UsbDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    .line 132
    new-instance v1, Landroid/net/UsbDataStateTracker$UdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/net/UsbDataStateTracker$UdstHandler;-><init>(Landroid/os/Looper;Landroid/net/UsbDataStateTracker;)V

    iput-object v1, p0, Landroid/net/UsbDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 133
    sget-object v1, Landroid/net/UsbDataStateTracker;->mUsbDataStateReceiver:Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;-><init>(Landroid/net/UsbDataStateTracker;Landroid/net/UsbDataStateTracker$1;)V

    sput-object v1, Landroid/net/UsbDataStateTracker;->mUsbDataStateReceiver:Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.net.conn.READY_FOR_USBINTERNET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Landroid/net/UsbDataStateTracker;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/net/UsbDataStateTracker;->mUsbDataStateReceiver:Landroid/net/UsbDataStateTracker$UsbDataStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, p0, Landroid/net/UsbDataStateTracker;->mUsbDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 147
    return-void
.end method

.method public teardown()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 513
    invoke-virtual {p0, v2}, Landroid/net/UsbDataStateTracker;->setTeardownRequested(Z)V

    .line 514
    const-string v0, "UsbDataStateTracker"

    const-string/jumbo v1, "teardown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {p0}, Landroid/net/UsbDataStateTracker;->checkNullmCm()V

    .line 517
    iget-object v0, p0, Landroid/net/UsbDataStateTracker;->mCm:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 524
    return v2
.end method
