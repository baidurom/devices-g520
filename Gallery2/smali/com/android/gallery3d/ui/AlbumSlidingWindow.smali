.class public Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;,
        Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final JOB_LIMIT:I = 0x2

.field private static final MSG_UPDATE_ENTRY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlbumSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field public mDecodeFinishTime:J

.field public mDecodeFinished:Z

.field private final mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

.field private final mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

.field private final mThreadPool:Lcom/android/gallery3d/util/JobLimiter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/app/AlbumDataLoader;I)V
    .locals 3
    .parameter "activity"
    .parameter "source"
    .parameter "cacheSize"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 71
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 73
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 74
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 78
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 79
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 369
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mDecodeFinished:Z

    .line 370
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mDecodeFinishTime:J

    .line 83
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/app/AlbumDataLoader;->setDataListener(Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;)V

    .line 84
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    .line 85
    new-array v0, p3, [Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 86
    invoke-virtual {p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 88
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 96
    new-instance v0, Lcom/android/gallery3d/util/JobLimiter;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/JobLimiter;-><init>(Lcom/android/gallery3d/util/ThreadPool;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

    .line 97
    new-instance v0, Lcom/android/gallery3d/ui/TextureUploader;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TextureUploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/JobLimiter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/JobLimiter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$506(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-object v0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 226
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 228
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 229
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 230
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 235
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 237
    .local v0, item:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private freeSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 242
    .local v0, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    array-length v3, v0

    rem-int v2, p1, v3

    .line 243
    .local v2, index:I
    aget-object v1, v0, v2

    .line 244
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 245
    :cond_0
    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 246
    :cond_1
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 247
    return-void
.end method

.method private prepareSlotContent(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    const/4 v3, 0x0

    .line 250
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;-><init>()V

    .line 251
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 252
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    iput-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    .line 253
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    .line 254
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    .line 257
    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    iput-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    .line 258
    if-nez v1, :cond_2

    move v2, v3

    :goto_2
    iput v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    .line 259
    new-instance v2, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v2, p0, p1, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 262
    if-nez v1, :cond_3

    :goto_3
    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->subType:I

    .line 264
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aput-object v0, v2, v3

    .line 265
    return-void

    .line 254
    :cond_0
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    goto :goto_2

    .line 262
    :cond_3
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v3

    goto :goto_3
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 207
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 209
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 210
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 211
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method private requestSlotImage(I)Z
    .locals 4
    .parameter "slotIndex"

    .prologue
    const/4 v1, 0x0

    .line 217
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v0, v2, v3

    .line 219
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    .line 221
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 222
    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v1

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 117
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 152
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v2, :cond_1

    .line 120
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 121
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 122
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    goto :goto_0

    .line 126
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_4

    .line 127
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 128
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 131
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_8

    .line 132
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 135
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 136
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 138
    :cond_5
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 139
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 141
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 142
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_7

    .line 143
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 145
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_8

    .line 146
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 150
    :cond_8
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 151
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 3

    .prologue
    .line 268
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 269
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 270
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v2, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    .line 277
    :goto_1
    return-void

    .line 275
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 181
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 199
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 185
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 186
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 187
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_2

    .line 188
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 185
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_3
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 195
    .local v3, range:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 196
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 197
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBgTextureInSlot(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 172
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 174
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 178
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 113
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllActiveSlotsFilled()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 375
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 376
    .local v4, start:I
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 378
    .local v0, end:I
    if-ltz v4, :cond_0

    if-lt v4, v0, :cond_2

    .line 379
    :cond_0
    const-string v6, "AlbumSlidingWindow"

    const-string v7, "isAllActiveSlotFilled: active range not ready yet"

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    :goto_0
    return v5

    .line 384
    :cond_2
    move v2, v4

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 385
    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v8, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v8, v8

    and-int/2addr v8, v2

    aget-object v1, v7, v8

    .line 386
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-eqz v1, :cond_3

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v7

    if-eqz v7, :cond_3

    #getter for: Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmapLoaded:Z

    if-eqz v7, :cond_3

    move v3, v6

    .line 387
    .local v3, isLoaded:Z
    :goto_2
    if-eqz v3, :cond_1

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #isLoaded:Z
    :cond_3
    move v3, v5

    .line 386
    goto :goto_2

    .end local v1           #entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_4
    move v5, v6

    .line 392
    goto :goto_0
.end method

.method public onContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 342
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 344
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 345
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    .line 350
    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 332
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 333
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 334
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    .line 335
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 336
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 338
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 361
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 362
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 363
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 364
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 353
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 354
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 355
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 358
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x0

    .line 155
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 156
    :cond_0
    const-string v3, "%s, %s, %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 160
    .local v2, data:[Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 161
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 163
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 165
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setContentWindow(II)V

    .line 167
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    .line 168
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 169
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    .line 102
    return-void
.end method
