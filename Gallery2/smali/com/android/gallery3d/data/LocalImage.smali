.class public Lcom/android/gallery3d/data/LocalImage;
.super Lcom/android/gallery3d/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;,
        Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;,
        Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DRM_METHOD:I = 0xf

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_IS_DRM:I = 0xe

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_MPO_SUB_TYPE:I = 0x10

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_STEREO_TYPE:I = 0x11

.field private static final INDEX_WIDTH:I = 0xc

#the value of this static final field might be set in the static constructor
.field private static final IS_DISPLAY_2D_AS_3D_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_GIF_ANIMATION_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_MPO_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_PRINT_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field static final ITEM_PATH:Lcom/android/gallery3d/data/Path; = null

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocalImage"


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field public mMpoSubType:I

.field private mSniffedMimetype:Ljava/lang/String;

.field private mStereoDimAdjusted:Z

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 71
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_DRM_SUPPORTED:Z

    .line 73
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_MPO_SUPPORTED:Z

    .line 75
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isBluetoothPrintSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_PRINT_SUPPORTED:Z

    .line 77
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    .line 79
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDisplay2dAs3dSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_DISPLAY_2D_AS_3D_SUPPORTED:Z

    .line 81
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifAnimationSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_GIF_ANIMATION_SUPPORTED:Z

    .line 112
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_drm"

    #aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "drm_method"

    #aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mpo_type"

    #aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "stereo_type"

    #aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "id"

    .prologue
    .line 146
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 86
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 87
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 147
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 148
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 149
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 150
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 152
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 163
    return-void

    .line 158
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find data for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    .line 140
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 141
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 142
    invoke-direct {p0, p3}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 56
    invoke-static/range {p0 .. p5}, Lcom/android/gallery3d/data/LocalImage;->decodeOriginEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private adjustDimIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 549
    const-string v1, "image/x-jps"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    if-nez v1, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getStereoLayout()I

    move-result v0

    .line 552
    .local v0, layout:I
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v3, v0, v1}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 553
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v1, v0, v2}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 554
    iput-boolean v3, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 556
    .end local v0           #layout:I
    :cond_0
    return-void
.end method

.method private attachMtkDetails(Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 8
    .parameter "details"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    .line 713
    const/4 v0, 0x1

    .line 714
    .local v0, dimensionAvailable:Z
    invoke-virtual {p1, v6}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    .line 715
    .local v3, objW:Ljava/lang/Object;
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 716
    .local v2, objH:Ljava/lang/Object;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 717
    :cond_0
    const/4 v0, 0x0

    .line 718
    const-string v4, "LocalImage"

    const-string v5, "attachMtkDetails: no width/height found in details, will use DB data"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1
    if-eqz v0, :cond_3

    .line 722
    :try_start_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 723
    check-cast v3, Ljava/lang/String;

    .end local v3           #objW:Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 724
    const/4 v0, 0x0

    .line 725
    const-string v4, "LocalImage"

    const-string v5, "attachMtkDetails: width is 0, use DB data"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_2
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 729
    check-cast v2, Ljava/lang/String;

    .end local v2           #objH:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 730
    const/4 v0, 0x0

    .line 731
    const-string v4, "LocalImage"

    const-string v5, "attachMtkDetails: height is 0, use DB data"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 746
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalImage;->adjustDimIfNeeded()V

    .line 747
    iget v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 748
    iget v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v7, v4}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 750
    :cond_4
    return-void

    .line 734
    :catch_0
    move-exception v1

    .line 736
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalImage"

    const-string v5, "attachMtkDetails: exception: "

    invoke-static {v4, v5, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static decodeOriginEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "jc"
    .parameter "application"
    .parameter "filePath"
    .parameter "type"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    .line 452
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 453
    .local v2, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 454
    iput p3, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inType:I

    .line 455
    iput p5, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 456
    iget-boolean v3, p4, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    iput-boolean v3, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    .line 457
    check-cast p1, Landroid/content/Context;

    .end local p1
    const/4 v3, 0x0

    invoke-static {p0, v2, p1, p2, v3}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    .line 459
    .local v1, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 460
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 459
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 358
    sparse-switch p0, :sswitch_data_0

    .line 368
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 360
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    .line 362
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static getItemPath(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "mtkInclusion"

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .line 64
    const-string v0, "/local/image/item"

    invoke-static {v0, p0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private getModifiedOperations(I)I
    .locals 1
    .parameter "operation"

    .prologue
    .line 617
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_PRINT_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 618
    or-int/lit16 p1, p1, 0x4000

    .line 622
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/LocalImage;->modifyForImageType(I)I

    move-result p1

    .line 625
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/LocalImage;->modifyForDRM(I)I

    move-result p1

    .line 627
    return p1
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 167
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 168
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 169
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 170
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 171
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 174
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 175
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 177
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 178
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    .line 179
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 180
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 181
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 182
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 185
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_DRM_SUPPORTED:Z

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 186
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_drm:I

    .line 187
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    .line 190
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    .line 191
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 193
    :cond_1
    goto :goto_baidu_0

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 195
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->stereoType:I

    .line 196
    :goto_baidu_0
    return-void
.end method

.method private modifyForDRM(I)I
    .locals 2
    .parameter "operation"

    .prologue
    .line 666
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, p1

    .line 709
    .end local p1
    .local v0, operation:I
    :goto_0
    return v0

    .line 671
    .end local v0           #operation:I
    .restart local p1
    :cond_1
    const v1, 0x8000

    or-int/2addr p1, v1

    .line 673
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/LocalImage;->isDrmMethod(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 678
    or-int/lit16 p1, p1, 0x2000

    .line 681
    :cond_2
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3

    .line 682
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/LocalImage;->drmRights(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 684
    and-int/lit8 p1, p1, -0x21

    .line 688
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 689
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/LocalImage;->drmRights(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 691
    and-int/lit8 p1, p1, -0x5

    .line 695
    :cond_4
    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->IS_PRINT_SUPPORTED:Z

    if-eqz v1, :cond_5

    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_5

    .line 697
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/LocalImage;->drmRights(I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 699
    and-int/lit16 p1, p1, -0x4001

    .line 705
    :cond_5
    and-int/lit8 p1, p1, -0x9

    .line 706
    and-int/lit16 p1, p1, -0x201

    .line 707
    and-int/lit8 p1, p1, -0x3

    move v0, p1

    .line 709
    .end local p1
    .restart local v0       #operation:I
    goto :goto_0
.end method

.method private modifyForImageType(I)I
    .locals 3
    .parameter "operation"

    .prologue
    const/high16 v2, 0x1

    .line 632
    const-string v0, "image/mpo"

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    const v0, 0x20003

    iget v1, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    if-ne v0, v1, :cond_1

    .line 637
    const/16 p1, 0x485

    .line 660
    :cond_0
    :goto_0
    return p1

    .line 640
    :cond_1
    or-int/lit8 p1, p1, 0x40

    .line 641
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 642
    or-int/2addr p1, v2

    goto :goto_0

    .line 645
    :cond_2
    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    or-int/lit8 p1, p1, 0x40

    .line 648
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 649
    or-int/2addr p1, v2

    goto :goto_0

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isSupportedByGifDecoder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 653
    or-int/lit16 p1, p1, 0x1000

    goto :goto_0

    .line 654
    :cond_4
    sget-boolean v0, Lcom/android/gallery3d/data/LocalImage;->IS_DISPLAY_2D_AS_3D_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 657
    or-int/2addr p1, v2

    .line 658
    const/high16 v0, 0x8

    or-int/2addr p1, v0

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 350
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 351
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 352
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 355
    return-void
.end method

.method public drmRights(I)I
    .locals 2
    .parameter "action"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/mediatek/gallery3d/drm/DrmHelper;->checkRightsStatus(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 402
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 403
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 413
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 414
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 415
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalImage;->attachMtkDetails(Lcom/android/gallery3d/data/MediaDetails;)V

    .line 419
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalImage;->adjustDimIfNeeded()V

    .line 442
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    return v0
.end method

.method public getStereoLayout()I
    .locals 2

    .prologue
    .line 508
    const-string v0, "image/mpo"

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x1

    .line 514
    :goto_0
    return v0

    .line 510
    :cond_0
    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    const/4 v0, 0x2

    goto :goto_0

    .line 514
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubType()I
    .locals 8

    .prologue
    .line 559
    const/4 v3, 0x0

    .line 561
    .local v3, subType:I
    const-string v5, "image/mpo"

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 563
    const v5, 0x20003

    iget v6, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    if-ne v5, v6, :cond_6

    .line 564
    or-int/lit8 v3, v3, 0x2

    .line 576
    :cond_0
    :goto_0
    const-string v5, "image/x-jps"

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
    sget-boolean v5, Lcom/android/gallery3d/data/LocalImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v5, :cond_1

    .line 578
    or-int/lit8 v3, v3, 0x40

    .line 583
    :cond_1
    sget-boolean v5, Lcom/android/gallery3d/data/LocalImage;->IS_DRM_SUPPORTED:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    if-eq v5, v6, :cond_2

    .line 585
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->hasDrmRights()Z

    move-result v5

    if-nez v5, :cond_8

    .line 586
    or-int/lit8 v3, v3, 0x4

    .line 594
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 595
    .local v1, isSpecialImage:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getWidth()I

    move-result v4

    .line 596
    .local v4, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getHeight()I

    move-result v0

    .line 597
    .local v0, h:I
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit16 v2, v5, 0x280

    .line 598
    .local v2, scale:I
    if-eqz v2, :cond_4

    div-int v5, v4, v2

    if-eqz v5, :cond_3

    div-int v5, v0, v2

    if-nez v5, :cond_4

    .line 599
    :cond_3
    const/4 v1, 0x1

    .line 600
    const-string v5, "LocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is special image, w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_4
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->preferDisplayOriginalSize()Z

    move-result v5

    if-eqz v5, :cond_5

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    .line 607
    const-string v5, "TD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    or-int/lit16 v3, v3, 0x200

    .line 611
    :cond_5
    return v3

    .line 565
    .end local v0           #h:I
    .end local v1           #isSpecialImage:Z
    .end local v2           #scale:I
    .end local v4           #w:I
    :cond_6
    const v5, 0x20002

    iget v6, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    if-ne v5, v6, :cond_7

    .line 566
    or-int/lit8 v3, v3, 0x10

    goto/16 :goto_0

    .line 567
    :cond_7
    const v5, 0x20001

    iget v6, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    if-ne v5, v6, :cond_0

    .line 571
    or-int/lit8 v3, v3, 0x10

    goto/16 :goto_0

    .line 588
    :cond_8
    or-int/lit8 v3, v3, 0x8

    goto/16 :goto_1
.end method

.method public getSupportedOperations()I
    .locals 5

    .prologue
    .line 328
    const/16 v0, 0x62d

    .line 331
    .local v0, operation:I
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    or-int/lit8 v0, v0, 0x40

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    or-int/lit8 v0, v0, 0x2

    .line 339
    :cond_1
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    or-int/lit8 v0, v0, 0x10

    .line 343
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalImage;->getModifiedOperations(I)I

    move-result v0

    .line 345
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalImage;->adjustDimIfNeeded()V

    .line 433
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    return v0
.end method

.method public hasDrmRights()Z
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/mediatek/gallery3d/drm/DrmHelper;->checkRightsStatus(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeInterval()Z
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/mediatek/gallery3d/drm/DrmHelper;->isTimeIntervalMedia(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 7
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
    .line 245
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;J)V

    return-object v0
.end method

.method public requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 7
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
    .line 466
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

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
    .line 310
    new-instance v0, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 10
    .parameter "degrees"

    .prologue
    .line 374
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 375
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 376
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v4, values:Landroid/content/ContentValues;
    iget v5, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    add-int/2addr v5, p1

    rem-int/lit16 v3, v5, 0x168

    .line 378
    .local v3, rotation:I
    if-gez v3, :cond_0

    add-int/lit16 v3, v3, 0x168

    .line 380
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const-string v6, "image/jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 383
    .local v2, exif:Landroid/media/ExifInterface;
    const-string v5, "Orientation"

    invoke-static {v3}, Lcom/android/gallery3d/data/LocalImage;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v2           #exif:Landroid/media/ExifInterface;
    :goto_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 392
    const-string v5, "_size"

    iget-wide v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    :cond_1
    const-string v5, "orientation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    return-void

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, e:Ljava/io/IOException;
    const-string v5, "LocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot set exif data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 200
    new-instance v0, Lcom/android/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/android/gallery3d/util/UpdateHelper;-><init>()V

    .line 201
    .local v0, uh:Lcom/android/gallery3d/util/UpdateHelper;
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 202
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 204
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 205
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 206
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 208
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 210
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 212
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 213
    iget v1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalImage;->rotation:I

    .line 214
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 215
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 217
    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_0

    const-string v1, "image/x-jps"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 219
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 220
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 229
    :goto_0
    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->IS_DRM_SUPPORTED:Z

    const/4 v1, 0x0

    if-eqz v1, :cond_1

    .line 230
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_drm:I

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->is_drm:I

    .line 231
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->drm_method:I

    .line 234
    :cond_1
    sget-boolean v1, Lcom/android/gallery3d/data/LocalImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_2

    .line 235
    iput-boolean v5, p0, Lcom/android/gallery3d/data/LocalImage;->mStereoDimAdjusted:Z

    .line 237
    :cond_2
    goto :goto_baidu_0

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalImage;->mMpoSubType:I

    .line 239
    iget v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->stereoType:I

    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->stereoType:I

    .line 240
    :goto_baidu_0
    invoke-virtual {v0}, Lcom/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1

    .line 224
    :cond_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 225
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    goto :goto_0
.end method
