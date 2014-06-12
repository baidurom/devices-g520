.class Lcom/android/gallery3d/data/LocalSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalSource$1;,
        Lcom/android/gallery3d/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucketId"

.field private static final LOCAL_ALL_ALBUM:I = 0x7

.field private static final LOCAL_ALL_ALBUMSET:I = 0x6

.field private static final LOCAL_IMAGE_ALBUM:I = 0x2

.field private static final LOCAL_IMAGE_ALBUMSET:I = 0x0

.field private static final LOCAL_IMAGE_ITEM:I = 0x4

.field private static final LOCAL_VIDEO_ALBUM:I = 0x3

.field private static final LOCAL_VIDEO_ALBUMSET:I = 0x1

.field private static final LOCAL_VIDEO_ITEM:I = 0x5

.field private static final MEDIA_TYPE_ALL:I = 0x0

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final NO_MATCH:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalSource"

.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/android/gallery3d/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalSource$IdComparator;-><init>(Lcom/android/gallery3d/data/LocalSource$1;)V

    sput-object v0, Lcom/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    .line 56
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/LocalSource;->IS_DRM_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 61
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 63
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/*"

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/*"

    invoke-virtual {v0, v1, v7}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/item/*"

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/file"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;
    .locals 7
    .parameter "uri"
    .parameter "defaultType"

    .prologue
    .line 154
    const-string v4, "mediaTypes"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/gallery3d/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result v3

    .line 157
    .local v3, mediaType:I
    const-string v4, "bucketId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, bucketId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 160
    .local v2, id:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 165
    packed-switch v3, :pswitch_data_0

    .line 171
    :pswitch_0
    const-string v4, "/local/all"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    :goto_0
    return-object v4

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid bucket id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v4, 0x0

    goto :goto_0

    .line 167
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_1
    const-string v4, "/local/image"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 169
    :pswitch_2
    const-string v4, "/local/video"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 5
    .parameter "type"
    .parameter "defaultType"

    .prologue
    .line 137
    if-nez p0, :cond_1

    .line 145
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 139
    .restart local p1
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    .local v1, value:I
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    move p1, v1

    .line 141
    goto :goto_0

    .line 142
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;Z)V
    .locals 12
    .parameter
    .parameter "consumer"
    .parameter "isImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    sget-object v10, Lcom/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 263
    .local v6, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_4

    .line 264
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 267
    .local v7, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, v7, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 269
    .local v9, startId:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v4, v1, 0x1

    .local v4, j:I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 273
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 274
    .local v8, pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v10, v8, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, curId:I
    sub-int v10, v0, v9

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_2

    .line 281
    .end local v0           #curId:I
    .end local v8           #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_0
    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v11, v7, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v11

    invoke-static {v10, p3, v2, v11}, Lcom/android/gallery3d/data/LocalAlbum;->getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;I)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 283
    .local v3, items:[Lcom/android/gallery3d/data/MediaItem;
    move v5, v1

    .local v5, k:I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 284
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 286
    .restart local v8       #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    sub-int v10, v5, v1

    aget-object v10, v3, v10

    if-eqz v10, :cond_1

    .line 287
    iget v10, v8, Lcom/android/gallery3d/data/MediaSource$PathId;->id:I

    sub-int v11, v5, v1

    aget-object v11, v3, v11

    invoke-interface {p2, v10, v11}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V

    .line 283
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 278
    .end local v3           #items:[Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #k:I
    .restart local v0       #curId:I
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 291
    .end local v0           #curId:I
    .end local v8           #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    .restart local v3       #items:[Lcom/android/gallery3d/data/MediaItem;
    .restart local v5       #k:I
    :cond_3
    move v1, v4

    .line 292
    goto :goto_0

    .line 293
    .end local v2           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #items:[Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v7           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    .end local v9           #startId:I
    :cond_4
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 13
    .parameter "path"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 89
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v9, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 132
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 93
    :pswitch_0
    new-instance v9, Lcom/android/gallery3d/data/LocalAlbumSet;

    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v9, p1, v10}, Lcom/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    .line 130
    :goto_0
    return-object v9

    .line 95
    :pswitch_1
    new-instance v9, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v10, v12}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v10

    invoke-direct {v9, p1, v0, v10, v11}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    .line 97
    :pswitch_2
    new-instance v9, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v10, v12}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v10

    invoke-direct {v9, p1, v0, v10, v12}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v9, v12}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    .line 103
    .local v1, bucketId:I
    const/4 v4, 0x0

    .line 104
    .local v4, imagePath:Lcom/android/gallery3d/data/Path;
    const/4 v7, 0x0

    .line 105
    .local v7, videoPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v6

    .line 106
    .local v6, mtkInclusion:I
    sget-boolean v9, Lcom/android/gallery3d/data/LocalSource;->IS_DRM_SUPPORTED:Z

    if-eqz v9, :cond_0

    .line 107
    invoke-static {v6}, Lcom/android/gallery3d/data/LocalAlbumSet;->getPathImage(I)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9, v1, v6}, Lcom/android/gallery3d/data/Path;->getChild(II)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 109
    invoke-static {v6}, Lcom/android/gallery3d/data/LocalAlbumSet;->getPathVideo(I)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9, v1, v6}, Lcom/android/gallery3d/data/Path;->getChild(II)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 116
    :goto_1
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 117
    .local v3, dataManager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaSet;

    .line 120
    .local v5, imageSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, v7}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSet;

    .line 123
    .local v8, videoSet:Lcom/android/gallery3d/data/MediaSet;
    sget-object v2, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 124
    .local v2, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    new-instance v9, Lcom/android/gallery3d/data/LocalMergeAlbum;

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/android/gallery3d/data/MediaSet;

    aput-object v5, v10, v12

    aput-object v8, v10, v11

    invoke-direct {v9, p1, v2, v10, v1}, Lcom/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    .line 112
    .end local v2           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v3           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v5           #imageSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v8           #videoSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    sget-object v9, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 113
    sget-object v9, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    goto :goto_1

    .line 128
    .end local v1           #bucketId:I
    .end local v4           #imagePath:Lcom/android/gallery3d/data/Path;
    .end local v6           #mtkInclusion:I
    .end local v7           #videoPath:Lcom/android/gallery3d/data/Path;
    :pswitch_4
    new-instance v9, Lcom/android/gallery3d/data/LocalImage;

    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v11, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v11

    invoke-direct {v9, p1, v10, v11}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    .line 130
    :pswitch_5
    new-instance v9, Lcom/android/gallery3d/data/LocalVideo;

    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v11, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v11

    invoke-direct {v9, p1, v10, v11}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 8
    .parameter "uri"
    .parameter "type"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 178
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    :pswitch_0
    return-object v4

    .line 180
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 181
    .local v1, id:J
    const-string v5, "mtkInclusion"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, mtkInclusion:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 183
    cmp-long v5, v1, v6

    if-gez v5, :cond_1

    .line 186
    .local v4, path:Lcom/android/gallery3d/data/Path;
    :goto_1
    goto :goto_0

    .line 183
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/gallery3d/data/LocalImage;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v1, v2, v6}, Lcom/android/gallery3d/data/Path;->getChild(JI)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_1

    .line 188
    :cond_2
    cmp-long v5, v1, v6

    if-ltz v5, :cond_0

    sget-object v5, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v5, v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 191
    .end local v1           #id:J
    .end local v3           #mtkInclusion:Ljava/lang/String;
    :pswitch_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 192
    .restart local v1       #id:J
    const-string v5, "mtkInclusion"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .restart local v3       #mtkInclusion:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 194
    cmp-long v5, v1, v6

    if-gez v5, :cond_3

    .line 197
    .restart local v4       #path:Lcom/android/gallery3d/data/Path;
    :goto_2
    goto :goto_0

    .line 194
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/gallery3d/data/LocalVideo;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v1, v2, v6}, Lcom/android/gallery3d/data/Path;->getChild(JI)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_2

    .line 199
    :cond_4
    cmp-long v5, v1, v6

    if-ltz v5, :cond_0

    sget-object v5, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v5, v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 202
    .end local v1           #id:J
    .end local v3           #mtkInclusion:Ljava/lang/String;
    :pswitch_3
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 205
    :pswitch_4
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 208
    :pswitch_5
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "LocalSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 3
    .parameter "item"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 220
    .local v0, object:Lcom/android/gallery3d/data/MediaObject;
    instance-of v1, v0, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "/local/all"

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .end local v0           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    .restart local v0       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 7
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v5, videoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 232
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 233
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 236
    .local v4, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v6, v4, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 238
    .local v3, parent:Lcom/android/gallery3d/data/Path;
    sget-boolean v6, Lcom/android/gallery3d/data/LocalSource;->IS_DRM_SUPPORTED:Z

    if-eqz v6, :cond_2

    .line 239
    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v6

    invoke-static {v6}, Lcom/android/gallery3d/data/LocalImage;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    if-ne v3, v6, :cond_1

    .line 240
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v6

    invoke-static {v6}, Lcom/android/gallery3d/data/LocalVideo;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    if-ne v3, v6, :cond_0

    .line 242
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_2
    sget-object v6, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_3

    .line 248
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_3
    sget-object v6, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_0

    .line 250
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    .end local v3           #parent:Lcom/android/gallery3d/data/Path;
    .end local v4           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_4
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6}, Lcom/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    .line 255
    const/4 v6, 0x0

    invoke-direct {p0, v5, p2, v6}, Lcom/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    .line 256
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 322
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 316
    return-void
.end method
