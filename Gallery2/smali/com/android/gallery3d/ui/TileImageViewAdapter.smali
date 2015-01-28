.class public Lcom/android/gallery3d/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/ui/TileImageView$Model;


# static fields
.field private static final TAG:Ljava/lang/String; = "TileImageViewAdapter"


# instance fields
.field private mEnablePQ:Z

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private final mIntersectRect:Landroid/graphics/Rect;

.field protected mLevelCount:I

.field protected mOwnScreenNail:Z

.field protected final mOwnStereoScreenNail:[Z

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private final mRegionRect:Landroid/graphics/Rect;

.field protected mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field protected final mStereoScreenNail:[Lcom/android/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v0, v1, [Lcom/android/gallery3d/ui/ScreenNail;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mStereoScreenNail:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 41
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mOwnStereoScreenNail:[Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mEnablePQ:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 3
    .parameter "bitmap"
    .parameter "regionDecoder"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v0, v2, [Lcom/android/gallery3d/ui/ScreenNail;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mStereoScreenNail:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 41
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mOwnStereoScreenNail:[Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 220
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mEnablePQ:Z

    .line 51
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 53
    iput-object p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 54
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 55
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 57
    return-void
.end method

.method private calculateLevelCount()I
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V
    .locals 1
    .parameter "screenNail"
    .parameter "own"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mOwnScreenNail:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 95
    iput-boolean p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mOwnScreenNail:Z

    .line 96
    return-void
.end method

.method private updateStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;Z)V
    .locals 1
    .parameter "stereoIndex"
    .parameter "screenNail"
    .parameter "own"

    .prologue
    .line 248
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mStereoScreenNail:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mOwnStereoScreenNail:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mStereoScreenNail:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mStereoScreenNail:[Lcom/android/gallery3d/ui/ScreenNail;

    aput-object p2, v0, p1

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mOwnStereoScreenNail:[Z

    aput-boolean p3, v0, p1

    .line 255
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    const-string v0, "TileImageViewAdapter"

    const-string v1, "clear()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 67
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 68
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearRegionDecoder()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 258
    monitor-enter p0

    :try_start_0
    const-string v1, "TileImageViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] clearRegionDecoder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 260
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 261
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    .line 260
    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "stereoIndex"

    .prologue
    .line 242
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mStereoScreenNail:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v0, v0, p1

    return-object v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"

    .prologue
    .line 124
    shl-int v1, p5, p1

    .line 125
    .local v1, b:I
    shl-int v7, p4, p1

    .line 127
    .local v7, t:I
    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, p2, v1

    sub-int v10, p3, v1

    add-int v11, p2, v7

    add-int/2addr v11, v1

    add-int v12, p3, v7

    add-int/2addr v12, v1

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    .local v8, wantRegion:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 132
    .local v5, regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 134
    if-nez v5, :cond_1

    const/4 v2, 0x0

    monitor-exit p0

    .line 174
    :cond_0
    :goto_0
    return-object v2

    .line 138
    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v13, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v3, 0x1

    .line 140
    .local v3, needClear:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-nez p6, :cond_6

    const/4 v2, 0x0

    .line 143
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v2, :cond_7

    .line 144
    if-eqz v3, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 150
    :cond_2
    :goto_3
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 151
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 152
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 153
    const/4 v9, 0x1

    shl-int/2addr v9, p1

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 154
    iput-object v2, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 157
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mEnablePQ:Z

    invoke-static {v4, v9}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 161
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 162
    :try_start_2
    invoke-virtual {v5, v8, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 163
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v9, v2, :cond_4

    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_4

    .line 166
    if-eqz p6, :cond_3

    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 167
    :cond_3
    const/4 v9, 0x0

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 171
    :cond_4
    if-nez v2, :cond_0

    .line 172
    const-string v9, "TileImageViewAdapter"

    const-string v10, "fail in decoding region"

    invoke-static {v9, v10}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #needClear:Z
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 140
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 142
    .restart local v3       #needClear:Z
    :cond_6
    invoke-virtual/range {p6 .. p6}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 146
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    mul-int/lit8 v9, p5, 0x2

    add-int v6, p4, v9

    .line 147
    .local v6, s:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 163
    .end local v6           #s:I
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 165
    :catchall_2
    move-exception v9

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v10, v2, :cond_9

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_9

    .line 166
    if-eqz p6, :cond_8

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 167
    :cond_8
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_9
    throw v9
.end method

.method public setEnablePQ(Z)V
    .locals 0
    .parameter "enablePQ"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mEnablePQ:Z

    .line 223
    return-void
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 100
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 101
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 102
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;II)V
    .locals 2
    .parameter "decoder"
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 214
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 215
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 216
    iput p4, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 217
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;Lcom/android/gallery3d/ui/ScreenNail;II)V
    .locals 1
    .parameter "decoder"
    .parameter "screenNail"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 204
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 205
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 206
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 207
    iput p4, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 208
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenNail(Landroid/graphics/Bitmap;II)V
    .locals 2
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 74
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 75
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V
    .locals 1
    .parameter "screenNail"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateScreenNail(Lcom/android/gallery3d/ui/ScreenNail;Z)V

    .line 84
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 85
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStereoScreenNail(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "stereoIndex"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x1

    .line 231
    monitor-enter p0

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 232
    if-eqz p2, :cond_1

    .line 233
    new-instance v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_1
    monitor-exit p0

    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;)V
    .locals 2
    .parameter "stereoIndex"
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    .line 226
    monitor-enter p0

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->updateStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
