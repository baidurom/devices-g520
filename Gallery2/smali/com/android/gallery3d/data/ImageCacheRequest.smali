.class abstract Lcom/android/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCacheRequest"


# instance fields
.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mDateModifiedInSec:J

.field protected mPath:Lcom/android/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IIJ)V
    .locals 0
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "targetSize"
    .parameter "dateModifiedInSec"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 43
    iput-object p2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 44
    iput p3, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    .line 45
    iput p4, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 46
    iput-wide p5, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    .line 47
    return-void
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "jc"

    .prologue
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    const-string v3, "THUMB"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 54
    .local v19, debugTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v2

    .line 56
    .local v2, cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/BytesBufferPool;->get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    .line 59
    .local v5, buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;ILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;J)Z

    move-result v20

    .line 62
    .local v20, found:Z
    sget-boolean v3, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ:Z

    if-eqz v3, :cond_0

    .line 63
    const/16 v20, 0x0

    .line 65
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    const/16 v18, 0x0

    .line 83
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 108
    :cond_1
    :goto_1
    return-object v18

    .line 51
    .end local v2           #cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    .end local v5           #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    .end local v19           #debugTag:Ljava/lang/String;
    .end local v20           #found:Z
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    const-string v3, "MICROTHUMB"

    goto :goto_0

    :cond_3
    const-string v3, "?"

    goto :goto_0

    .line 66
    .restart local v2       #cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    .restart local v5       #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    .restart local v19       #debugTag:Ljava/lang/String;
    .restart local v20       #found:Z
    :cond_4
    if-eqz v20, :cond_7

    .line 67
    :try_start_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 70
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 71
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v6

    iget-object v8, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v9, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v10, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/data/BitmapPool;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 77
    .local v18, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-nez v18, :cond_5

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 78
    const-string v3, "ImageCacheRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode cached failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_5
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_1

    .line 74
    .end local v18           #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v6

    iget-object v8, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v9, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v10, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/data/BitmapPool;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v18

    .restart local v18       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 83
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v18           #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 85
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 86
    .restart local v18       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v18, 0x0

    goto/16 :goto_1

    .line 83
    .end local v18           #bitmap:Landroid/graphics/Bitmap;
    .end local v20           #found:Z
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v3

    .line 88
    .restart local v18       #bitmap:Landroid/graphics/Bitmap;
    .restart local v20       #found:Z
    :cond_8
    if-nez v18, :cond_9

    .line 89
    const-string v3, "ImageCacheRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode orig failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 93
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 94
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 98
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v18, 0x0

    goto/16 :goto_1

    .line 96
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v18

    goto :goto_3

    .line 100
    :cond_b
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v15

    .line 101
    .local v15, array:[B
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v18, 0x0

    goto/16 :goto_1

    .line 105
    :cond_c
    sget-boolean v3, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ:Z

    if-nez v3, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    move-wide/from16 v16, v0

    move-object v12, v2

    invoke-virtual/range {v12 .. v17}, Lcom/android/gallery3d/data/ImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;I[BJ)V

    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
