.class public Lcom/android/gallery3d/data/LocalAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;,
        Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/gallery3d/data/MediaSet;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = "1) GROUP BY 1,(2"

.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "MAX(datetaken) DESC"

.field private static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"

.field private static final INDEX_BUCKET_ID:I = 0x0

.field private static final INDEX_BUCKET_NAME:I = 0x2

.field private static final INDEX_MEDIA_TYPE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_MPO_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field public static final PATH_ALL:Lcom/android/gallery3d/data/Path; = null

.field public static final PATH_IMAGE:Lcom/android/gallery3d/data/Path; = null

.field public static final PATH_VIDEO:Lcom/android/gallery3d/data/Path; = null

.field private static final PROJECTION_BUCKET:[Ljava/lang/String; = null

.field private static final PURE_BUCKET_GROUP_BY:Ljava/lang/String; = ") GROUP BY 1,(2"

.field private static final TAG:Ljava/lang/String; = "LocalAlbumSet"

.field private static final VIDEO_IMAGE_CLAUSE:Ljava/lang/String; = "media_type=1 OR media_type=3"

.field private static final mBaseUri:Landroid/net/Uri;

.field private static final mWatchUriImage:Landroid/net/Uri;

.field private static final mWatchUriVideo:Landroid/net/Uri;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcom/android/gallery3d/data/Path;

    .line 51
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    .line 52
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    .line 62
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 63
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    .line 64
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_DRM_SUPPORTED:Z

    .line 115
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_MPO_SUPPORTED:Z

    .line 117
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_STEREO_DISPLAY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "path"
    .parameter "application"

    .prologue
    .line 160
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 161
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    .line 163
    invoke-static {p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTypeFromPath(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    .line 164
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 165
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 166
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0245

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/LocalAlbumSet;Lcom/android/gallery3d/util/ThreadPool$JobContext;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->loadBucketEntries(Lcom/android/gallery3d/util/ThreadPool$JobContext;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->findBucket([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200([Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/LocalAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/data/LocalAlbumSet;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/LocalAlbumSet;Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 3
    .parameter
    .parameter "i"
    .parameter "j"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    aget-object v1, p0, p2

    .line 479
    .local v1, temp:Ljava/lang/Object;,"TT;"
    move v0, p2

    .local v0, k:I
    :goto_0
    if-le v0, p1, :cond_0

    .line 480
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 482
    :cond_0
    aput-object v1, p0, p1

    .line 483
    return-void
.end method

.method private static findBucket([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I
    .locals 3
    .parameter "entries"
    .parameter "bucketId"

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p0

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 249
    aget-object v2, p0, v0

    iget v2, v2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketId:I

    if-ne v2, p1, :cond_0

    .line 251
    .end local v0           #i:I
    :goto_1
    return v0

    .line 248
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getAllStereoAlbum(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;>;"
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 255
    sget-boolean v0, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 260
    const-string v0, "LocalAlbumSet"

    const-string v1, "getAllStereoAlbum:no 3D Media folder created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v0

    and-int/lit8 v0, v0, 0x1e

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getOnlyStereoWhereClause(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, whereGroup:Ljava/lang/String;
    const-string v0, "LocalAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllStereoAlbum:whereGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 272
    .local v8, typeBits:I
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 273
    or-int/lit8 v8, v8, 0x2

    .line 275
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 276
    or-int/lit8 v8, v8, 0x8

    .line 279
    :cond_3
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    shl-int v0, v9, v0

    and-int/2addr v0, v8

    if-eqz v0, :cond_3

    .line 281
    new-instance v7, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    const/4 v0, 0x0

    const-string v1, "3D Media"

    invoke-direct {v7, v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 284
    .local v7, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 285
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v7           #entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "bucketId"

    .prologue
    .line 363
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 367
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 371
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 372
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v0, ""

    .line 380
    :goto_0
    return-object v0

    .line 376
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 380
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 376
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;)Lcom/android/gallery3d/data/MediaSet;
    .locals 18
    .parameter "manager"
    .parameter "type"
    .parameter "parent"
    .parameter "id"
    .parameter "name"

    .prologue
    .line 331
    sget-object v16, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v16

    .line 332
    const/4 v3, 0x0

    .line 334
    .local v3, path:Lcom/android/gallery3d/data/Path;
    :try_start_0
    sget-boolean v2, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_DRM_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual/range {p3 .. p3}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(II)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 339
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v15

    .line 340
    .local v15, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v15, :cond_1

    check-cast v15, Lcom/android/gallery3d/data/MediaSet;

    .end local v15           #object:Lcom/android/gallery3d/data/MediaObject;
    monitor-exit v16

    move-object v2, v15

    .line 354
    :goto_1
    return-object v2

    .line 337
    :cond_0
    invoke-virtual/range {p3 .. p4}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 341
    .restart local v15       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 358
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    .end local v15           #object:Lcom/android/gallery3d/data/MediaObject;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 343
    .restart local v15       #object:Lcom/android/gallery3d/data/MediaObject;
    :pswitch_1
    :try_start_1
    new-instance v2, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v6, 0x1

    move/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v16

    goto :goto_1

    .line 345
    :pswitch_2
    new-instance v2, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v6, 0x0

    move/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v16

    goto :goto_1

    .line 347
    :pswitch_3
    sget-object v14, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 348
    .local v14, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    sget-object v7, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    .line 349
    .local v7, imagePath:Lcom/android/gallery3d/data/Path;
    sget-object v11, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    .line 350
    .local v11, videoPath:Lcom/android/gallery3d/data/Path;
    sget-boolean v2, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_DRM_SUPPORTED:Z

    if-eqz v2, :cond_2

    .line 351
    invoke-virtual/range {p3 .. p3}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/data/LocalAlbumSet;->getPathImage(I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 352
    invoke-virtual/range {p3 .. p3}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/data/LocalAlbumSet;->getPathVideo(I)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    .line 354
    :cond_2
    new-instance v2, Lcom/android/gallery3d/data/LocalMergeAlbum;

    const/4 v4, 0x2

    new-array v0, v4, [Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    const/4 v10, 0x0

    const/4 v6, 0x2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v17, v10

    const/4 v4, 0x1

    const/4 v10, 0x4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    aput-object v5, v17, v4

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-direct {v2, v3, v14, v0, v1}, Lcom/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;I)V

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 341
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getPathAll()Lcom/android/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_DRM_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public static getPathImage(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "mtkInclusion"

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_DRM_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "/local/image"

    invoke-static {v0, p0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public static getPathVideo(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "mtkInclusion"

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_DRM_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "/local/video"

    invoke-static {v0, p0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private static getTypeFromPath(Lcom/android/gallery3d/data/Path;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, name:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private loadBucketEntries(Lcom/android/gallery3d/util/ThreadPool$JobContext;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .locals 12
    .parameter "jc"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 194
    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 196
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getWhereClause(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, whereGroup:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 198
    const-string v3, "media_type=1 OR media_type=3) GROUP BY 1,(2"

    .line 204
    :goto_0
    const-string v0, "DebugLoadingTime"

    const-string v2, "start quering media provider"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v5, "MAX(datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 207
    .local v7, cursor:Landroid/database/Cursor;
    const-string v2, "LocalAlbumSet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSubMediaSets: query: uri="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", where="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; result="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-nez v7, :cond_2

    .line 210
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot open local database: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-array v4, v10, [Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .line 243
    :goto_2
    return-object v4

    .line 200
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(media_type=1 OR media_type=3) AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") GROUP BY 1,(2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 207
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "null"

    goto :goto_1

    .line 213
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v6, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;>;"
    sget-boolean v0, Lcom/android/gallery3d/data/LocalAlbumSet;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_3

    .line 217
    invoke-direct {p0, v6}, Lcom/android/gallery3d/data/LocalAlbumSet;->getAllStereoAlbum(Ljava/util/ArrayList;)V

    .line 220
    :cond_3
    const/4 v9, 0x0

    .line 221
    .local v9, typeBits:I
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 222
    or-int/lit8 v9, v9, 0x2

    .line 224
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 225
    or-int/lit8 v9, v9, 0x8

    .line 228
    :cond_5
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    shl-int v0, v11, v0

    and-int/2addr v0, v9

    if-eqz v0, :cond_6

    .line 230
    new-instance v8, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 233
    .local v8, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 234
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v8           #entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    :cond_6
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 241
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 239
    :cond_7
    :try_start_1
    const-string v0, "DebugLoadingTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " buckets"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 243
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    move-object v4, v0

    goto/16 :goto_2

    .line 241
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method fakeChange()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->fakeChange()V

    .line 451
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 423
    :goto_0
    monitor-exit p0

    return-void

    .line 414
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/data/LocalAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/LocalAlbumSet$1;-><init>(Lcom/android/gallery3d/data/LocalAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()J
    .locals 5

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 397
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    .line 398
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/android/gallery3d/data/LocalAlbumSet;Lcom/android/gallery3d/data/LocalAlbumSet$1;)V

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 400
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 401
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 402
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 403
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 404
    .local v0, album:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 395
    .end local v0           #album:Lcom/android/gallery3d/data/MediaSet;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 406
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 408
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method

.method public declared-synchronized synchronizedAlbumData()J
    .locals 4

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 431
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/data/MediaSet;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 433
    .local v0, album:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 436
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 427
    .end local v0           #album:Lcom/android/gallery3d/data/MediaSet;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/data/MediaSet;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 440
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/data/MediaSet;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 443
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/data/MediaSet;>;"
    :cond_2
    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method
