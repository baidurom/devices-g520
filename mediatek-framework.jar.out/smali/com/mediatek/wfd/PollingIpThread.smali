.class Lcom/mediatek/wfd/PollingIpThread;
.super Ljava/lang/Thread;
.source "WfdSinkService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WfdService_PollingIpThread"


# instance fields
.field mListener:Lcom/mediatek/wfd/PollingIpThreadListener;

.field mMac:Ljava/lang/String;

.field mMgr:Landroid/net/wifi/p2p/WifiP2pManager;

.field mPollMax:I

.field mSleepTime:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 47
    :goto_0
    iget v2, p0, Lcom/mediatek/wfd/PollingIpThread;->mPollMax:I

    if-lez v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/mediatek/wfd/PollingIpThread;->mMgr:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/mediatek/wfd/PollingIpThread;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->getPeerIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, ip:Ljava/lang/String;
    :try_start_0
    iget v2, p0, Lcom/mediatek/wfd/PollingIpThread;->mSleepTime:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    if-eqz v1, :cond_0

    .line 57
    iget-object v2, p0, Lcom/mediatek/wfd/PollingIpThread;->mListener:Lcom/mediatek/wfd/PollingIpThreadListener;

    invoke-interface {v2, v1}, Lcom/mediatek/wfd/PollingIpThreadListener;->onPollSuccess(Ljava/lang/String;)V

    .line 63
    .end local v1           #ip:Ljava/lang/String;
    :goto_1
    return-void

    .line 51
    .restart local v1       #ip:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WfdService_PollingIpThread"

    const-string v3, "exception thrown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcom/mediatek/wfd/PollingIpThread;->mListener:Lcom/mediatek/wfd/PollingIpThreadListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/mediatek/wfd/PollingIpThreadListener;->onPollFailure(I)V

    goto :goto_1

    .line 60
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget v2, p0, Lcom/mediatek/wfd/PollingIpThread;->mPollMax:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mediatek/wfd/PollingIpThread;->mPollMax:I

    goto :goto_0

    .line 62
    .end local v1           #ip:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wfd/PollingIpThread;->mListener:Lcom/mediatek/wfd/PollingIpThreadListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/mediatek/wfd/PollingIpThreadListener;->onPollFailure(I)V

    goto :goto_1
.end method

.method public startPolling(Landroid/net/wifi/p2p/WifiP2pManager;Ljava/lang/String;Lcom/mediatek/wfd/PollingIpThreadListener;)I
    .locals 1
    .parameter "mgr"
    .parameter "mac"
    .parameter "listener"

    .prologue
    const/16 v0, 0x64

    .line 36
    iput-object p1, p0, Lcom/mediatek/wfd/PollingIpThread;->mMgr:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 37
    iput-object p2, p0, Lcom/mediatek/wfd/PollingIpThread;->mMac:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/mediatek/wfd/PollingIpThread;->mListener:Lcom/mediatek/wfd/PollingIpThreadListener;

    .line 39
    iput v0, p0, Lcom/mediatek/wfd/PollingIpThread;->mPollMax:I

    .line 40
    iput v0, p0, Lcom/mediatek/wfd/PollingIpThread;->mSleepTime:I

    .line 41
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 42
    const/4 v0, 0x0

    return v0
.end method
