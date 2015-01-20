.class final Landroid/net/wifi/p2p/wfd/WfdInfo$1;
.super Ljava/lang/Object;
.source "WfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/wfd/WfdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/p2p/wfd/WfdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/wfd/WfdInfo;
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 245
    new-instance v0, Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>()V

    .line 246
    .local v0, info:Landroid/net/wifi/p2p/wfd/WfdInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->rtspPort:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->maxTh:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wfdFlags:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->deviceType:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->sessionAvailable:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->wsd:Z

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->cp:Z

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->prefDisplayMode:Z

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_3
    iput-boolean v2, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->standbyResumeCtrl:Z

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/wfd/WfdInfo;->associatedBSSID:Ljava/lang/String;

    .line 256
    return-object v0

    :cond_0
    move v1, v3

    .line 251
    goto :goto_0

    :cond_1
    move v1, v3

    .line 252
    goto :goto_1

    :cond_2
    move v1, v3

    .line 253
    goto :goto_2

    :cond_3
    move v2, v3

    .line 254
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/wfd/WfdInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/wfd/WfdInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/wfd/WfdInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 260
    new-array v0, p1, [Landroid/net/wifi/p2p/wfd/WfdInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/wfd/WfdInfo$1;->newArray(I)[Landroid/net/wifi/p2p/wfd/WfdInfo;

    move-result-object v0

    return-object v0
.end method
