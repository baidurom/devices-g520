.class public abstract Lcom/android/gallery3d/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# static fields
.field public static final CACHE_FLAG_FULL:I = 0x2

.field public static final CACHE_FLAG_NO:I = 0x0

.field public static final CACHE_FLAG_SCREENNAIL:I = 0x1

.field public static final CACHE_STATUS_CACHED_FULL:I = 0x3

.field public static final CACHE_STATUS_CACHED_SCREENNAIL:I = 0x2

.field public static final CACHE_STATUS_CACHING:I = 0x1

.field public static final CACHE_STATUS_NOT_CACHED:I = 0x0

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final MEDIA_TYPE_ALL:I = 0x6

.field public static final MEDIA_TYPE_ALL_STRING:Ljava/lang/String; = "all"

.field public static final MEDIA_TYPE_IMAGE:I = 0x2

.field public static final MEDIA_TYPE_IMAGE_STRING:Ljava/lang/String; = "image"

.field public static final MEDIA_TYPE_UNKNOWN:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x4

.field public static final MEDIA_TYPE_VIDEO_STRING:Ljava/lang/String; = "video"

.field public static final SUBTYPE_DRM_HAS_RIGHT:I = 0x8

.field public static final SUBTYPE_DRM_NO_RIGHT:I = 0x4

.field public static final SUBTYPE_MPO_3D:I = 0x10

.field public static final SUBTYPE_MPO_3D_PAN:I = 0x20

.field public static final SUBTYPE_MPO_MAV:I = 0x2

.field public static final SUBTYPE_ORIGIN_SIZE:I = 0x200

.field public static final SUBTYPE_PANORAMA:I = 0x1

.field public static final SUBTYPE_STEREO_JPS:I = 0x40

.field public static final SUBTYPE_STEREO_VIDEO:I = 0x80

.field public static final SUBTYPE_WHITE_BGD:I = 0x100

.field public static final SUPPORT_ALL:I = -0x1

.field public static final SUPPORT_CACHE:I = 0x100

.field public static final SUPPORT_CONSUME_DRM:I = 0x2000

.field public static final SUPPORT_CONVERT_TO_3D:I = 0x80000

.field public static final SUPPORT_CROP:I = 0x8

.field public static final SUPPORT_DELETE:I = 0x1

.field public static final SUPPORT_DRM_INFO:I = 0x8000

.field public static final SUPPORT_EDIT:I = 0x200

.field public static final SUPPORT_FULL_IMAGE:I = 0x40

.field public static final SUPPORT_GIF_ANIMATION:I = 0x1000

.field public static final SUPPORT_IMPORT:I = 0x800

.field public static final SUPPORT_INFO:I = 0x400

.field public static final SUPPORT_PLAY:I = 0x80

.field public static final SUPPORT_PQ:I = 0x100000

.field public static final SUPPORT_PRINT:I = 0x4000

.field public static final SUPPORT_ROTATE:I = 0x2

.field public static final SUPPORT_SETAS:I = 0x20

.field public static final SUPPORT_SHARE:I = 0x4

.field public static final SUPPORT_SHOW_ON_MAP:I = 0x10

.field public static final SUPPORT_STEREO_DISPLAY:I = 0x10000

.field public static final SUPPORT_SWITCHTO_2D:I = 0x20000

.field public static final SUPPORT_SWITCHTO_3D:I = 0x40000

.field private static final TAG:Ljava/lang/String; = "MediaObject"

.field private static sVersionSerial:J


# instance fields
.field protected mDataVersion:J

.field protected final mPath:Lcom/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/gallery3d/data/MediaObject;->sVersionSerial:J

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/data/Path;->setObject(Lcom/android/gallery3d/data/MediaObject;)V

    .line 103
    iput-object p1, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    .line 104
    iput-wide p2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 105
    return-void
.end method

.method public static getTypeFromString(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 169
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 171
    :goto_0
    return v0

    .line 170
    :cond_0
    const-string v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 176
    packed-switch p0, :pswitch_data_0

    .line 181
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 177
    :pswitch_1
    const-string v0, "image"

    .line 179
    :goto_0
    return-object v0

    .line 178
    :pswitch_2
    const-string v0, "video"

    goto :goto_0

    .line 179
    :pswitch_3
    const-string v0, "all"

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    .prologue
    .line 165
    const-class v1, Lcom/android/gallery3d/data/MediaObject;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/android/gallery3d/data/MediaObject;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/gallery3d/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Import()Z
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cache(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheFlag()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheSize()J
    .locals 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheStatus()I
    .locals 1

    .prologue
    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDataVersion()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails;

    invoke-direct {v0}, Lcom/android/gallery3d/data/MediaDetails;-><init>()V

    .line 141
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Lcom/android/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synchronizedAlbumData()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method
