.class Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;
.super Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify$Stub;
.source "BluetoothHidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/hid/BluetoothHidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/hid/IBluetoothHidServerNotify$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activateReq()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity Activate: "

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 504
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverActivateReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V

    .line 505
    return-void
.end method

.method public authorizeReq(Ljava/lang/String;Z)V
    .locals 3
    .parameter "btAddr"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity authorizeReq"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 594
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverAuthorizeReqNative(Ljava/lang/String;Z)V
    invoke-static {v0, p1, p2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Z)V

    .line 595
    return-void
.end method

.method public clearService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity clearService"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 589
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->localClearService()V

    .line 590
    return-void
.end method

.method public connectReq(Ljava/lang/String;)V
    .locals 4
    .parameter "btAddr"

    .prologue
    const/4 v3, 0x1

    .line 513
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v2, "BluetoothHidActivity Connect"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 514
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getDeviceState(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$300(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 516
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "connecting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->connectHidDevice(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 525
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v2, "already connected"

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->connectHidDevice(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deactivateReq()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity DeactivateReq"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 509
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverDeactivateReqNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;)V

    .line 510
    return-void
.end method

.method public disconnectReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity Disconnect"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 530
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->disconnectHidDevice(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public finishActionReq()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v2, "BluetoothHidActivity finishActionReq"

    const/4 v3, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 599
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.hid.finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 601
    return-void
.end method

.method public getIdleReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity getIdle"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 580
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverGetIdleReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public getProtocolReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity getProtocol"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 570
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverGetProtocolReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1900(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public getReportReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity getReport"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 560
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverGetReportReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1700(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public getStateByAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "btAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getDeviceState(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$300(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendReportReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity sendReport"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 550
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSendReportReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1500(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public setIdleReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity setIdle"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 575
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSetIdleReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$2000(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public setProtocolReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity setProtocol"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 565
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSetProtocolReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1800(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public setReportReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity setReport"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 555
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverSetReportReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1600(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public unplugReq(Ljava/lang/String;)V
    .locals 3
    .parameter "btAddr"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "BluetoothHidActivity unplug"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->printLog(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;I)V

    .line 542
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const v1, 0x7f05001f

    const/4 v2, 0x0

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateActivityUI(Ljava/lang/String;IZ)V
    invoke-static {v0, p1, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1100(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;IZ)V

    .line 543
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    const-string v1, "disconnecting"

    iget-object v2, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1200(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->updateSettingsState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1300(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 545
    iget-object v0, p0, Lcom/mediatek/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/mediatek/bluetooth/hid/BluetoothHidService;

    #calls: Lcom/mediatek/bluetooth/hid/BluetoothHidService;->serverUnplugReqNative(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/bluetooth/hid/BluetoothHidService;->access$1400(Lcom/mediatek/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V

    .line 546
    return-void
.end method
