.class public Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ALBUM_ENTRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

.field public mDecodeFinishTime:J

.field public mDecodeFinished:Z

.field private final mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

.field private mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

.field private final mLoadingText:Ljava/lang/String;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private final mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 2
    .parameter "activity"
    .parameter "source"
    .parameter "labelSpec"
    .parameter "cacheSize"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 52
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 54
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 55
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 66
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 67
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 578
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mDecodeFinished:Z

    .line 579
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mDecodeFinishTime:J

    .line 99
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setModelListener(Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;)V

    .line 100
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 101
    new-array v0, p4, [Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 102
    invoke-virtual {p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 103
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 105
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/gallery3d/ui/AlbumLabelMaker;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    .line 106
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/android/gallery3d/ui/TextureUploader;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TextureUploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    .line 109
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 116
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$606(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumLabelMaker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    return-object v0
.end method

.method private cancelImagesInSlot(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 220
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 222
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    .line 223
    :cond_2
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 204
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 206
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 207
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 208
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 234
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 235
    :cond_0
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 236
    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 237
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 239
    return-void
.end method

.method private static getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J
    .locals 2
    .parameter "object"

    .prologue
    .line 227
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 477
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 479
    :cond_0
    const/4 v0, 0x0

    .line 482
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v0

    goto :goto_0
.end method

.method private static identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 486
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 488
    :cond_0
    const/4 v0, 0x0

    .line 491
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getCacheStatus()I

    move-result v0

    goto :goto_0
.end method

.method private isLabelChanged(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z
    .locals 1
    .parameter "entry"
    .parameter "title"
    .parameter "totalCount"
    .parameter "sourceType"

    .prologue
    .line 243
    iget-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    if-ne v0, p3, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareSlotContent(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 297
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    .line 298
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 299
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aput-object v0, v1, v2

    .line 300
    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 213
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 215
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 216
    :cond_2
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    goto :goto_0
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 195
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 197
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 198
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 199
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 139
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 141
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 142
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 143
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 146
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 147
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 151
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 153
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 154
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 156
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 157
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 158
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 160
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 161
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 165
    :cond_7
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 166
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private static startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z
    .locals 1
    .parameter "loader"

    .prologue
    .line 303
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 305
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method private updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 12
    .parameter "entry"
    .parameter "slotIndex"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    .line 250
    .local v6, album:Lcom/android/gallery3d/data/MediaSet;
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getCoverItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    .line 251
    .local v7, cover:Lcom/android/gallery3d/data/MediaItem;
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getTotalCount(I)I

    move-result v4

    .line 253
    .local v4, totalCount:I
    iput-object v6, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    .line 254
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setDataVersion:J

    .line 255
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheFlag:I

    .line 256
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheStatus:I

    .line 257
    if-nez v6, :cond_4

    move-object v0, v8

    :goto_0
    iput-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    .line 259
    if-nez v6, :cond_5

    const-string v3, ""

    .line 260
    .local v3, title:Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v5

    .line 261
    .local v5, sourceType:I
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isLabelChanged(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iput-object v3, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 263
    iput v4, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 264
    iput v5, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    .line 265
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 267
    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 268
    iput-object v8, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 270
    :cond_0
    if-eqz v6, :cond_1

    .line 271
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 276
    :cond_1
    iput-object v7, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    .line 277
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iget-wide v10, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_3

    .line 278
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    .line 279
    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isPanorama:Z

    .line 280
    if-nez v7, :cond_6

    move v0, v9

    :goto_2
    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    .line 281
    if-nez v7, :cond_7

    :goto_3
    iput v9, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->mediaType:I

    .line 282
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 283
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 284
    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 285
    iput-object v8, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 286
    iput-object v8, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/ui/Texture;

    .line 288
    :cond_2
    if-eqz v7, :cond_3

    .line 289
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-direct {v0, p0, p2, v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 291
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v0

    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->subType:I

    .line 294
    :cond_3
    return-void

    .line 257
    .end local v3           #title:Ljava/lang/String;
    .end local v5           #sourceType:I
    :cond_4
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_5
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 280
    .restart local v3       #title:Ljava/lang/String;
    .restart local v5       #sourceType:I
    :cond_6
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    goto :goto_2

    .line 281
    :cond_7
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v9

    goto :goto_3
.end method

.method private updateAllImageRequests()V
    .locals 5

    .prologue
    .line 344
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 345
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 346
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    .line 347
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 348
    :cond_0
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 345
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v3, :cond_3

    .line 351
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    .line 355
    :goto_1
    return-void

    .line 353
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 320
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 341
    :cond_0
    return-void

    .line 321
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 324
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 325
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 326
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_2

    .line 327
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 329
    :cond_2
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_3

    .line 330
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 324
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_4
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 337
    .local v3, range:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 338
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 339
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBackgroundTextureInSlot(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 309
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 311
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 314
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLoadingTexture()Lcom/android/gallery3d/ui/BitmapTexture;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 396
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 397
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/BitmapTexture;->setOpaque(Z)V

    .line 399
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object v1
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

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

    const/4 v7, 0x0

    .line 584
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 585
    .local v4, start:I
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 587
    .local v0, end:I
    if-ltz v4, :cond_0

    if-lt v4, v0, :cond_2

    .line 588
    :cond_0
    const-string v5, "AlbumSetSlidingWindow"

    const-string v6, "isAllActiveSlotFilled: active range not ready yet"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    :goto_0
    return v7

    .line 593
    :cond_2
    move v2, v4

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 594
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v8, v8

    and-int/2addr v8, v2

    aget-object v1, v5, v8

    .line 595
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v1, :cond_4

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v5

    if-eqz v5, :cond_4

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v5

    if-eqz v5, :cond_4

    move v3, v6

    .line 596
    .local v3, isLoaded:Z
    :goto_2
    if-eqz v3, :cond_3

    .line 597
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmapLoaded:Z

    if-eqz v5, :cond_5

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmapLoaded:Z

    if-eqz v5, :cond_5

    move v5, v6

    :goto_3
    and-int/2addr v3, v5

    .line 600
    :cond_3
    if-eqz v3, :cond_1

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #isLoaded:Z
    :cond_4
    move v3, v7

    .line 595
    goto :goto_2

    .restart local v3       #isLoaded:Z
    :cond_5
    move v5, v7

    .line 597
    goto :goto_3

    .end local v1           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .end local v3           #isLoaded:Z
    :cond_6
    move v7, v6

    .line 605
    goto :goto_0
.end method

.method public onContentChanged(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 369
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_3

    .line 376
    :cond_2
    const-string v1, "AlbumSetSlidingWindow"

    const-string v2, "invalid update: %s is outside (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 383
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 384
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 385
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 386
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 360
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(I)V

    .line 362
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 363
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 365
    :cond_2
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    .line 553
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    if-ne v0, p1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    .line 556
    iput-object v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 557
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->setLabelWidth(I)V

    .line 559
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 561
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v2, i:I
    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v7, n:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 562
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, v2, v1

    aget-object v6, v0, v1

    .line 563
    .local v6, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 564
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 565
    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 566
    iput-object v8, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 568
    :cond_2
    iget-object v0, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_3

    .line 569
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v3, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v4, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    iget v5, v6, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v6, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 561
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 573
    .end local v6           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 574
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 403
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 404
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 405
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 406
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->clearRecycledLabels()V

    .line 409
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 412
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 413
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 414
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 417
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x0

    .line 170
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 171
    :cond_0
    const-string v3, "start = %s, end = %s, length = %s, size = %s"

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

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 176
    .local v2, data:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 177
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 178
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 180
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 181
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    .line 183
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    .line 184
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 185
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 187
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    .line 120
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method
