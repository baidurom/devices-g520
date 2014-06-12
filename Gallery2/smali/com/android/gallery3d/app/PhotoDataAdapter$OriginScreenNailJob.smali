.class Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OriginScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V
    .locals 0
    .parameter "item"
    .parameter "params"

    .prologue
    .line 1720
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1721
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1722
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    .line 1723
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 7
    .parameter "jc"

    .prologue
    const/4 v3, 0x0

    .line 1732
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    .line 1734
    .local v1, imageRequest:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    if-nez v1, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-object v3

    .line 1737
    :cond_1
    invoke-interface {v1, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 1738
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1741
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iget-object v5, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    .line 1744
    .local v2, originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 1745
    goto :goto_0

    .line 1748
    :cond_2
    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    new-instance v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1715
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method
