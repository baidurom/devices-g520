.class public Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;
.super Ljava/lang/Object;
.source "LocalVideo.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mLocalFilePath:Ljava/lang/String;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;)V
    .locals 0
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 260
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 261
    iput p3, p0, Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;->mType:I

    .line 263
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 264
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 9
    .parameter "jc"

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-static {}, Lcom/android/gallery3d/data/LocalVideo;->access$000()Z

    move-result v6

    if-nez v6, :cond_1

    .line 269
    const-string v6, "LocalVideo"

    const-string v7, "LocalSecondImageRequest:Stereo is not supported!"

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return-object v1

    .line 273
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 274
    const-string v6, "LocalVideo"

    const-string v7, "LocalSecondImageRequest:got null mLocalFilePath"

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 282
    const-string v6, "LocalVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LocalSecondImageRequest:bitmap.getWidth()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v6, "LocalVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LocalSecondImageRequest:bitmap.getHeight()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 285
    .local v3, manager:Lcom/android/gallery3d/data/DataManager;
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 286
    .local v2, item:Lcom/android/gallery3d/data/LocalMediaItem;
    iget v4, v2, Lcom/android/gallery3d/data/LocalMediaItem;->stereoType:I

    .line 287
    .local v4, stereoType:I
    if-eqz v4, :cond_3

    .line 288
    const/4 v6, 0x0

    invoke-static {p1, v0, v6, v4}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getStereoVideoImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 290
    .local v5, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 291
    move-object v0, v5

    .line 294
    .end local v5           #temp:Landroid/graphics/Bitmap;
    :cond_3
    new-instance v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 296
    .local v1, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    iput-object v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocalVideo$LocalImageRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    return-object v0
.end method
