.class final Lcom/mediatek/common/externaldisplay/ExternalActivity$1;
.super Ljava/lang/Object;
.source "ExternalActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/externaldisplay/ExternalActivity;
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
        "Lcom/mediatek/common/externaldisplay/ExternalActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/externaldisplay/ExternalActivity;
    .locals 2
    .parameter "source"

    .prologue
    .line 230
    new-instance v0, Lcom/mediatek/common/externaldisplay/ExternalActivity;

    invoke-direct {v0}, Lcom/mediatek/common/externaldisplay/ExternalActivity;-><init>()V

    .line 231
    .local v0, activity:Lcom/mediatek/common/externaldisplay/ExternalActivity;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalActivity;->mId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalActivity;->access$002(Lcom/mediatek/common/externaldisplay/ExternalActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalActivity;->access$102(Lcom/mediatek/common/externaldisplay/ExternalActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalActivity;->mDescription:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalActivity;->access$202(Lcom/mediatek/common/externaldisplay/ExternalActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalActivity;->mIcon:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalActivity;->access$302(Lcom/mediatek/common/externaldisplay/ExternalActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/common/externaldisplay/ExternalActivity;->mTag:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/common/externaldisplay/ExternalActivity;->access$402(Lcom/mediatek/common/externaldisplay/ExternalActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/mediatek/common/externaldisplay/ExternalActivity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/externaldisplay/ExternalActivity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/common/externaldisplay/ExternalActivity;
    .locals 1
    .parameter "size"

    .prologue
    .line 240
    new-array v0, p1, [Lcom/mediatek/common/externaldisplay/ExternalActivity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/mediatek/common/externaldisplay/ExternalActivity$1;->newArray(I)[Lcom/mediatek/common/externaldisplay/ExternalActivity;

    move-result-object v0

    return-object v0
.end method
