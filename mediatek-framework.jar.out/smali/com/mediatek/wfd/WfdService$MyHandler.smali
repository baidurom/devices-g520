.class Lcom/mediatek/wfd/WfdService$MyHandler;
.super Landroid/os/Handler;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdService;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfd/WfdService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    .line 1416
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1417
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/16 v12, 0xb4

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1421
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1423
    .local v0, ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1480
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1425
    :pswitch_1
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v3, v6

    check-cast v3, [I

    .line 1426
    .local v3, keyCodes:[I
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_INPUT_KEY keyCodes [0]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " keyCodes[1]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    aget v7, v3, v10

    aget v8, v3, v9

    #calls: Lcom/mediatek/wfd/WfdService;->sendKeyEvent(II)V
    invoke-static {v6, v7, v8}, Lcom/mediatek/wfd/WfdService;->access$1400(Lcom/mediatek/wfd/WfdService;II)V

    goto :goto_0

    .line 1430
    .end local v3           #keyCodes:[I
    :pswitch_2
    const-string v6, "WfdService"

    const-string v7, "EVENT_TOUCH_KEY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v5, v6

    check-cast v5, [I

    .line 1432
    .local v5, touchCodes:[I
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    aget v7, v5, v10

    int-to-float v7, v7

    aget v8, v5, v9

    int-to-float v8, v8

    #calls: Lcom/mediatek/wfd/WfdService;->sendTap(FF)V
    invoke-static {v6, v7, v8}, Lcom/mediatek/wfd/WfdService;->access$1500(Lcom/mediatek/wfd/WfdService;FF)V

    goto :goto_0

    .line 1435
    .end local v5           #touchCodes:[I
    :pswitch_3
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_WFDSRV_RTSP_TEARDOWN_TIMEOUT, mRtspState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mRtspState:I
    invoke-static {v8}, Lcom/mediatek/wfd/WfdService;->access$1600(Lcom/mediatek/wfd/WfdService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mRtspState:I
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1600(Lcom/mediatek/wfd/WfdService;)I

    move-result v6

    if-eq v9, v6, :cond_0

    .line 1437
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rtsp teardown timeout but state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mRtspState:I
    invoke-static {v8}, Lcom/mediatek/wfd/WfdService;->access$1600(Lcom/mediatek/wfd/WfdService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->onRtspDisconnected()V
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1700(Lcom/mediatek/wfd/WfdService;)V

    goto/16 :goto_0

    .line 1442
    :pswitch_4
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_WFDSRV_RTSP_START_TIMEOUT, mRtspState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mRtspState:I
    invoke-static {v8}, Lcom/mediatek/wfd/WfdService;->access$1600(Lcom/mediatek/wfd/WfdService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mRtspState:I
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1600(Lcom/mediatek/wfd/WfdService;)I

    move-result v6

    if-ne v9, v6, :cond_0

    .line 1444
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->stopRtspServer()V
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1000(Lcom/mediatek/wfd/WfdService;)V

    .line 1445
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #setter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v6, v11}, Lcom/mediatek/wfd/WfdService;->access$102(Lcom/mediatek/wfd/WfdService;I)I

    .line 1446
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->doDisconnect()I
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1100(Lcom/mediatek/wfd/WfdService;)I

    goto/16 :goto_0

    .line 1450
    :pswitch_5
    const-string v6, "WfdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_WFDSRV_QUEUE_CONNECT, retry counter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mQueueConnect_RetryCounter:I
    invoke-static {v8}, Lcom/mediatek/wfd/WfdService;->access$1800(Lcom/mediatek/wfd/WfdService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mQueueConnectMac="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/wfd/WfdService;->access$1900(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1452
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    .local v4, stateList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-virtual {v6, v1, v4}, Lcom/mediatek/wfd/WfdService;->arrangeScannedDevices(Ljava/util/List;Ljava/util/List;)I

    move-result v6

    if-ne v9, v6, :cond_2

    .line 1454
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 1455
    const-string v7, "WfdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " device address:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", device state:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1900(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/wfd/WfdService;->access$1900(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1459
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #setter for: Lcom/mediatek/wfd/WfdService;->mQueueConnect_RetryCounter:I
    invoke-static {v6, v10}, Lcom/mediatek/wfd/WfdService;->access$1802(Lcom/mediatek/wfd/WfdService;I)I

    .line 1460
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    iget-object v7, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/wfd/WfdService;->access$1900(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/wfd/WfdService;->doConnect(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/mediatek/wfd/WfdService;->access$2000(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)I

    .line 1454
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1465
    .end local v2           #i:I
    :cond_2
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mQueueConnectMac:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1900(Lcom/mediatek/wfd/WfdService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mQueueConnect_RetryCounter:I
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1800(Lcom/mediatek/wfd/WfdService;)I

    move-result v6

    if-ge v6, v12, :cond_4

    .line 1466
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1808(Lcom/mediatek/wfd/WfdService;)I

    .line 1467
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$2100(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdService$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/mediatek/wfd/WfdService$MyHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1468
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$2100(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdService$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/mediatek/wfd/WfdService$MyHandler;->removeMessages(I)V

    .line 1470
    :cond_3
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mHandler:Lcom/mediatek/wfd/WfdService$MyHandler;
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$2100(Lcom/mediatek/wfd/WfdService;)Lcom/mediatek/wfd/WfdService$MyHandler;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v11, v7, v8}, Lcom/mediatek/wfd/WfdService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1472
    :cond_4
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mQueueConnect_RetryCounter:I
    invoke-static {v6}, Lcom/mediatek/wfd/WfdService;->access$1800(Lcom/mediatek/wfd/WfdService;)I

    move-result v6

    if-ne v6, v12, :cond_0

    .line 1473
    const-string v6, "WfdService"

    const-string v7, "retry timeout"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v6, p0, Lcom/mediatek/wfd/WfdService$MyHandler;->this$0:Lcom/mediatek/wfd/WfdService;

    #setter for: Lcom/mediatek/wfd/WfdService;->mQueueConnect_RetryCounter:I
    invoke-static {v6, v10}, Lcom/mediatek/wfd/WfdService;->access$1802(Lcom/mediatek/wfd/WfdService;I)I

    goto/16 :goto_0

    .line 1423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
