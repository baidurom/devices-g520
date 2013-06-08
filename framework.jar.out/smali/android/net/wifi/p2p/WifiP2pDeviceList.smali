.class public Landroid/net/wifi/p2p/WifiP2pDeviceList;
.super Ljava/lang/Object;
.source "WifiP2pDeviceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDeviceList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 48
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 57
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsPeer(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "deviceAddress"

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_0
.end method

.method public getDeviceList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isGroupOwner(Ljava/lang/String;)Z
    .locals 2
    .parameter "deviceAddress"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 171
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    .line 174
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 153
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v2, sbuf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 180
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 182
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 76
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_2

    .line 77
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 78
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 79
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 80
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 81
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 82
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 83
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 84
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 85
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    .line 86
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceRole:I

    .line 87
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupOwnerAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupOwnerAddress:Ljava/lang/String;

    .line 88
    new-instance v1, Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>(Landroid/net/wifi/p2p/wfd/WfdInfo;)V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateGroupCapability(Ljava/lang/String;I)V
    .locals 2
    .parameter "deviceAddress"
    .parameter "groupCapab"

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 100
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 101
    iput p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    goto :goto_0
.end method

.method public updateInterfaceAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "deviceAddress"
    .parameter "interfaceAddres"

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 138
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 139
    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateStatus(Ljava/lang/String;I)V
    .locals 2
    .parameter "deviceAddress"
    .parameter "status"

    .prologue
    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 110
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 111
    iput p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    goto :goto_0
.end method

.method public updateWfdInfo(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .parameter "deviceAddress"
    .parameter "device"

    .prologue
    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 122
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 123
    iget v1, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdState:I

    .line 124
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget-object v2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v2, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    iput v2, v1, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 125
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget-object v2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v2, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    iput v2, v1, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    .line 126
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget-object v2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v2, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    iput v2, v1, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 127
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget-object v2, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget v2, v2, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    iput v2, v1, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 192
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 194
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 196
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-void
.end method
