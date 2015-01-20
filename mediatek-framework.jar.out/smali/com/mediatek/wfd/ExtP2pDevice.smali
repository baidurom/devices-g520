.class public Lcom/mediatek/wfd/ExtP2pDevice;
.super Lcom/mediatek/common/externaldisplay/ExternalDevice;
.source "ExtP2pDevice.java"


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    .line 11
    invoke-direct {p0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;-><init>()V

    .line 12
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    packed-switch v0, :pswitch_data_0

    .line 26
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setId(Ljava/lang/String;)V

    .line 27
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setType(I)V

    .line 30
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v0, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    packed-switch v0, :pswitch_data_1

    .line 42
    :goto_1
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setState(I)V

    goto :goto_0

    .line 17
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setState(I)V

    goto :goto_0

    .line 20
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setState(I)V

    goto :goto_0

    .line 23
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setState(I)V

    goto :goto_0

    .line 32
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setSubType(I)V

    goto :goto_1

    .line 36
    :pswitch_5
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setSubType(I)V

    goto :goto_1

    .line 39
    :pswitch_6
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setSubType(I)V

    goto :goto_1

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 30
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 2
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;-><init>()V

    .line 46
    invoke-virtual {p0, p2}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setState(I)V

    .line 47
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setId(Ljava/lang/String;)V

    .line 48
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setType(I)V

    .line 51
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v0, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setSubType(I)V

    goto :goto_0

    .line 57
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setSubType(I)V

    goto :goto_0

    .line 60
    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->setSubType(I)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
