.class Lcom/android/internal/telephony/cat/BipManager;
.super Ljava/lang/Object;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;,
        Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;,
        Lcom/android/internal/telephony/cat/BipManager$SendDataThread;
    }
.end annotation


# static fields
.field private static final CONN_MGR_TIMEOUT:I = 0x7530

.field private static instance1:Lcom/android/internal/telephony/cat/BipManager;

.field private static instance2:Lcom/android/internal/telephony/cat/BipManager;


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

.field mBufferSize:I

.field private mChannel:Lcom/android/internal/telephony/cat/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field private mHandler:Lcom/android/internal/telephony/cat/CatService;

.field mLinkMode:I

.field mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field mPassword:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance1:Lcom/android/internal/telephony/cat/BipManager;

    .line 77
    sput-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance2:Lcom/android/internal/telephony/cat/BipManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cat/CatService;)V
    .locals 4
    .parameter "context"
    .parameter "phone"
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 80
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 82
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    .line 83
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 84
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 86
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 87
    iput v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mBufferSize:I

    .line 88
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 89
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 90
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 91
    iput v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mLinkMode:I

    .line 92
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mAutoReconnected:Z

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    .line 98
    iput v3, p0, Lcom/android/internal/telephony/cat/BipManager;->NETWORK_TYPE:I

    .line 100
    iput v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 101
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 104
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 706
    new-instance v1, Lcom/android/internal/telephony/cat/BipManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipManager$1;-><init>(Lcom/android/internal/telephony/cat/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    const-string v1, "[BIP]"

    const-string v2, "Construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 113
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "Fail to construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 119
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, connFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cat/BipManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipManager;->requestRouteToHost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipManager;->establishLink()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .parameter "nwInfo"
    .parameter "exState"

    .prologue
    const/4 v3, 0x0

    .line 462
    if-nez p1, :cond_0

    move v2, v3

    .line 476
    :goto_0
    return v2

    .line 466
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 467
    .local v1, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 468
    .local v0, state:Landroid/net/NetworkInfo$State;
    const-string v4, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network type is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v2, "MOBILE"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 473
    const/4 v2, 0x1

    goto :goto_0

    .line 468
    :cond_1
    const-string v2, "WIFI"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 476
    goto :goto_0
.end method

.method private establishLink()I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x7

    .line 480
    const/4 v8, 0x0

    .line 481
    .local v8, ret:I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v0, v0, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 482
    const-string v0, "[BIP]"

    const-string v1, "BM-establishLink: establish a TCP link"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Lcom/android/internal/telephony/cat/UdpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v8

    .line 494
    if-nez v8, :cond_0

    .line 495
    const/4 v8, 0x3

    .line 496
    iput v10, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 518
    :goto_0
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-establishLink: ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return v8

    .line 498
    :cond_0
    iput v9, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v0, v0, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 502
    const-string v0, "[BIP]"

    const-string v1, "BM-establishLink: establish a UDP link"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v0, Lcom/android/internal/telephony/cat/UdpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v8

    .line 507
    if-nez v8, :cond_2

    .line 508
    iput v10, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 510
    :cond_2
    iput v9, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 513
    :cond_3
    const-string v0, "[BIP]"

    const-string v1, "BM-establishLink: unsupported channel type"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/4 v8, 0x4

    .line 515
    iput v9, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0
.end method

.method private getDataConnectionFromSetting()I
    .locals 4

    .prologue
    .line 145
    const/4 v0, -0x1

    .line 154
    .local v0, currentDataConnectionSimId:I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_setting"

    const/4 v3, -0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 159
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default Data Setting value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cat/CatService;I)Lcom/android/internal/telephony/cat/BipManager;
    .locals 3
    .parameter "context"
    .parameter "phone"
    .parameter "handler"
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 127
    if-nez p3, :cond_1

    sget-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance1:Lcom/android/internal/telephony/cat/BipManager;

    if-nez v0, :cond_1

    .line 128
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/android/internal/telephony/cat/BipManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cat/CatService;)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance1:Lcom/android/internal/telephony/cat/BipManager;

    .line 135
    :cond_0
    :goto_0
    if-nez p3, :cond_2

    .line 136
    sget-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance1:Lcom/android/internal/telephony/cat/BipManager;

    .line 141
    :goto_1
    return-object v0

    .line 130
    :cond_1
    if-ne p3, v2, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance2:Lcom/android/internal/telephony/cat/BipManager;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/android/internal/telephony/cat/BipManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cat/CatService;)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance2:Lcom/android/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 137
    :cond_2
    if-ne p3, v2, :cond_3

    .line 138
    sget-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance2:Lcom/android/internal/telephony/cat/BipManager;

    goto :goto_1

    .line 141
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 444
    const-string v3, "[BIP]"

    const-string/jumbo v4, "requestRouteToHost"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, addressBytes:[B
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v3, :cond_0

    .line 447
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, addr:I
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v3, v2

    .line 458
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .end local v0           #addr:I
    :goto_0
    return v2

    .line 449
    :cond_0
    const-string v3, "[BIP]"

    const-string/jumbo v4, "mDataDestinationAddress is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "apn"
    .parameter "user"
    .parameter "pwd"

    .prologue
    .line 523
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    if-nez p1, :cond_0

    .line 525
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: No apn parameters"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_0
    return-void

    .line 529
    :cond_0
    const/4 v13, 0x0

    .line 530
    .local v13, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 531
    .local v12, numeric:Ljava/lang/String;
    const/4 v9, 0x0

    .line 532
    .local v9, mcc:Ljava/lang/String;
    const/4 v10, 0x0

    .line 533
    .local v10, mnc:Ljava/lang/String;
    const-string/jumbo v7, "supl"

    .line 555
    .local v7, apnType:Ljava/lang/String;
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: URI use normal single card"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 557
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 560
    if-nez v13, :cond_1

    .line 561
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: Invalid uri"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 565
    const/4 v8, 0x0

    .line 566
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 567
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 568
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-setApnParams: mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name = \'BIP\' and numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, selection:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 586
    if-eqz v8, :cond_2

    .line 587
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 588
    .local v14, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    const-string v2, "BIP"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v1, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string/jumbo v1, "type"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string/jumbo v1, "mcc"

    invoke-virtual {v14, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string/jumbo v1, "mnc"

    invoke-virtual {v14, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string/jumbo v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 600
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: insert one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 602
    .local v11, newRow:Landroid/net/Uri;
    if-eqz v11, :cond_3

    .line 603
    const-string v1, "[BIP]"

    const-string v2, "insert a new record into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .end local v11           #newRow:Landroid/net/Uri;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 617
    .end local v4           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_2
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: exit"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 605
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #newRow:Landroid/net/Uri;
    .restart local v14       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "[BIP]"

    const-string v2, "Fail to insert apn params into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 608
    .end local v11           #newRow:Landroid/net/Uri;
    :cond_4
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: update one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v14, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 4
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 311
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    if-nez v0, :cond_2

    .line 315
    :cond_0
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: channel has already been closed"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/16 v0, 0x8

    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 338
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 340
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    .line 342
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: exit"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void

    .line 317
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    iget v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    if-eq v0, v1, :cond_3

    .line 318
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: channel id is wrong"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x7

    iput v0, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/Channel;->closeChannel()I

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 323
    iput v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 324
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: stop data connection"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v1, "enableSUPL"

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 621
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 5
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 423
    const/4 v0, 0x0

    .line 425
    .local v0, ret:I
    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    if-nez v1, :cond_2

    .line 427
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "getChannelStatus: close"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 429
    new-instance v1, Lcom/android/internal/telephony/cat/ChannelStatus;

    invoke-direct {v1, v4, v4, v4}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 439
    :cond_1
    :goto_0
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    .line 441
    return-void

    .line 431
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 432
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannelStatus: open:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 434
    new-instance v1, Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    goto :goto_0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 9
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    const/4 v1, 0x2

    .line 166
    .local v1, result:I
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: enter"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, ret:I
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: init channel status object"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 172
    new-instance v4, Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-direct {v4, v7, v5, v5}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 176
    iget v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    if-ne v4, v6, :cond_1

    .line 178
    :cond_0
    const-string v4, "[BIP]"

    const-string v7, "Channel is already open"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_1
    const/4 v0, 0x0

    .line 183
    .local v0, isParametersModified:Z
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 184
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: bearer type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v8, v8, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    iput v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mBufferSize:I

    .line 187
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: buffer size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 190
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v4, :cond_4

    .line 191
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: local address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 198
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    if-eqz v4, :cond_5

    .line 199
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_1
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 207
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v4, :cond_6

    .line 208
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: dest address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_2
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-nez v4, :cond_7

    const-string v4, "TestGp.rs"

    :goto_3
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    .line 215
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 216
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: apn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_4
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    .line 223
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: login "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    .line 225
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: password "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_9

    move v4, v5

    :goto_5
    iput v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mLinkMode:I

    .line 231
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: mLinkMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v8, v8, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_a

    move v4, v5

    :goto_6
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mAutoReconnected:Z

    .line 249
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/internal/telephony/cat/BipManager;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "gsm.stk.bip"

    const-string v7, "1"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v7, "enableSUPL"

    invoke-virtual {v4, v5, v7}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 268
    if-nez v1, :cond_c

    .line 269
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: APN already active"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipManager;->requestRouteToHost()Z

    move-result v4

    if-nez v4, :cond_2

    .line 271
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: Fail - requestRouteToHost"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v2, 0x2

    .line 274
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 276
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: establish data channel"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipManager;->establishLink()I

    move-result v2

    .line 278
    if-eqz v2, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_b

    .line 279
    :cond_3
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: channel is activated"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v6, v4, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 286
    :goto_7
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 287
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 289
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    .line 307
    :goto_8
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: exit"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void

    .line 194
    :cond_4
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: local address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_5
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: transport protocol is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 211
    :cond_6
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: dest address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 214
    :cond_7
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_3

    .line 218
    :cond_8
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: apn default TestGp.rs"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    move v4, v6

    .line 227
    goto/16 :goto_5

    :cond_a
    move v4, v6

    .line 233
    goto/16 :goto_6

    .line 282
    :cond_b
    const-string v4, "[BIP]"

    const-string v6, "BM-openChannel: channel is un-activated"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    goto :goto_7

    .line 290
    :cond_c
    if-ne v1, v6, :cond_d

    .line 291
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: APN request started"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 294
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 295
    .local v3, timerMsg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/internal/telephony/cat/CatService;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 298
    .end local v3           #timerMsg:Landroid/os/Message;
    :cond_d
    const-string v4, "[BIP]"

    const-string v6, "BM-openChannel: startUsingNetworkFeature FAIL"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x2

    .line 300
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 302
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 303
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 305
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 7
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    .line 346
    iget v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 347
    .local v2, requestCount:I
    new-instance v3, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 349
    .local v3, result:Lcom/android/internal/telephony/cat/ReceiveDataResult;
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 351
    :cond_0
    const/16 v0, 0xd2

    if-le v2, v0, :cond_1

    .line 352
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/16 v2, 0xd2

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    if-eqz v0, :cond_2

    .line 357
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/BipManager$RecvDataRunnable;-><init>(Lcom/android/internal/telephony/cat/BipManager;ILcom/android/internal/telephony/cat/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 359
    .local v6, recvThread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 376
    .end local v6           #recvThread:Ljava/lang/Thread;
    :cond_2
    :goto_0
    return-void

    .line 371
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x5

    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 373
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 3
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    .line 379
    const-string v1, "[BIP]"

    const-string/jumbo v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;-><init>(Lcom/android/internal/telephony/cat/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 381
    .local v0, rt:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 382
    const-string v1, "[BIP]"

    const-string/jumbo v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 722
    return-void
.end method
