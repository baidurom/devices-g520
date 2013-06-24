.class Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;
.super Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback$Stub;
.source "BTAvrcpMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AvrcpMusicAdapterStub"
.end annotation


# instance fields
.field mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)V
    .locals 1
    .parameter
    .parameter "adapter"

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-direct {p0}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback$Stub;-><init>()V

    .line 1449
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 1450
    return-void
.end method


# virtual methods
.method public notifyAppSettingChanged()V
    .locals 4

    .prologue
    .line 1490
    const/16 v0, 0x8

    .line 1491
    .local v0, eventId:I
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1496
    :goto_0
    return-void

    .line 1494
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 1495
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] callback notifyAppSettingChanged "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyNowPlayingContentChanged()V
    .locals 0

    .prologue
    .line 1500
    return-void
.end method

.method public notifyPlaybackPosChanged()V
    .locals 4

    .prologue
    .line 1481
    const/4 v0, 0x5

    .line 1482
    .local v0, eventId:I
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1487
    :goto_0
    return-void

    .line 1485
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 1486
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] callback notifyPlaybackPosChanged "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyPlaybackStatus(B)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1454
    return-void
.end method

.method public notifyTrackChanged(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1458
    return-void
.end method

.method public notifyTrackReachEnd()V
    .locals 4

    .prologue
    .line 1472
    const/4 v0, 0x3

    .line 1473
    .local v0, eventId:I
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1478
    :goto_0
    return-void

    .line 1476
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 1477
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] callback notifyTrackReachEnd "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyTrackReachStart()V
    .locals 4

    .prologue
    .line 1461
    const/4 v0, 0x4

    .line 1462
    .local v0, eventId:I
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v2

    monitor-enter v2

    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1464
    monitor-exit v2

    .line 1469
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 1467
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] callback notifyTrackReachStart "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1467
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyVolumehanged(B)V
    .locals 5
    .parameter "volume"

    .prologue
    const/4 v4, 0x0

    .line 1503
    const/16 v0, 0xd

    .line 1504
    .local v0, eventId:I
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1507
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 1508
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] callback notifyVolumehanged "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$600(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    move-result-object v1

    invoke-virtual {v1, v4, v4, p1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationVolumeChangedNative(BBB)Z

    goto :goto_0
.end method
