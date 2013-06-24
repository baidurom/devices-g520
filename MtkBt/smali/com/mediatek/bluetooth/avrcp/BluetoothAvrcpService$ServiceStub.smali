.class Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;
.super Lcom/mediatek/bluetooth/avrcp/IBTAvrcpService$Stub;
.source "BluetoothAvrcpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 1541
    invoke-direct {p0}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpService$Stub;-><init>()V

    .line 1542
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 1543
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 2
    .parameter "sAddr"

    .prologue
    .line 1550
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->connectNative(Ljava/lang/String;)Z

    .line 1552
    const/4 v0, 0x1

    .line 1554
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectBrowse()Z
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->connectBrowseNative()Z

    .line 1568
    const/4 v0, 0x1

    return v0
.end method

.method public debugPTSAttributes(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 1670
    const/16 v0, 0xaa

    if-ne p1, v0, :cond_0

    .line 1671
    const-string v0, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] stop server self !"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->disable()V

    .line 1673
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->stopSelf()V

    move v0, v1

    .line 1684
    :goto_0
    return v0

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1678
    const-string v0, "EXT_AVRCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][AVRCP] debugPTSAttributes mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    sput p1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sPTSDebugMode:I

    move v0, v1

    .line 1680
    goto :goto_0

    .line 1682
    :cond_1
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] mService not exist "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->disconnectNative()Z

    .line 1560
    const/4 v0, 0x1

    return v0
.end method

.method public disconnectBrowse()Z
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->disconnectBrowseNative()Z

    .line 1576
    const/4 v0, 0x1

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 1546
    const/4 v0, 0x0

    return v0
.end method

.method public selectPlayerId(I)Z
    .locals 5
    .parameter "playerid"

    .prologue
    const/4 v4, 0x0

    .line 1638
    int-to-short v0, p1

    .line 1639
    .local v0, playerId:S
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1640
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1642
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    #setter for: Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mCurPlayerId:S
    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->access$002(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;S)S

    .line 1643
    const-string v2, "EXT_AVRCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][AVRCP] player_id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " availFalg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAvailableChangedFlag:Z
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->access$100(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " addresflag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAddressedPlayerChangedFlag:Z
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->access$200(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAvailableChangedFlag:Z
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->access$100(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1648
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    #setter for: Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAvailableChangedFlag:Z
    invoke-static {v1, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->access$102(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;Z)Z

    .line 1649
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v1, v4, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationAvailPlayersChangedNative(BB)Z

    .line 1654
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAddressedPlayerChangedFlag:Z
    invoke-static {v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->access$200(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1656
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    #setter for: Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAddressedPlayerChangedFlag:Z
    invoke-static {v1, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->access$202(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;Z)Z

    .line 1657
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationAddressedPlayerChangedNative(BBSS)Z

    .line 1665
    :cond_2
    :goto_0
    return v4

    .line 1660
    :cond_3
    const-string v1, "EXT_AVRCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][AVRCP] Out of range player_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1663
    :cond_4
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] mService not exist "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDebugElementAttribute()Z
    .locals 13

    .prologue
    .line 1588
    const/4 v0, 0x3

    new-array v6, v0, [I

    .line 1589
    .local v6, attrIds:[I
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v6, v0

    .line 1590
    const/4 v0, 0x1

    const/4 v1, 0x5

    aput v1, v6, v0

    .line 1591
    const/4 v0, 0x2

    const/4 v1, 0x2

    aput v1, v6, v0

    .line 1593
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, "Test"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->connectInd([BLjava/lang/String;I)V

    .line 1595
    const/4 v8, 0x0

    .line 1596
    .local v8, start:B
    const/16 v7, 0xa

    .line 1597
    .local v7, end:B
    const/4 v5, 0x3

    .line 1604
    .local v5, count:B
    const/4 v8, 0x5

    .line 1605
    const/16 v7, 0xa

    .line 1606
    const/4 v5, 0x3

    .line 1613
    const/4 v8, 0x0

    .line 1614
    const/16 v7, 0xa

    .line 1615
    const/4 v5, 0x3

    .line 1616
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setBrowsedplayerInd(S)V

    .line 1618
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getItemAttributesInd(BJSB[I)V

    .line 1619
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getItemAttributesInd(BJSB[I)V

    .line 1620
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getItemAttributesInd(BJSB[I)V

    .line 1621
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getItemAttributesInd(BJSB[I)V

    .line 1622
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getItemAttributesInd(BJSB[I)V

    .line 1624
    const-wide v9, 0x7fffffffffffffffL

    .line 1625
    .local v9, uid1:J
    const-wide/high16 v11, -0x8000

    .line 1626
    .local v11, uid2:J
    const-string v0, "EXT_AVRCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][AVRCP] uid1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->changePathInd(IBJ)V

    .line 1629
    const-string v0, "EXT_AVRCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][AVRCP] uid2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->changePathInd(IBJ)V

    .line 1633
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;->debugPTSAttributes(I)Z

    .line 1634
    const/4 v0, 0x1

    return v0
.end method
