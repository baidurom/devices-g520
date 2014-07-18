.class public abstract Lcom/android/gallery3d/data/MediaItem;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4

.field public static final CACHED_IMAGE_QUALITY:I = 0x5f

.field public static final IMAGE_ERROR:I = -0x1

.field public static final IMAGE_READY:I = 0x0

.field public static final IMAGE_WAIT:I = 0x1

.field public static final INVALID_LATLNG:D = 0.0

.field public static final MICROTHUMBNAIL_TARGET_SIZE:I = 0xc8

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x280

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_THUMBNAIL:I = 0x1

.field private static final sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

.field private static final sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

.field private static final sThumbPool:Lcom/android/gallery3d/data/BitmapPool;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x4

    .line 48
    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    const/16 v1, 0x10

    invoke-direct {v0, v3, v3, v1}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    .line 50
    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/BitmapPool;-><init>(I)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    .line 51
    new-instance v0, Lcom/android/gallery3d/data/BytesBufferPool;

    const v1, 0x32000

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 66
    return-void
.end method

.method public static getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 117
    packed-switch p0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :pswitch_0
    const/16 v0, 0x280

    .line 121
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbPool()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sThumbPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method


# virtual methods
.method public drmRights(I)I
    .locals 1
    .parameter "action"

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Lcom/android/gallery3d/data/Face;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    const-wide/16 v1, 0x0

    .line 77
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 78
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 79
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStereoLayout()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public hasDrmRights()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public isDrmMethod(I)Z
    .locals 1
    .parameter "method"

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeInterval()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public abstract requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
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
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method