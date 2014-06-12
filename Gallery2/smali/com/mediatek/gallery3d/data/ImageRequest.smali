.class public Lcom/mediatek/gallery3d/data/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/mediatek/gallery3d/data/IMediaRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "jc"
    .parameter "params"
    .parameter "dataBundle"
    .parameter "originThumb"
    .parameter "largeFrame"

    .prologue
    const/4 v3, 0x1

    .line 203
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-nez v2, :cond_0

    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v2, :cond_0

    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v2, :cond_7

    .line 206
    :cond_0
    if-eqz p4, :cond_1

    .line 207
    iget v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    const/16 v4, 0x3c0

    invoke-static {p4, v2, v4}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 212
    :cond_1
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-eqz v2, :cond_2

    .line 213
    iput-object p4, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 216
    :cond_2
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v2, :cond_3

    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v2, :cond_4

    .line 217
    :cond_3
    if-eqz p4, :cond_4

    .line 219
    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 220
    .local v0, special:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    iput-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    .line 221
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    iput-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    .line 222
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-nez v2, :cond_a

    move v2, v3

    :goto_0
    invoke-static {p1, p4, v0, v2}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->generateSecondImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    .line 225
    .local v1, temp:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v1, :cond_4

    .line 226
    iget-object v2, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    .line 227
    iget-object v2, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 231
    .end local v0           #special:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .end local v1           #temp:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :cond_4
    iget-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 232
    iget-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    iget v4, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v5, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v2, v4, v5}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 236
    :cond_5
    iget-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 237
    iget-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    iget v4, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v5, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v2, v4, v5}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    .line 241
    :cond_6
    iget-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 242
    iget-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    iget v4, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    iget v5, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    invoke-static {v2, v4, v5}, Lcom/mediatek/gallery3d/data/DecodeHelper;->postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 248
    :cond_7
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v2, :cond_8

    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v2, :cond_9

    .line 249
    :cond_8
    if-eqz p5, :cond_9

    .line 250
    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 251
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->recycle()V

    .line 266
    :cond_9
    :goto_1
    return-void

    .line 222
    .restart local v0       #special:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_a
    const/4 v2, 0x0

    goto :goto_0

    .line 254
    .end local v0           #special:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_b
    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 255
    .restart local v0       #special:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    iput-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    .line 256
    iget-boolean v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    iput-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    .line 257
    invoke-static {p1, p5, v0, v3}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->generateSecondImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    .line 260
    .restart local v1       #temp:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v1, :cond_9

    .line 261
    iget-object v2, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 262
    iget-object v2, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    iput-object v2, p3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    goto :goto_1
.end method


# virtual methods
.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 15
    .parameter "jc"
    .parameter "params"
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 135
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 136
    :cond_0
    const-string v2, "ImageRequest"

    const-string v3, "request:got null params or cr or uri!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v5, 0x0

    .line 196
    :goto_0
    return-object v5

    .line 139
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const/4 v5, 0x0

    goto :goto_0

    .line 143
    :cond_2
    const-string v2, "ImageRequest"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->info(Ljava/lang/String;)V

    .line 145
    new-instance v5, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    invoke-direct {v5}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 146
    .local v5, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 147
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 149
    const/4 v6, 0x0

    .line 150
    .local v6, originThumb:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 152
    .local v7, largeFrame:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 153
    .local v13, pfd:Landroid/os/ParcelFileDescriptor;
    const/4 v9, 0x0

    .line 155
    .local v9, fd:Ljava/io/FileDescriptor;
    :try_start_0
    const-string v2, "r"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 156
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 158
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v2, :cond_4

    .line 161
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    invoke-static {v12, v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 164
    move-object/from16 v0, p2

    iget v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    move-object/from16 v0, p1

    invoke-static {v0, v9, v12, v2, v3}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 168
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-eqz v2, :cond_5

    .line 169
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v9, v3}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v8

    .line 171
    .local v8, bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v8, :cond_5

    .line 172
    new-instance v14, Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-direct {v14}, Lcom/mediatek/gallery3d/data/RegionDecoder;-><init>()V

    .line 173
    .local v14, regionDecoder:Lcom/mediatek/gallery3d/data/RegionDecoder;
    iput-object v8, v14, Lcom/mediatek/gallery3d/data/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 174
    iput-object v14, v5, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 178
    .end local v8           #bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    .end local v14           #regionDecoder:Lcom/mediatek/gallery3d/data/RegionDecoder;
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v2, :cond_7

    .line 179
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 189
    :cond_7
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 192
    invoke-direct/range {v2 .. v7}, Lcom/mediatek/gallery3d/data/ImageRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 194
    const-string v2, "ImageRequest"

    invoke-virtual {v5, v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :catch_0
    move-exception v10

    .line 183
    .local v10, fe:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    const/4 v5, 0x0

    .line 189
    .end local v5           #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    .line 185
    .end local v10           #fe:Ljava/io/FileNotFoundException;
    .restart local v5       #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :catch_1
    move-exception v11

    .line 186
    .local v11, oe:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    const/4 v5, 0x0

    .line 189
    .end local v5           #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    .end local v11           #oe:Ljava/lang/OutOfMemoryError;
    .restart local v5       #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :catchall_0
    move-exception v2

    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 9
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    .line 28
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 29
    :cond_0
    const-string v1, "ImageRequest"

    const-string v2, "request:got null params or filePath!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 74
    :goto_0
    return-object v3

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v3, v0

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    const-string v1, "ImageRequest"

    invoke-virtual {p2, v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->info(Ljava/lang/String;)V

    .line 38
    new-instance v3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    invoke-direct {v3}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 39
    .local v3, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 40
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 42
    const/4 v4, 0x0

    .line 43
    .local v4, originThumb:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 45
    .local v5, largeFrame:Landroid/graphics/Bitmap;
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-nez v1, :cond_3

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v1, :cond_3

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v1, :cond_4

    .line 48
    :cond_3
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    invoke-static {v7, v1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 51
    iget v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    iget v2, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    invoke-static {p1, p3, v7, v1, v2}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 56
    :cond_4
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-eqz v1, :cond_5

    .line 57
    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 59
    .local v6, bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v6, :cond_5

    .line 60
    new-instance v8, Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-direct {v8}, Lcom/mediatek/gallery3d/data/RegionDecoder;-><init>()V

    .line 61
    .local v8, regionDecoder:Lcom/mediatek/gallery3d/data/RegionDecoder;
    iput-object v6, v8, Lcom/mediatek/gallery3d/data/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 62
    iput-object v8, v3, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 66
    .end local v6           #bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    .end local v8           #regionDecoder:Lcom/mediatek/gallery3d/data/RegionDecoder;
    :cond_5
    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v1, :cond_6

    iget-boolean v1, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v1, :cond_7

    .line 67
    :cond_6
    invoke-static {p1, v0, p3}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/data/ImageRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 72
    const-string v0, "ImageRequest"

    invoke-virtual {v3, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 17
    .parameter "jc"
    .parameter "params"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 80
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 81
    :cond_0
    const-string v4, "ImageRequest"

    const-string v5, "request:got null params or data!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v12, 0x0

    .line 129
    :goto_0
    return-object v12

    .line 84
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    const/4 v12, 0x0

    goto :goto_0

    .line 88
    :cond_2
    const-string v4, "ImageRequest"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->info(Ljava/lang/String;)V

    .line 90
    new-instance v12, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    invoke-direct {v12}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 91
    .local v12, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 92
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 94
    const/4 v13, 0x0

    .line 95
    .local v13, originThumb:Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 97
    .local v14, largeFrame:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v4, :cond_4

    .line 100
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    invoke-static {v8, v4}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 103
    move-object/from16 v0, p2

    iget v9, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v4 .. v10}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 108
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFullFrame:Z

    if-eqz v4, :cond_5

    .line 109
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v15

    .line 112
    .local v15, bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v15, :cond_5

    .line 113
    new-instance v16, Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-direct/range {v16 .. v16}, Lcom/mediatek/gallery3d/data/RegionDecoder;-><init>()V

    .line 114
    .local v16, regionDecoder:Lcom/mediatek/gallery3d/data/RegionDecoder;
    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/mediatek/gallery3d/data/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 115
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    .line 119
    .end local v15           #bitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    .end local v16           #regionDecoder:Lcom/mediatek/gallery3d/data/RegionDecoder;
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v4, :cond_7

    .line 120
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v4, v1, v2, v3}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Landroid/graphics/Bitmap;

    move-result-object v14

    :cond_7
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 125
    invoke-direct/range {v9 .. v14}, Lcom/mediatek/gallery3d/data/ImageRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 127
    const-string v4, "ImageRequest"

    invoke-virtual {v12, v4}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
