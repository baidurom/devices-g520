.class public Lcom/mediatek/gallery3d/mpo/MpoRequest;
.super Lcom/mediatek/gallery3d/data/ImageRequest;
.source "MpoRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mediatek/gallery3d/data/ImageRequest;-><init>()V

    return-void
.end method

.method private retrieveLargeData(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V
    .locals 3
    .parameter "jc"
    .parameter "params"
    .parameter "dataBundle"
    .parameter "mpoDecoderWrapper"

    .prologue
    .line 142
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v0

    .line 144
    .local v0, frameCount:I
    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getMpoFrameIndex(ZI)I

    move-result v1

    .line 145
    .local v1, frameIndex:I
    invoke-static {p1, p4, v1}, Lcom/mediatek/gallery3d/data/DecodeHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;I)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 149
    .end local v0           #frameCount:I
    .end local v1           #frameIndex:I
    :cond_0
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v2, :cond_1

    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v2, :cond_2

    .line 150
    :cond_1
    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v0

    .line 151
    .restart local v0       #frameCount:I
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getMpoFrameIndex(ZI)I

    move-result v1

    .line 152
    .restart local v1       #frameIndex:I
    invoke-static {p1, p4, v1}, Lcom/mediatek/gallery3d/data/DecodeHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;I)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 155
    .end local v0           #frameCount:I
    .end local v1           #frameIndex:I
    :cond_2
    return-void
.end method

.method private retrieveThumbData(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V
    .locals 7
    .parameter "jc"
    .parameter "params"
    .parameter "dataBundle"
    .parameter "mpoDecoderWrapper"

    .prologue
    .line 111
    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v0

    .line 112
    .local v0, frameCount:I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->width()I

    move-result v3

    invoke-virtual {p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->height()I

    move-result v4

    iget v5, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v6, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSizeByType(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    iget-boolean v3, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 118
    iget-boolean v3, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-eqz v3, :cond_0

    .line 119
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getMpoFrameIndex(ZI)I

    move-result v1

    .line 120
    .local v1, frameIndex:I
    invoke-static {p1, p4, v1, v2}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 122
    iget-object v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    iget v4, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v5, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v3, v4, v5}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 127
    .end local v1           #frameIndex:I
    :cond_0
    iget-boolean v3, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v3, :cond_1

    iget-boolean v3, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v3, :cond_2

    .line 130
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getMpoFrameIndex(ZI)I

    move-result v1

    .line 131
    .restart local v1       #frameIndex:I
    invoke-static {p1, p4, v1, v2}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 133
    iget-object v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    iget v4, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v5, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v3, v4, v5}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 137
    .end local v1           #frameIndex:I
    :cond_2
    return-void
.end method


# virtual methods
.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 5
    .parameter "jc"
    .parameter "params"
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 53
    const-string v2, "MpoRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request(jc, parmas, cr, uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-static {p3, p4}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->createMpoDecoderWrapper(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    move-result-object v1

    .line 59
    .local v1, mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/gallery3d/mpo/MpoRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->close()V

    .line 66
    :cond_0
    return-object v0

    .line 62
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->close()V

    :cond_1
    throw v2
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 4
    .parameter "jc"
    .parameter "params"
    .parameter "mpoDecoderWrapper"

    .prologue
    const/4 v0, 0x0

    .line 71
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 72
    :cond_0
    const-string v1, "MpoRequest"

    const-string v2, "request:got null params or decoder!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    :goto_0
    return-object v0

    .line 75
    :cond_2
    invoke-virtual {p3}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 76
    const-string v1, "MpoRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request:invalid frame count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    :cond_4
    const-string v1, "MpoRequest"

    invoke-virtual {p2, v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->info(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 90
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-nez v1, :cond_5

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v1, :cond_5

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v1, :cond_6

    .line 92
    :cond_5
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/gallery3d/mpo/MpoRequest;->retrieveThumbData(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V

    .line 95
    :cond_6
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-nez v1, :cond_7

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v1, :cond_7

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v1, :cond_8

    .line 97
    :cond_7
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/gallery3d/mpo/MpoRequest;->retrieveLargeData(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)V

    .line 100
    :cond_8
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    if-eqz v1, :cond_9

    .line 101
    const-string v1, "MpoRequest"

    const-string v2, "request: no GifDecoder can be generated from mpo"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_9
    const-string v1, "MpoRequest"

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 5
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"

    .prologue
    .line 23
    const-string v2, "MpoRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request(jc,parmas,filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    if-nez p2, :cond_1

    .line 25
    const/4 v0, 0x0

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-static {p3}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->createMpoDecoderWrapper(Ljava/lang/String;)Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;

    move-result-object v1

    .line 33
    .local v1, mpoDecoderWrapper:Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/gallery3d/mpo/MpoRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 36
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->close()V

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->close()V

    :cond_2
    throw v2
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 2
    .parameter "jc"
    .parameter "params"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 46
    const-string v0, "MpoRequest"

    const-string v1, "request:no support for buffer!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method
