.class public Lcom/mediatek/gallery3d/data/DecodeHelper;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# static fields
.field public static final HW_LIMITATION_2D_TO_3D:I = 0x800

.field public static final MAX_BITMAP_BYTE_COUNT:I = 0xa00000

.field public static final MAX_PIXEL_COUNT:I = 0x9c400

.field private static final TAG:Ljava/lang/String; = "DecodeHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 2
    .parameter "maxBytes"
    .parameter "maxDim"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 45
    const/4 v0, 0x1

    .line 48
    .local v0, sampleSize:I
    :goto_0
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    div-int/2addr v1, v0

    div-int/2addr v1, v0

    if-le v1, p0, :cond_0

    .line 49
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 53
    :cond_0
    :goto_1
    if-lez p1, :cond_2

    div-int v1, p2, v0

    if-gt v1, p1, :cond_1

    div-int v1, p3, v0

    if-le v1, p1, :cond_2

    .line 55
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 58
    :cond_2
    return v0
.end method

.method public static calculateSampleSizeByType(IIII)I
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    .line 65
    const/4 v0, 0x1

    .line 66
    .local v0, sampleSize:I
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 69
    int-to-float v2, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 70
    .local v1, scale:F
    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v0

    .line 75
    div-int v2, p0, v0

    div-int v3, p1, v0

    mul-int/2addr v2, v3

    const v3, 0x9c400

    if-le v2, v3, :cond_0

    .line 76
    const v2, 0x491c4000

    mul-int v3, p0, p1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v0

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 81
    .end local v1           #scale:F
    :cond_1
    int-to-float v2, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 82
    .restart local v1       #scale:F
    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v0

    goto :goto_0
.end method

.method public static decodeFrame(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "frameIndex"
    .parameter "options"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-nez p3, :cond_2

    .line 158
    :cond_0
    const-string v1, "DecodeHelper"

    const-string v2, "decodeFrame:invalid paramters"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    .line 166
    :cond_1
    :goto_0
    return-object v0

    .line 161
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "frameIndex"
    .parameter "options"

    .prologue
    .line 264
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-nez p3, :cond_2

    .line 265
    :cond_0
    const-string v4, "DecodeHelper"

    const-string v5, "decodeFrameSafe:invalid paramters"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    .line 288
    :cond_1
    return-object v0

    .line 271
    :cond_2
    const/4 v0, 0x0

    .line 272
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x8

    .line 273
    .local v3, maxTryNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    :cond_3
    const-string v4, "DecodeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeFrameSafe:try for sample size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeFrame(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    :goto_1
    if-nez v0, :cond_1

    .line 285
    iget v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "DecodeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeFrameSafe:out of memory when decoding:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static decodeImageRegionNoRetry(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jc"
    .parameter "regionDecoder"
    .parameter "imageRect"
    .parameter "options"

    .prologue
    const/4 v2, 0x0

    .line 343
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 344
    :cond_0
    const-string v3, "DecodeHelper"

    const-string v4, "safeDecodeImageRegion:invalid region decoder or rect"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-object v2

    .line 348
    :cond_1
    :try_start_0
    const-string v3, "DecodeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "safeDecodeImageRegion:decodeRegion(rect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e1:Ljava/lang/OutOfMemoryError;
    const-string v3, "DecodeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "safeDecodeImageRegion:out of memory when decoding:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v0           #e1:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 354
    .local v1, e2:Ljava/lang/IllegalArgumentException;
    const-string v3, "DecodeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "safeDecodeImageRegion:out of memory when decoding:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "params"
    .parameter "fd"

    .prologue
    const/4 v4, 0x0

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_1

    .line 173
    const-string v5, "DecodeHelper"

    const-string v6, "decodeLargeBitmap:get null FileDescriptor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    :goto_0
    return-object v4

    .line 176
    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 180
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 181
    const/4 v5, 0x0

    invoke-static {p2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 183
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    :cond_2
    const/high16 v4, 0xa0

    const/16 v5, 0x800

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 190
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 194
    const/4 v4, 0x0

    invoke-static {p2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 200
    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, ex1:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v1           #ex1:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 198
    .local v2, ex2:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "params"
    .parameter "localFilePath"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    .line 207
    const-string v6, "DecodeHelper"

    const-string v7, "decodeLargeBitmap:get null local path"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v6, 0x0

    .line 223
    :goto_0
    return-object v6

    .line 210
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 212
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    .line 214
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 217
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {p0, p1, v2}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 221
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    move-object v6, v0

    .line 223
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 218
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "params"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_1

    .line 230
    const-string v5, "DecodeHelper"

    const-string v6, "decodeLargeBitmap:get null buffer"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    :goto_0
    return-object v4

    .line 233
    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 238
    invoke-static {p2, p3, p4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 240
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 243
    :cond_2
    const/high16 v4, 0xa0

    const/16 v5, 0x800

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 247
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 251
    invoke-static {p2, p3, p4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 258
    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, ex1:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v1           #ex1:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 256
    .local v2, ex2:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .parameter "options"
    .parameter "targetSize"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 104
    if-nez p4, :cond_0

    .line 105
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    .restart local p4
    :cond_0
    iput-boolean v8, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 109
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 110
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    :cond_1
    :goto_0
    return-object v4

    .line 114
    :cond_2
    iget v3, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 115
    .local v3, w:I
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 117
    .local v0, h:I
    if-ne p6, v7, :cond_5

    .line 120
    int-to-float v5, p5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 121
    .local v2, scale:F
    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 125
    iget v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v3, v5

    iget v6, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v0, v6

    mul-int/2addr v5, v6

    const v6, 0x9c400

    if-le v5, v6, :cond_3

    .line 126
    const v5, 0x491c4000

    mul-int v6, v3, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    invoke-static {v5}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 135
    :cond_3
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 137
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 138
    .local v1, result:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 144
    int-to-float v5, p5

    if-ne p6, v7, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    int-to-float v4, v4

    div-float v2, v5, v4

    .line 148
    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4

    .line 149
    invoke-static {v1, v2, v8}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 151
    :cond_4
    invoke-static {v1}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 131
    .end local v1           #result:Landroid/graphics/Bitmap;
    .end local v2           #scale:F
    :cond_5
    int-to-float v5, p5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 132
    .restart local v2       #scale:F
    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 144
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2
.end method

.method public static dumpBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "b"

    .prologue
    .line 431
    invoke-static {p0}, Lcom/mediatek/gallery3d/data/DecodeHelper;->showBitmapInfo(Landroid/graphics/Bitmap;)V

    .line 432
    if-eqz p0, :cond_0

    .line 433
    const/4 v2, 0x0

    .line 435
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/Bitmap["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, filename:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 439
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 444
    if-eqz v3, :cond_0

    .line 446
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 453
    .end local v1           #filename:Ljava/lang/String;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 447
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 448
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #filename:Ljava/lang/String;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 442
    .restart local v0       #ex:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 444
    if-eqz v2, :cond_0

    .line 446
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 447
    :catch_2
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 446
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 449
    :cond_1
    :goto_3
    throw v4

    .line 447
    :catch_3
    move-exception v0

    .line 448
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 444
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 440
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/mediatek/gallery3d/data/RegionDecoder;
    .locals 5
    .parameter "jc"
    .parameter "bitmap"
    .parameter "recycleInput"

    .prologue
    const/4 v1, 0x0

    .line 293
    if-nez p1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-object v1

    .line 296
    :cond_1
    invoke-static {p1}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 297
    .local v0, array:[B
    if-eqz v0, :cond_0

    .line 301
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    :cond_2
    if-eqz p2, :cond_3

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 309
    :cond_3
    new-instance v1, Lcom/mediatek/gallery3d/data/RegionDecoder;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/data/RegionDecoder;-><init>()V

    .line 310
    .local v1, regionDecoder:Lcom/mediatek/gallery3d/data/RegionDecoder;
    iput-object v0, v1, Lcom/mediatek/gallery3d/data/RegionDecoder;->jpegBuffer:[B

    .line 311
    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x1

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/gallery3d/data/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public static getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;I)Lcom/mediatek/gallery3d/data/RegionDecoder;
    .locals 7
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "frameIndex"

    .prologue
    const/4 v2, 0x0

    .line 319
    if-eqz p1, :cond_0

    if-gez p2, :cond_2

    .line 320
    :cond_0
    const-string v3, "DecodeHelper"

    const-string v4, "getRegionDecoder:got null decoder or frameIndex!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    :goto_0
    return-object v2

    .line 323
    :cond_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 324
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/high16 v3, 0xa0

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->width()I

    move-result v5

    invoke-virtual {p1}, Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;->height()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/gallery3d/data/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 329
    invoke-static {p0, p1, p2, v1}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/mpo/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 334
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 335
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 338
    :cond_3
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/mediatek/gallery3d/data/DecodeHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v2

    goto :goto_0
.end method

.method public static openUriInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 6
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 401
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-object v2

    .line 404
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.resource"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "DecodeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openUriInputStream:fail to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 415
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_3
    const-string v3, "DecodeHelper"

    const-string v4, "openUriInputStream:encountered unknow scheme!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    const/4 v1, 0x1

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 p0, 0x0

    .line 98
    .end local p0
    :goto_0
    return-object p0

    .line 92
    .restart local p0
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 93
    invoke-static {p0, p2, v1}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 97
    :goto_1
    invoke-static {p0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 98
    goto :goto_0

    .line 95
    :cond_1
    invoke-static {p0, p2, v1}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1
.end method

.method public static safeDecodeImageRegion(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "regionDecoder"
    .parameter "imageRect"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    .line 363
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 364
    :cond_0
    const-string v5, "DecodeHelper"

    const-string v6, "safeDecodeImageRegion:invalid region decoder or rect"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 397
    :cond_1
    :goto_0
    return-object v0

    .line 368
    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v4

    .line 369
    goto :goto_0

    .line 372
    :cond_3
    const/4 v0, 0x0

    .line 379
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x8

    .line 380
    .local v3, maxTryNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_1

    .line 381
    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v4

    .line 382
    goto :goto_0

    .line 384
    :cond_4
    const-string v5, "DecodeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeImageRegionNoRetry:try for sample size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/gallery3d/data/DecodeHelper;->decodeImageRegionNoRetry(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 388
    if-nez v0, :cond_1

    .line 392
    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "DecodeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "safeDecodeImageRegion:got exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showBitmapInfo(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 423
    const-string v0, "DecodeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBitmapInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eqz p0, :cond_0

    .line 425
    const-string v0, "DecodeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBitmapInfo:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v0, "DecodeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBitmapInfo:config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    return-void
.end method
