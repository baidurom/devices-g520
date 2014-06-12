.class public Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;
.super Lcom/android/gallery3d/data/ImageCacheRequest;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVideoRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;J)V
    .locals 7
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"
    .parameter "dateModifiedInSec"

    .prologue
    .line 213
    invoke-static {p3}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IIJ)V

    .line 215
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    .line 216
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 220
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 233
    :goto_0
    return-object v5

    .line 222
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/data/LocalVideo;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 224
    .local v2, manager:Lcom/android/gallery3d/data/DataManager;
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 225
    .local v1, item:Lcom/android/gallery3d/data/LocalMediaItem;
    iget v3, v1, Lcom/android/gallery3d/data/LocalMediaItem;->stereoType:I

    .line 226
    .local v3, stereoType:I
    if-eqz v3, :cond_2

    .line 227
    const/4 v5, 0x1

    invoke-static {p1, v0, v5, v3}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getStereoVideoImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 229
    .local v4, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    move-object v0, v4

    .end local v1           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    .end local v2           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v3           #stereoType:I
    .end local v4           #temp:Landroid/graphics/Bitmap;
    :cond_2
    move-object v5, v0

    .line 233
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
