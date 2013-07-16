.class public Lcom/mediatek/common/externaldisplay/ExternalActivity;
.super Ljava/lang/Object;
.source "ExternalActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/common/externaldisplay/ExternalActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDescription:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mId:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/mediatek/common/externaldisplay/ExternalActivity$1;

    invoke-direct {v0}, Lcom/mediatek/common/externaldisplay/ExternalActivity$1;-><init>()V

    sput-object v0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/common/externaldisplay/ExternalActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mediatek/common/externaldisplay/ExternalActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mediatek/common/externaldisplay/ExternalActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/mediatek/common/externaldisplay/ExternalActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$402(Lcom/mediatek/common/externaldisplay/ExternalActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTag:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 250
    if-ne p0, p1, :cond_0

    .line 251
    const/4 v1, 0x1

    .line 257
    :goto_0
    return v1

    .line 253
    :cond_0
    instance-of v1, p1, Lcom/mediatek/common/externaldisplay/ExternalActivity;

    if-nez v1, :cond_1

    .line 254
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 256
    check-cast v0, Lcom/mediatek/common/externaldisplay/ExternalActivity;

    .line 257
    .local v0, dab:Lcom/mediatek/common/externaldisplay/ExternalActivity;
    iget-object v1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mId:Ljava/lang/String;

    iget-object v2, v0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 218
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstance"

    .prologue
    .line 178
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mContentView:Landroid/view/View;

    .line 171
    return-void
.end method

.method protected setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mDescription:Ljava/lang/String;

    .line 111
    return-void
.end method

.method protected setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mIcon:Landroid/graphics/Bitmap;

    .line 129
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTag:Ljava/lang/String;

    .line 147
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTitle:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalActivity(mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    return-void
.end method
