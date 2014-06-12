.class public Lcom/android/gallery3d/data/LocalAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final INVALID_COUNT:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_MPO_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalAlbum"


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereClause:Ljava/lang/String;

.field private final mWhereClauseArgs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalAlbum;->IS_DRM_SUPPORTED:Z

    .line 66
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalAlbum;->IS_MPO_SUPPORTED:Z

    .line 68
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalAlbum;->IS_STEREO_DISPLAY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZ)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"

    .prologue
    .line 147
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/gallery3d/data/LocalAlbumSet;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 61
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 74
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 75
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 76
    iput p3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 77
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p3, p5}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 78
    iput-boolean p4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    .line 80
    if-eqz p4, :cond_3

    .line 82
    sget-boolean v2, Lcom/android/gallery3d/data/LocalAlbum;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getOnlyStereoWhereClause(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 86
    iput-object v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClauseArgs:[Ljava/lang/String;

    .line 99
    :goto_0
    const-string v2, "datetaken DESC, _id DESC"

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 101
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 102
    sget-object v2, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 103
    sget-boolean v2, Lcom/android/gallery3d/data/LocalAlbum;->IS_DRM_SUPPORTED:Z

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/data/LocalImage;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 142
    :goto_1
    new-instance v2, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 143
    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getWhereClause(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, mpoDrmWhereClause:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 91
    const-string v2, "bucket_id = ?"

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 96
    :goto_2
    new-array v2, v5, [Ljava/lang/String;

    iget v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClauseArgs:[Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(bucket_id = ?) AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_2

    .line 106
    .end local v0           #mpoDrmWhereClause:Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    goto :goto_1

    .line 110
    :cond_3
    sget-boolean v2, Lcom/android/gallery3d/data/LocalAlbum;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    if-nez v2, :cond_4

    .line 112
    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getOnlyStereoWhereClause(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 114
    iput-object v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClauseArgs:[Ljava/lang/String;

    .line 131
    :goto_3
    const-string v2, "datetaken DESC, _id DESC"

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 133
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 134
    sget-object v2, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 135
    sget-boolean v2, Lcom/android/gallery3d/data/LocalAlbum;->IS_DRM_SUPPORTED:Z

    if-eqz v2, :cond_7

    .line 136
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/data/LocalVideo;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    goto :goto_1

    .line 117
    :cond_4
    const/4 v1, 0x0

    .line 118
    .local v1, whereClause:Ljava/lang/String;
    sget-boolean v2, Lcom/android/gallery3d/data/LocalAlbum;->IS_DRM_SUPPORTED:Z

    if-eqz v2, :cond_5

    .line 119
    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getWhereClause(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_5
    if-nez v1, :cond_6

    .line 123
    const-string v2, "bucket_id = ?"

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 128
    :goto_4
    new-array v2, v5, [Ljava/lang/String;

    iget v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClauseArgs:[Ljava/lang/String;

    goto :goto_3

    .line 125
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(bucket_id = ?) AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_4

    .line 138
    .end local v1           #whereClause:Ljava/lang/String;
    :cond_7
    sget-object v2, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    goto/16 :goto_1
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 312
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "res"
    .parameter "bucketId"
    .parameter "name"

    .prologue
    .line 371
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne p1, v0, :cond_1

    .line 372
    const v0, 0x7f0c025e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 380
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 373
    .restart local p2
    :cond_1
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p1, v0, :cond_2

    .line 374
    const v0, 0x7f0c025f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 375
    :cond_2
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p1, v0, :cond_3

    .line 376
    const v0, 0x7f0c0260

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 377
    :cond_3
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p1, v0, :cond_0

    .line 378
    const v0, 0x7f0c0261

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "application"
    .parameter "isImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/GalleryApp;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/gallery3d/data/LocalAlbum;->getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;I)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;I)[Lcom/android/gallery3d/data/MediaItem;
    .locals 20
    .parameter "application"
    .parameter "isImage"
    .parameter
    .parameter "mtkInclusion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/GalleryApp;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)[",
            "Lcom/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/android/gallery3d/data/MediaItem;

    move-object/from16 v18, v0

    .line 242
    .local v18, result:[Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    :goto_0
    return-object v18

    .line 243
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 244
    .local v14, idLow:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 250
    .local v13, idHigh:I
    if-eqz p1, :cond_2

    .line 251
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 252
    .local v3, baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 253
    .local v4, projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 254
    .local v16, itemPath:Lcom/android/gallery3d/data/Path;
    if-eqz p3, :cond_1

    .line 255
    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/data/LocalImage;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v16

    .line 266
    :cond_1
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 267
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    .line 268
    .local v10, dataManager:Lcom/android/gallery3d/data/DataManager;
    const-string v5, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 271
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 272
    const-string v5, "LocalAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v16           #itemPath:Lcom/android/gallery3d/data/Path;
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 259
    .restart local v3       #baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 260
    .restart local v4       #projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 261
    .restart local v16       #itemPath:Lcom/android/gallery3d/data/Path;
    if-eqz p3, :cond_1

    .line 262
    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/data/LocalVideo;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v16

    goto :goto_1

    .line 276
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #dataManager:Lcom/android/gallery3d/data/DataManager;
    :cond_3
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 277
    .local v17, n:I
    const/4 v11, 0x0

    .line 279
    .local v11, i:I
    :cond_4
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 280
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 283
    .local v12, id:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v12, :cond_4

    .line 287
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ge v5, v12, :cond_6

    .line 288
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_5

    .line 306
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 293
    :cond_6
    const/4 v8, 0x0

    .line 294
    .local v8, childPath:Lcom/android/gallery3d/data/Path;
    :try_start_1
    sget-boolean v5, Lcom/android/gallery3d/data/LocalAlbum;->IS_DRM_SUPPORTED:Z

    if-eqz v5, :cond_7

    .line 295
    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v5}, Lcom/android/gallery3d/data/Path;->getChild(II)Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 299
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v15

    .line 301
    .local v15, item:Lcom/android/gallery3d/data/MediaItem;
    aput-object v15, v18, v11

    .line 302
    add-int/lit8 v11, v11, 0x1

    .line 303
    goto :goto_2

    .line 297
    .end local v15           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_3

    .line 306
    .end local v8           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v12           #id:I
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #i:I
    .end local v17           #n:I
    :catchall_0
    move-exception v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "path"
    .parameter "cursor"
    .parameter "dataManager"
    .parameter "app"
    .parameter "isImage"

    .prologue
    .line 218
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 219
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 220
    if-eqz p4, :cond_0

    .line 221
    new-instance v0, Lcom/android/gallery3d/data/LocalImage;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 228
    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_0
    return-object v0

    .line 223
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 358
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 359
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClauseArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 362
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 15
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    .line 168
    .local v10, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 170
    .local v2, uri:Landroid/net/Uri;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 172
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClauseArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 176
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 177
    const-string v1, "LocalAlbum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    :goto_0
    return-object v13

    .line 181
    :cond_1
    const/4 v9, 0x0

    .line 182
    .local v9, dataDirty:Z
    const/4 v7, 0x0

    .line 184
    .local v7, childPath:Lcom/android/gallery3d/data/Path;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 187
    .local v11, id:I
    sget-boolean v1, Lcom/android/gallery3d/data/LocalAlbum;->IS_DRM_SUPPORTED:Z

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v3

    invoke-virtual {v1, v11, v3}, Lcom/android/gallery3d/data/Path;->getChild(II)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 192
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v7, v8, v10, v1, v3}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v12

    .line 194
    .local v12, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    if-eqz v12, :cond_2

    move-object v0, v12

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    move-object v1, v0

    iget-boolean v1, v1, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z

    if-eqz v1, :cond_2

    .line 197
    const/4 v9, 0x1

    .line 198
    check-cast v12, Lcom/android/gallery3d/data/LocalMediaItem;

    .end local v12           #item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    .end local v11           #id:I
    :catch_0
    move-exception v14

    .line 202
    .local v14, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "LocalAlbum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in creating media object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v14}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 208
    .end local v14           #t:Ljava/lang/Throwable;
    :goto_3
    if-eqz v9, :cond_0

    .line 209
    const-string v1, "LocalAlbum"

    const-string v3, "getMediaItem:data changed in database."

    invoke-static {v1, v3}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbum;->notifyContentChanged()V

    goto :goto_0

    .line 190
    .restart local v11       #id:I
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v11}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    goto :goto_2

    .line 204
    .end local v11           #id:I
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 318
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClauseArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 323
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 324
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 334
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 328
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 329
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 334
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    goto :goto_0

    .line 331
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 353
    const/16 v0, 0x405

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 346
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 348
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method
