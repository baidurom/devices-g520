.class public Lcom/mediatek/common/externaldisplay/ExternalDevice;
.super Ljava/lang/Object;
.source "ExternalDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/common/externaldisplay/ExternalDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:I

.field private mSubType:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/mediatek/common/externaldisplay/ExternalDevice$1;

    invoke-direct {v0}, Lcom/mediatek/common/externaldisplay/ExternalDevice$1;-><init>()V

    sput-object v0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mType:I

    .line 13
    iput v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mSubType:I

    .line 10
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/common/externaldisplay/ExternalDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mediatek/common/externaldisplay/ExternalDevice;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mType:I

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/common/externaldisplay/ExternalDevice;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mSubType:I

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/common/externaldisplay/ExternalDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/mediatek/common/externaldisplay/ExternalDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/mediatek/common/externaldisplay/ExternalDevice;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mState:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 182
    if-ne p0, p1, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 189
    :goto_0
    return v1

    .line 185
    :cond_0
    instance-of v1, p1, Lcom/mediatek/common/externaldisplay/ExternalDevice;

    if-nez v1, :cond_1

    .line 186
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 188
    check-cast v0, Lcom/mediatek/common/externaldisplay/ExternalDevice;

    .line 189
    .local v0, dd:Lcom/mediatek/common/externaldisplay/ExternalDevice;
    iget-object v1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mId:Ljava/lang/String;

    iget-object v2, v0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mState:I

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mSubType:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mDescription:Ljava/lang/String;

    .line 120
    return-void
.end method

.method protected setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 147
    iput p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mState:I

    .line 148
    return-void
.end method

.method protected setSubType(I)V
    .locals 0
    .parameter "subType"

    .prologue
    .line 83
    iput p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mSubType:I

    .line 84
    return-void
.end method

.method protected setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 57
    iput p1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mType:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalDevice(mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mSubType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mSubType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDevice;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
