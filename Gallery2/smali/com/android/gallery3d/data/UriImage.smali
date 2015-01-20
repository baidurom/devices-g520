.class public Lcom/android/gallery3d/data/UriImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/UriImage$UriImageRequest;,
        Lcom/android/gallery3d/data/UriImage$BitmapJob;,
        Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_DISPLAY_2D_AS_3D_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_MPO_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UriImage"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mHeight:I

.field private mMpoSubType:I

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/UriImage;->IS_DRM_SUPPORTED:Z

    .line 64
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/UriImage;->IS_MPO_SUPPORTED:Z

    .line 66
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/UriImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    .line 68
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDisplay2dAs3dSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/UriImage;->IS_DISPLAY_2D_AS_3D_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "application"
    .parameter "path"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 86
    invoke-static {}, Lcom/android/gallery3d/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 87
    iput-object p3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    .line 88
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 89
    iput-object p4, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 53
    invoke-static/range {p0 .. p6}, Lcom/android/gallery3d/data/UriImage;->decodeBitmapEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->extractImageInfo(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/data/UriImage;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/data/UriImage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method private static decodeBitmapEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "application"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "type"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    .line 498
    new-instance v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 499
    .local v1, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 500
    iput p4, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    .line 501
    iput p6, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 502
    iget-boolean v0, p5, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    iput-boolean v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    move-object v2, p1

    .line 503
    check-cast v2, Landroid/content/Context;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v7

    .line 505
    .local v7, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v7, :cond_0

    iget-object v6, v7, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 506
    .local v6, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v6}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 505
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private extractImageInfo(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v5, 0x0

    .line 450
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->preferDisplayOriginalSize()Z

    move-result v3

    if-nez v3, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 455
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 457
    sget-boolean v3, Lcom/android/gallery3d/data/UriImage;->IS_DRM_SUPPORTED:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "file"

    iget-object v4, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 462
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 463
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 464
    .local v0, drmUri:Landroid/net/Uri;
    const/4 v3, 0x0

    invoke-static {v2, v0, v5, v3}, Lcom/mediatek/gallery3d/drm/DrmHelper;->forceDecodeDrmUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 469
    .end local v0           #drmUri:Landroid/net/Uri;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :goto_1
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v3, :cond_2

    .line 470
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    .line 471
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    .line 473
    :cond_2
    const-string v3, "UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractImageInfo:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    sget-boolean v3, Lcom/android/gallery3d/data/UriImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v3, :cond_0

    const-string v3, "image/x-jps"

    iget-object v4, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    const-string v3, "UriImage"

    const-string v4, "extractImageInfo:for JPS, assume left/right layout"

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    goto/16 :goto_0

    .line 466
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v5, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private getFileDescriptor(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "jc"

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const/4 v0, 0x0

    .line 492
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method private getModifiedOperations(I)I
    .locals 0
    .parameter "supported"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->modifyForImageType(I)I

    move-result p1

    .line 384
    return p1
.end method

.method private initMpoSubType()V
    .locals 5

    .prologue
    .line 365
    const/4 v2, -0x1

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-ne v2, v3, :cond_0

    .line 366
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 367
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/mediatek/mpo/MpoDecoder;->decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v0

    .line 368
    .local v0, mpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/mediatek/mpo/MpoDecoder;->suggestMtkMpoType()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    .line 370
    invoke-virtual {v0}, Lcom/mediatek/mpo/MpoDecoder;->close()V

    .line 371
    const-string v2, "UriImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMpoSubType:mMpoSubType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0           #mpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private isSharable()Z
    .locals 2

    .prologue
    .line 277
    const-string v0, "file"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private modifyForImageType(I)I
    .locals 3
    .parameter "supported"

    .prologue
    const/high16 v2, 0x1

    .line 389
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/gif"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    or-int/lit16 p1, p1, 0x1000

    .line 395
    :cond_0
    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    sget-boolean v0, Lcom/android/gallery3d/data/UriImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 397
    or-int/2addr p1, v2

    .line 403
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/data/UriImage;->IS_MPO_SUPPORTED:Z

    if-eqz v0, :cond_3

    const-string v0, "image/mpo"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->initMpoSubType()V

    .line 406
    const v0, 0x20002

    iget v1, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-eq v0, v1, :cond_2

    const v0, 0x20001

    iget v1, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-ne v0, v1, :cond_5

    .line 408
    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/data/UriImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_3

    .line 409
    or-int/2addr p1, v2

    .line 418
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/gallery3d/data/UriImage;->IS_DISPLAY_2D_AS_3D_SUPPORTED:Z

    if-eqz v0, :cond_4

    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_4

    and-int v0, p1, v2

    if-nez v0, :cond_4

    and-int/lit16 v0, p1, 0x1000

    if-nez v0, :cond_4

    .line 422
    or-int/2addr p1, v2

    .line 423
    const/high16 v0, 0x8

    or-int/2addr p1, v0

    .line 426
    :cond_4
    return p1

    .line 412
    :cond_5
    or-int/lit16 p1, p1, 0x80

    goto :goto_0
.end method

.method private openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 3
    .parameter "jc"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    .line 104
    .local v0, state:I
    monitor-enter p0

    .line 105
    :try_start_0
    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 106
    iget v1, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I
    .locals 11
    .parameter "jc"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 117
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, scheme:Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.resource"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "file"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 122
    :cond_0
    :try_start_0
    const-string v8, "image/jpeg"

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 123
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 125
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v8

    iput v8, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    .line 126
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    .end local v1           #is:Ljava/io/InputStream;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 130
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 155
    :cond_2
    :goto_0
    return v5

    :cond_3
    move v5, v7

    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to open: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 134
    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    .line 139
    .local v4, url:Ljava/net/URL;
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/android/gallery3d/data/DownloadCache;->download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    .line 140
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 141
    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    if-nez v5, :cond_5

    .line 142
    const-string v5, "UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 143
    goto :goto_0

    .line 145
    :cond_5
    const-string v5, "image/jpeg"

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 146
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 147
    .restart local v1       #is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    .line 148
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 150
    .end local v1           #is:Ljava/io/InputStream;
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v8, 0x1000

    invoke-static {v5, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    .line 152
    goto/16 :goto_0

    .line 153
    .end local v4           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 154
    .local v3, t:Ljava/lang/Throwable;
    const-string v5, "UriImage"

    const-string v7, "download error"

    invoke-static {v5, v7, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 155
    goto/16 :goto_0
.end method

.method private openUriInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 430
    if-nez p1, :cond_0

    .line 446
    :goto_0
    return-object v2

    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.resource"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openUriInputStream:fail to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 445
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_2
    const-string v3, "UriImage"

    const-string v4, "openUriInputStream:encountered unknow scheme!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 161
    new-instance v2, Lcom/android/gallery3d/data/UriImage$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/data/UriImage$1;-><init>(Lcom/android/gallery3d/data/UriImage;)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 170
    :goto_0
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 178
    :goto_1
    return v0

    .line 172
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    if-nez v2, :cond_1

    .line 173
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 175
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 176
    monitor-exit p0

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 177
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 178
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 181
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 185
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 4

    .prologue
    .line 292
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 293
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    if-eqz v2, :cond_0

    .line 294
    const/4 v2, 0x5

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 295
    const/4 v2, 0x6

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 298
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 300
    :cond_1
    const-string v2, "file"

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, filePath:Ljava/lang/String;
    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 303
    invoke-static {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 305
    .end local v1           #filePath:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    return v0
.end method

.method public getStereoLayout()I
    .locals 2

    .prologue
    .line 535
    const-string v0, "image/mpo"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    .line 537
    :cond_0
    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    const/4 v0, 0x2

    goto :goto_0

    .line 541
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubType()I
    .locals 3

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, subType:I
    sget-boolean v1, Lcom/android/gallery3d/data/UriImage;->IS_MPO_SUPPORTED:Z

    if-eqz v1, :cond_0

    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->initMpoSubType()V

    .line 350
    const v1, 0x20003

    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-ne v1, v2, :cond_0

    .line 351
    or-int/lit8 v0, v0, 0x2

    .line 356
    :cond_0
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->preferDisplayOriginalSize()Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    .line 358
    or-int/lit16 v0, v0, 0x200

    .line 361
    :cond_1
    return v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 261
    const/16 v0, 0x220

    .line 262
    .local v0, supported:I
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->isSharable()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    or-int/lit8 v0, v0, 0x40

    .line 267
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/UriImage;->getModifiedOperations(I)I

    move-result v0

    .line 269
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/android/gallery3d/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/UriImage$BitmapJob;-><init>(Lcom/android/gallery3d/data/UriImage;I)V

    return-object v0
.end method

.method public requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$Params;",
            ")",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/data/UriImage$UriImageRequest;-><init>(Lcom/android/gallery3d/data/UriImage;ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/data/UriImage$1;)V

    return-object v0
.end method
