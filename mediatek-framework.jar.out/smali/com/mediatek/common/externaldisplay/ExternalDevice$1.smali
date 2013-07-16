.class final Lcom/mediatek/common/externaldisplay/ExternalDevice$1;
.super Ljava/lang/Object;
.source "ExternalDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/externaldisplay/ExternalDevice;
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
        "Lcom/mediatek/common/externaldisplay/ExternalDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/externaldisplay/ExternalDevice;
    .locals 2
    .parameter "source"

    .prologue
    .line 161
    new-instance v0, Lcom/mediatek/common/externaldisplay/ExternalDevice;

    invoke-direct {v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice;-><init>()V

    .line 162
    .local v0, device:Lcom/mediatek/common/externaldisplay/ExternalDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalDevice;->mId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->access$002(Lcom/mediatek/common/externaldisplay/ExternalDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalDevice;->mType:I
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->access$102(Lcom/mediatek/common/externaldisplay/ExternalDevice;I)I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalDevice;->mSubType:I
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->access$202(Lcom/mediatek/common/externaldisplay/ExternalDevice;I)I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalDevice;->mName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->access$302(Lcom/mediatek/common/externaldisplay/ExternalDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalDevice;->mDescription:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->access$402(Lcom/mediatek/common/externaldisplay/ExternalDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalDevice;->mState:I
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalDevice;->access$502(Lcom/mediatek/common/externaldisplay/ExternalDevice;I)I

    .line 168
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/mediatek/common/externaldisplay/ExternalDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/externaldisplay/ExternalDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/common/externaldisplay/ExternalDevice;
    .locals 1
    .parameter "size"

    .prologue
    .line 172
    new-array v0, p1, [Lcom/mediatek/common/externaldisplay/ExternalDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/mediatek/common/externaldisplay/ExternalDevice$1;->newArray(I)[Lcom/mediatek/common/externaldisplay/ExternalDevice;

    move-result-object v0

    return-object v0
.end method
