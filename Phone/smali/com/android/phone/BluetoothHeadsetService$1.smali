.class Lcom/android/phone/BluetoothHeadsetService$1;
.super Landroid/os/Handler;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x1

    .line 178
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[API] handleMessage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Ljava/lang/String;)V

    .line 179
    iget-object v10, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v10

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    const/4 v1, 0x0

    .line 184
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v5, 0x0

    .line 185
    .local v5, remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    const/4 v7, 0x0

    .line 193
    .local v7, state:I
    const/4 v8, 0x0

    .line 194
    .local v8, type:I
    :try_start_0
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x64

    if-ne v9, v11, :cond_0

    .line 195
    const/4 v8, 0x1

    .line 251
    :goto_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-object v3, v0

    .line 253
    const-string v9, "Bluetooth HSHFP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incoming rfcomm ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->typeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") connection from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "on channel "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v4, 0x0

    .line 261
    .local v4, priority:I
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    iget-object v11, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v9, v11}, Lcom/android/phone/BluetoothHeadsetService;->access$900(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 263
    if-nez v4, :cond_a

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rejecting incoming connection because priority = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothHeadsetService;->logInfo(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Ljava/lang/String;)V

    .line 266
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAudioGateway;->rejectConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v9

    iget-object v11, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Landroid/bluetooth/IBluetooth;->notifyIncomingConnection(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :goto_1
    :try_start_2
    monitor-exit v10

    .line 347
    .end local v4           #priority:I
    :goto_2
    return-void

    .line 196
    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x65

    if-ne v9, v11, :cond_1

    .line 197
    const/4 v8, 0x2

    goto :goto_0

    .line 199
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 244
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ERR] unknown msg="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Ljava/lang/String;)V

    .line 245
    monitor-exit v10

    goto :goto_2

    .line 346
    :catchall_0
    move-exception v9

    :goto_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 202
    :pswitch_0
    :try_start_3
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 203
    if-nez v1, :cond_2

    monitor-exit v10

    goto :goto_2

    .line 204
    :cond_2
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    move-object v5, v0

    .line 205
    if-nez v5, :cond_3

    monitor-exit v10

    goto :goto_2

    .line 206
    :cond_3
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v7

    .line 207
    if-eq v7, v12, :cond_4

    .line 208
    const-string v9, "RFCOMM_ERROR : mState != BluetoothHeadset.STATE_CONNECTING"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Ljava/lang/String;)V

    .line 209
    monitor-exit v10

    goto :goto_2

    .line 211
    :cond_4
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v11, 0x0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v9, v1, v11}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 212
    monitor-exit v10

    goto :goto_2

    .line 214
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 215
    if-nez v1, :cond_5

    monitor-exit v10

    goto :goto_2

    .line 216
    :cond_5
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    move-object v5, v0

    .line 217
    if-nez v5, :cond_6

    monitor-exit v10

    goto :goto_2

    .line 218
    :cond_6
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v7

    .line 219
    if-eq v7, v12, :cond_7

    .line 220
    const-string v9, "RFCOMM_CONNECTED : mState != BluetoothHeadset.STATE_CONNECTING"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Ljava/lang/String;)V

    .line 221
    monitor-exit v10

    goto/16 :goto_2

    .line 223
    :cond_7
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v11}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v11

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$600(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lcom/android/phone/BluetoothHandsfree;->connectHeadset(Landroid/bluetooth/BluetoothAudioGateway;I)V

    .line 224
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v11, 0x2

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v9, v1, v11}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 225
    monitor-exit v10

    goto/16 :goto_2

    .line 227
    :pswitch_2
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 228
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/phone/BluetoothHandsfree;->setVirtualCallInProgress(Z)V

    .line 229
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_8

    .line 231
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v11, 0x0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v9, v1, v11}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 232
    :cond_8
    monitor-exit v10

    goto/16 :goto_2

    .line 236
    :pswitch_3
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v9, :cond_9

    .line 237
    const-string v9, "Remote Device is null when receive SCO msg"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->logWarn(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$800(Ljava/lang/String;)V

    .line 238
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v9

    iget v11, p1, Landroid/os/Message;->what:I

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/phone/BluetoothHandsfree;->handleSCOEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 242
    :goto_4
    monitor-exit v10

    goto/16 :goto_2

    .line 240
    :cond_9
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v12, v9}, Lcom/android/phone/BluetoothHandsfree;->handleSCOEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_4

    .line 270
    .restart local v4       #priority:I
    :catch_0
    move-exception v2

    .line 271
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "Bluetooth HSHFP"

    const-string v11, "notifyIncomingConnection"

    invoke-static {v9, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 277
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_a
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 279
    const/4 v7, 0x0

    .line 280
    if-eqz v1, :cond_d

    .line 281
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    move-object v5, v0

    .line 282
    if-eqz v5, :cond_d

    .line 283
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v7

    move-object v6, v5

    .line 287
    .end local v5           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .local v6, remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :goto_5
    packed-switch v7, :pswitch_data_1

    :goto_6
    move-object v5, v6

    .line 346
    .end local v6           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v5       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :goto_7
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 290
    .end local v5           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v6       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :pswitch_4
    :try_start_4
    new-instance v5, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v5, v9, v8, v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;-><init>(Lcom/android/phone/BluetoothHeadsetService;ILandroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 291
    .end local v6           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v5       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :try_start_5
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    iget-object v11, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v11, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 294
    :try_start_6
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v9

    iget-object v11, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/bluetooth/IBluetooth;->notifyIncomingConnection(Ljava/lang/String;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    .line 296
    :catch_1
    move-exception v2

    .line 297
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v9, "Bluetooth HSHFP"

    const-string v11, "notifyIncomingConnection"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 302
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v5           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v6       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :pswitch_5
    :try_start_8
    iget-object v9, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 304
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Already attempting connect to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", disconnecting "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothHeadsetService;->logInfo(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Ljava/lang/String;)V

    .line 310
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAudioGateway;->rejectConnection()V

    move-object v5, v6

    .line 313
    .end local v6           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v5       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    goto :goto_7

    .line 319
    .end local v5           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v6       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :cond_b
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    iget-object v11, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 320
    .end local v6           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v5       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v5, :cond_c

    .line 321
    :try_start_9
    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v5, v8}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$602(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 322
    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v5, v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$1202(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 328
    :goto_8
    :try_start_a
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v9

    iget-object v11, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/bluetooth/IBluetooth;->notifyIncomingConnection(Ljava/lang/String;Z)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_7

    .line 330
    :catch_2
    move-exception v2

    .line 331
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_b
    const-string v9, "Bluetooth HSHFP"

    const-string v11, "notifyIncomingConnection"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 324
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mRemoteHeadsets.get("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ") returns null"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothHeadsetService;->logWarn(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$800(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    .line 335
    .end local v5           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v6       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :pswitch_6
    :try_start_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Already connected to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", disconnecting "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothHeadsetService;->logInfo(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Ljava/lang/String;)V

    .line 342
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->rejectIncomingConnection(Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    invoke-static {v9, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_6

    .line 346
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v5       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    goto/16 :goto_3

    :cond_d
    move-object v6, v5

    .end local v5           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local v6       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    goto/16 :goto_5

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 287
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
