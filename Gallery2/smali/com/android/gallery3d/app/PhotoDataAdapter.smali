.class public Lcom/android/gallery3d/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GifDecoderListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static final BIT_DRM_SCREEN_NAIL:I = 0x40000000

.field private static final BIT_FULL_IMAGE:I = 0x2

.field private static final BIT_GIF_ANIMATION:I = -0x80000000

.field private static final BIT_SCREEN_NAIL:I = 0x1

.field private static final BIT_SECOND_SCREEN_NAIL:I = 0x20000000

.field private static final DATA_CACHE_SIZE:I = 0x20

.field private static final IMAGE_CACHE_SIZE:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_GIF_ANIMATION_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field private static final MIN_LOAD_COUNT:I = 0x8

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4

.field private static final SCREEN_NAIL_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"

.field private static sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mCameraIndex:I

.field private final mChanges:[J

.field private mConsumedItemPath:Lcom/android/gallery3d/data/Path;

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcom/android/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcom/android/gallery3d/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsPanorama:Z

.field private mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedFullImage:Z

.field private final mPaths:[Lcom/android/gallery3d/data/Path;

.field private final mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private final mReDecodeToImproveImageQuality:Z

.field private mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private final mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

.field private mTimeIntervalDRM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 91
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifAnimationSupported()Z

    move-result v8

    sput-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    .line 93
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v8

    sput-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_DRM_SUPPORTED:Z

    .line 95
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v8

    sput-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    .line 127
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    if-eqz v8, :cond_0

    move v1, v6

    .line 128
    .local v1, gifRequestCount:I
    :goto_0
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_DRM_SUPPORTED:Z

    if-eqz v8, :cond_1

    move v0, v6

    .line 129
    .local v0, drmRequestCount:I
    :goto_1
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v8, :cond_2

    move v5, v6

    .line 131
    .local v5, stereoRequestCount:I
    :goto_2
    const/4 v3, 0x0

    .line 132
    .local v3, k:I
    add-int/lit8 v8, v1, 0x10

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v8, v5

    new-array v8, v8, [Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    sput-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    .line 136
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .local v4, k:I
    new-instance v9, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v9, v7, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v9, v8, v3

    .line 139
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v8, :cond_5

    .line 140
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    new-instance v9, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/high16 v10, 0x2000

    invoke-direct {v9, v7, v10}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v9, v8, v4

    .line 143
    :goto_3
    const/4 v2, 0x1

    .local v2, i:I
    move v4, v3

    .end local v3           #k:I
    .restart local v4       #k:I
    :goto_4
    const/4 v8, 0x7

    if-ge v2, v8, :cond_3

    .line 144
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    new-instance v9, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v9, v2, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v9, v8, v4

    .line 145
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    new-instance v9, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v10, v2

    invoke-direct {v9, v10, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v9, v8, v3

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0           #drmRequestCount:I
    .end local v1           #gifRequestCount:I
    .end local v2           #i:I
    .end local v4           #k:I
    .end local v5           #stereoRequestCount:I
    :cond_0
    move v1, v7

    .line 127
    goto :goto_0

    .restart local v1       #gifRequestCount:I
    :cond_1
    move v0, v7

    .line 128
    goto :goto_1

    .restart local v0       #drmRequestCount:I
    :cond_2
    move v5, v7

    .line 129
    goto :goto_2

    .line 148
    .restart local v2       #i:I
    .restart local v4       #k:I
    .restart local v5       #stereoRequestCount:I
    :cond_3
    sget-object v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v9, 0x2

    invoke-direct {v8, v7, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v8, v6, v4

    .line 152
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    if-eqz v6, :cond_4

    .line 153
    sget-object v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #k:I
    .restart local v4       #k:I
    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/high16 v9, -0x8000

    invoke-direct {v8, v7, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v8, v6, v3

    move v3, v4

    .line 155
    .end local v4           #k:I
    .restart local v3       #k:I
    :cond_4
    return-void

    .end local v2           #i:I
    .end local v3           #k:I
    .restart local v4       #k:I
    :cond_5
    move v3, v4

    .end local v4           #k:I
    .restart local v3       #k:I
    goto :goto_3
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZ)V
    .locals 7
    .parameter "activity"
    .parameter "view"
    .parameter "mediaSet"
    .parameter "itemPath"
    .parameter "indexHint"
    .parameter "cameraIndex"
    .parameter "isPanorama"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReDecodeToImproveImageQuality:Z

    .line 157
    new-instance v0, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    .line 170
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    .line 171
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 172
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 181
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 182
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 191
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    .line 194
    new-array v0, v3, [Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    .line 203
    iput-wide v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    .line 204
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    .line 210
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 211
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 219
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    .line 229
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 230
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 231
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 232
    iput p5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 233
    iput p6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    .line 234
    iput-boolean p7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 235
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 236
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 239
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    .line 243
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 272
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 273
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/PhotoDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_DRM_SUPPORTED:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->restoreDrmConsumeStatus()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateOriginScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSecondScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateGifDecoder(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1241
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1242
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1245
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1247
    :goto_0
    return-object v2

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 1248
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1249
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fireDataChange()V
    .locals 15

    .prologue
    const v10, 0x7fffffff

    const/4 v14, 0x0

    const/4 v13, 0x7

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, changed:Z
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v9, 0x3

    if-gt v3, v9, :cond_1

    .line 299
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v9, v3

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    .line 300
    .local v5, newVersion:J
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aget-wide v11, v9, v11

    cmp-long v9, v11, v5

    if-eqz v9, :cond_0

    .line 301
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aput-wide v5, v9, v11

    .line 302
    const/4 v1, 0x1

    .line 298
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v5           #newVersion:J
    :cond_1
    if-nez v1, :cond_3

    .line 349
    :cond_2
    :goto_1
    return-void

    .line 311
    :cond_3
    const/4 v0, 0x7

    .line 312
    .local v0, N:I
    new-array v2, v13, [I

    .line 315
    .local v2, fromIndex:[I
    new-array v7, v13, [Lcom/android/gallery3d/data/Path;

    .line 316
    .local v7, oldPaths:[Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    invoke-static {v9, v14, v7, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v13, :cond_4

    .line 320
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x3

    invoke-direct {p0, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    aput-object v11, v9, v3

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 324
    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_9

    .line 325
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    aget-object v8, v9, v3

    .line 326
    .local v8, p:Lcom/android/gallery3d/data/Path;
    if-nez v8, :cond_5

    .line 327
    aput v10, v2, v3

    .line 324
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 333
    :cond_5
    const/4 v4, 0x0

    .local v4, j:I
    :goto_5
    if-ge v4, v13, :cond_6

    .line 334
    aget-object v9, v7, v4

    if-ne v9, v8, :cond_7

    .line 338
    :cond_6
    if-ge v4, v13, :cond_8

    add-int/lit8 v9, v4, -0x3

    :goto_6
    aput v9, v2, v3

    goto :goto_4

    .line 333
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    move v9, v10

    .line 338
    goto :goto_6

    .line 341
    .end local v4           #j:I
    .end local v8           #p:Lcom/android/gallery3d/data/Path;
    :cond_9
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v10, v10

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v2, v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->notifyDataChange([III)V

    .line 345
    invoke-virtual {p0, v14}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 346
    const-string v9, "PhotoDataAdapter"

    const-string v10, "fireDataChange: enterCameraPreview"

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PhotoView;->enterCameraPreview()V

    goto :goto_1
.end method

.method private getItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 478
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 484
    :goto_0
    return-object v0

    .line 479
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 481
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_0

    .line 479
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 484
    goto :goto_0
.end method

.method private getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 276
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getPath(I)Lcom/android/gallery3d/data/Path;
    .locals 2
    .parameter "index"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 291
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 292
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private getTargetScreenNail(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "entry"

    .prologue
    .line 1532
    if-nez p1, :cond_0

    .line 1533
    const/4 v0, 0x0

    .line 1544
    :goto_0
    return-object v0

    .line 1536
    :cond_0
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_1

    .line 1537
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    .line 1540
    :cond_1
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_2

    .line 1541
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    .line 1544
    :cond_2
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 285
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    .line 286
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v1

    goto :goto_0
.end method

.method private isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 6
    .parameter "mediaItem"

    .prologue
    const/4 v1, 0x0

    .line 868
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-gez v2, :cond_1

    .line 879
    :cond_0
    :goto_0
    return v1

    .line 870
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 871
    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 872
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v2, v3, :cond_0

    .line 874
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 875
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 879
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 3
    .parameter "item"

    .prologue
    .line 887
    invoke-static {p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    .line 888
    .local v1, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v1, :cond_0

    .line 894
    .end local v1           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :goto_0
    return-object v1

    .line 892
    .restart local v1       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    .line 893
    .local v2, width:I
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 894
    .local v0, height:I
    new-instance v1, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .end local v1           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(II)V

    goto :goto_0
.end method

.method private resetDrmConsumeStatus()V
    .locals 1

    .prologue
    .line 1712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mConsumedItemPath:Lcom/android/gallery3d/data/Path;

    .line 1713
    return-void
.end method

.method private restoreDrmConsumeStatus()V
    .locals 4

    .prologue
    .line 1676
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mConsumedItemPath:Lcom/android/gallery3d/data/Path;

    if-nez v2, :cond_1

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1683
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTimeIntervalDRM:Z

    if-eqz v2, :cond_2

    .line 1684
    const-string v2, "PhotoDataAdapter"

    const-string v3, "restoreDrmConsumeStatus:for time interval media..."

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ltz v2, :cond_0

    .line 1688
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v3, v3, 0x20

    aget-object v1, v2, v3

    .line 1689
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 1692
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->hasDrmRights()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1693
    const-string v2, "PhotoDataAdapter"

    const-string v3, "restoreDrmConsumeStatus:we have no rights "

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->resetDrmConsumeStatus()V

    goto :goto_0

    .line 1699
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    if-eqz v0, :cond_0

    .line 1700
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mConsumedItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v2, v3, :cond_3

    .line 1701
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-nez v2, :cond_0

    .line 1705
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->enterConsumeMode()V

    .line 1707
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->resetDrmConsumeStatus()V

    goto :goto_0
.end method

.method private saveDrmConsumeStatus()V
    .locals 4

    .prologue
    .line 1667
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->resetDrmConsumeStatus()V

    .line 1668
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1669
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-eqz v2, :cond_0

    .line 1670
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v3, v3, 0x20

    aget-object v0, v2, v3

    .line 1671
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mConsumedItemPath:Lcom/android/gallery3d/data/Path;

    .line 1673
    .end local v0           #current:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    return-void

    .line 1671
    .restart local v0       #current:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_0
.end method

.method private startGifAnimation(Lcom/android/gallery3d/data/Path;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 1952
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1953
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v1, :cond_1

    .line 1986
    :cond_0
    :goto_0
    return-void

    .line 1956
    :cond_1
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getTotalFrameCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1963
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getWidth()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getWidth()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v5}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getHeight()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    const-wide v5, 0x100000000L

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 1968
    :cond_2
    const-string v3, "PhotoDataAdapter"

    const-string v4, "startGifAnimation:illegal gif frame dimension"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1972
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 1973
    .local v0, currentIndex:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 1976
    new-instance v2, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    .line 1977
    .local v2, gifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iput-object v3, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 1978
    iput v0, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->animatedIndex:I

    .line 1979
    iput-object v1, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1981
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;
    .locals 10
    .parameter "index"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 899
    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    .line 1025
    :goto_0
    return-object v6

    .line 901
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 902
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    .line 903
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v7, p1, 0x20

    aget-object v1, v6, v7

    .line 904
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 905
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v4

    .line 907
    .local v4, version:J
    const/4 v6, 0x1

    if-ne p2, v6, :cond_4

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_4

    .line 909
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 904
    .end local v4           #version:J
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 910
    .restart local v4       #version:J
    :cond_4
    const/4 v6, 0x2

    if-ne p2, v6, :cond_5

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_5

    .line 912
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 913
    :cond_5
    const/high16 v6, -0x8000

    if-ne p2, v6, :cond_6

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_6

    .line 915
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 916
    :cond_6
    const/high16 v6, 0x2000

    if-ne p2, v6, :cond_7

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_7

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v6, :cond_7

    .line 920
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 921
    :cond_7
    const/4 v6, 0x2

    if-ne p2, v6, :cond_8

    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v6, :cond_8

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_8

    .line 925
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 928
    :cond_8
    const/4 v6, 0x1

    if-ne p2, v6, :cond_a

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_a

    .line 931
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne p1, v6, :cond_9

    .line 932
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 933
    .local v3, s:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v3, :cond_9

    .line 934
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 935
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 936
    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 937
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 938
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 939
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 944
    .end local v3           #s:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_9
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 945
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v7, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 949
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 951
    :cond_a
    const/4 v6, 0x2

    if-ne p2, v6, :cond_b

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_b

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_b

    .line 954
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 955
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v7, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 959
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 962
    :cond_b
    const/4 v6, 0x2

    if-ne p2, v6, :cond_c

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_c

    .line 966
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    .line 968
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 969
    .local v2, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 970
    const/16 v6, 0x3c0

    iput v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 971
    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 973
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;

    invoke-direct {v7, v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailJob;-><init>(Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailListener;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$OriginScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 977
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 980
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_c
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    if-eqz v6, :cond_d

    .line 981
    const/high16 v6, -0x8000

    if-ne p2, v6, :cond_d

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_d

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_d

    .line 986
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    .line 989
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 990
    .restart local v2       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 992
    const-string v6, "PhotoDataAdapter"

    const-string v7, "startTaskIfNeeded:start GifDecoder task"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v7

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$GifDecoderListener;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifDecoderListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 997
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1001
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_d
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v6, :cond_e

    .line 1002
    const/high16 v6, 0x2000

    if-ne p2, v6, :cond_e

    iget-wide v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_e

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v6

    const/high16 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    .line 1008
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->stereoLayout:I

    .line 1010
    iput-wide v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    .line 1013
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 1014
    .restart local v2       #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    .line 1015
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    .line 1016
    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 1018
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;

    invoke-direct {v7, p0, v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailListener;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$SecondScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v6

    iput-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1022
    iget-object v6, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 1025
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 488
    const-string v2, "PhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v2, p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 491
    .local v1, prevIndex:I
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 492
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 494
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v3, p1, 0x20

    aget-object v0, v2, v3

    .line 495
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_4

    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 497
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v2, :cond_2

    .line 498
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 502
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 505
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail()V

    .line 507
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 508
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 510
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v2, :cond_3

    .line 511
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v2, p1, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/android/gallery3d/data/Path;)V

    .line 514
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 519
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 520
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->enterCameraPreview()V

    goto :goto_0

    .line 495
    :cond_4
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_1

    .line 521
    :cond_5
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->leaveCameraPreview()V

    goto :goto_0
.end method

.method private updateDrmScreenNail()V
    .locals 9

    .prologue
    .line 1548
    sget-boolean v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_DRM_SUPPORTED:Z

    if-nez v5, :cond_1

    .line 1581
    :cond_0
    return-void

    .line 1551
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v5, :cond_0

    .line 1552
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 1553
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v3, :cond_3

    .line 1551
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1556
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1557
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_2

    .line 1558
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-static {v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v4

    .line 1560
    .local v4, mtkScreeNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v4, :cond_2

    .line 1564
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v2, v1, v5

    .line 1565
    .local v2, index:I
    const/4 v5, -0x3

    if-lt v2, v5, :cond_2

    const/4 v5, 0x3

    if-gt v2, v5, :cond_2

    .line 1569
    if-eqz v2, :cond_4

    .line 1571
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    .line 1574
    :cond_4
    invoke-direct {p0, v4, v3, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail(Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1576
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v6, v2, 0x3

    const-wide/16 v7, -0x1

    aput-wide v7, v5, v6

    goto :goto_1
.end method

.method private updateDrmScreenNail(Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;I)Z
    .locals 4
    .parameter "mtkScreenNail"
    .parameter "index"

    .prologue
    .line 1585
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 1586
    .local v2, path:Lcom/android/gallery3d/data/Path;
    if-nez v2, :cond_0

    .line 1587
    const/4 v3, 0x0

    .line 1591
    :goto_0
    return v3

    .line 1589
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1590
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1591
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail(Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v3

    goto :goto_0
.end method

.method private updateDrmScreenNail(Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z
    .locals 6
    .parameter "mtkScreenNail"
    .parameter "item"
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1596
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1598
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v1

    .line 1599
    .local v1, origSubType:I
    const/16 v0, 0xc

    .line 1602
    .local v0, drmSubMask:I
    invoke-virtual {p1}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v2

    .line 1603
    .local v2, subType:I
    iget-boolean v3, p3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-eqz v3, :cond_0

    and-int v3, v2, v0

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-nez v3, :cond_2

    and-int v3, v2, v0

    if-nez v3, :cond_2

    .line 1606
    :cond_1
    iget-boolean v3, p3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-eqz v3, :cond_4

    .line 1607
    and-int/lit8 v2, v2, -0xd

    .line 1608
    invoke-virtual {p1, v2}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    :goto_1
    move v5, v4

    .line 1615
    :cond_2
    return v5

    .end local v0           #drmSubMask:I
    .end local v1           #origSubType:I
    .end local v2           #subType:I
    :cond_3
    move v3, v5

    .line 1596
    goto :goto_0

    .line 1611
    .restart local v0       #drmSubMask:I
    .restart local v1       #origSubType:I
    .restart local v2       #subType:I
    :cond_4
    invoke-virtual {p1, v1}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    goto :goto_1
.end method

.method private updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 9
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    const/4 v7, 0x0

    .line 394
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 395
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v4, p2, :cond_2

    .line 396
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 397
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 423
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    if-eqz p2, :cond_3

    .line 402
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 403
    .restart local v1       #fullImage:Landroid/graphics/BitmapRegionDecoder;
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 404
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isOutOfLimitation(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 407
    const-string v4, "PhotoDataAdapter"

    const-string v5, "out of limitation: %s [mime type: %s, width: %d, height: %d]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_0

    .line 414
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 415
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/BitmapRegionDecoder;

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 416
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v4, :cond_4

    .line 417
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_4

    .line 418
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 419
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v7}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 422
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateGifDecoder(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1928
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const-string v2, "PhotoDataAdapter"

    const-string v3, ">> updateGifDecoder"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1930
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eq v2, p2, :cond_1

    .line 1931
    :cond_0
    const-string v2, "PhotoDataAdapter"

    const-string v3, "updateGifDecoder:invalid entry or future"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :goto_0
    return-void

    .line 1935
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1936
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v2, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 1939
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v1

    .line 1941
    .local v1, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showDrmMicroThumb(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1943
    const-string v2, "PhotoDataAdapter"

    const-string v3, "updateGifDecoder:no animation for non-consume drm"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 1948
    const-string v2, "PhotoDataAdapter"

    const-string v3, "<< updateGifDecoder"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1945
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startGifAnimation(Lcom/android/gallery3d/data/Path;)V

    goto :goto_1
.end method

.method private updateImageCache()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    .line 1029
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1030
    .local v6, toBeRemoved:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v7, :cond_d

    .line 1031
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v8, v1, 0x20

    aget-object v3, v7, v8

    .line 1032
    .local v3, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v3, :cond_1

    .line 1030
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1033
    :cond_1
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 1034
    .local v4, path:Lcom/android/gallery3d/data/Path;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1035
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1036
    if-eqz v0, :cond_c

    .line 1037
    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 1038
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_2

    .line 1039
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1040
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 1042
    :cond_2
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 1043
    iput-wide v12, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1045
    :cond_3
    iget-wide v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 1048
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v7, v7, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v7, :cond_4

    .line 1049
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v5, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 1050
    .local v5, s:Lcom/android/gallery3d/ui/BitmapScreenNail;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/android/gallery3d/ui/BitmapScreenNail;->updatePlaceholderSize(II)V

    .line 1056
    .end local v5           #s:Lcom/android/gallery3d/ui/BitmapScreenNail;
    :cond_4
    sget-boolean v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lez v7, :cond_6

    .line 1058
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_5

    .line 1059
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1060
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1062
    :cond_5
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 1063
    iput-wide v12, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    .line 1064
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_6

    .line 1066
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1067
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1073
    :cond_6
    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lez v7, :cond_9

    .line 1075
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_7

    .line 1076
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1077
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1079
    :cond_7
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_8

    .line 1080
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1081
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1083
    :cond_8
    iput-wide v12, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    .line 1087
    :cond_9
    sget-boolean v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lez v7, :cond_0

    .line 1089
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_a

    .line 1090
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1091
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1093
    :cond_a
    iput-wide v12, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    .line 1094
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_b

    .line 1096
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1097
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1099
    :cond_b
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_0

    .line 1101
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1102
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_1

    .line 1106
    :cond_c
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-direct {v0, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    .line 1107
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1112
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v3           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    :cond_d
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_e
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 1113
    .restart local v4       #path:Lcom/android/gallery3d/data/Path;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1114
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_f

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1115
    :cond_f
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_10

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1116
    :cond_10
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_11

    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1119
    :cond_11
    sget-boolean v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    if-eqz v7, :cond_13

    .line 1120
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_12

    .line 1121
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1123
    :cond_12
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_13

    .line 1125
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1126
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1132
    :cond_13
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_14

    .line 1134
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1135
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_14

    .line 1136
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1137
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1140
    :cond_14
    sget-boolean v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v7, :cond_e

    .line 1141
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v7, :cond_15

    .line 1142
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1144
    :cond_15
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_16

    .line 1146
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1147
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1149
    :cond_16
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_e

    .line 1151
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1152
    iput-object v11, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_2

    .line 1156
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v4           #path:Lcom/android/gallery3d/data/Path;
    :cond_17
    return-void
.end method

.method private updateImageRequests()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 748
    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v8, :cond_1

    .line 805
    :cond_0
    return-void

    .line 750
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 751
    .local v1, currentIndex:I
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v9, v1, 0x20

    aget-object v5, v8, v9

    .line 752
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v8, v9, :cond_0

    .line 758
    const/4 v7, 0x0

    .line 759
    .local v7, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 760
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v6, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 761
    .local v6, offset:I
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v0, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 762
    .local v0, bit:I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v8, :cond_3

    .line 759
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 763
    :cond_3
    add-int v8, v1, v6

    invoke-direct {p0, v8, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    .line 764
    if-eqz v7, :cond_2

    .line 768
    .end local v0           #bit:I
    .end local v6           #offset:I
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 769
    .local v2, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_6

    .line 770
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 771
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 772
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 774
    :cond_6
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_7

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_7

    .line 775
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 776
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 777
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 781
    :cond_7
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_8

    .line 783
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 784
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 785
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedGif:J

    .line 789
    :cond_8
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v8, :cond_9

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_9

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_9

    .line 792
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 793
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 794
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedSecondScreenNail:J

    .line 797
    :cond_9
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_5

    .line 800
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 801
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 802
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedOriginScreenNail:J

    goto :goto_1
.end method

.method private updateOriginScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1777
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1778
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v2, p2, :cond_2

    .line 1779
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/ScreenNail;

    .line 1780
    .local v1, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v1, :cond_1

    .line 1781
    if-eqz v1, :cond_1

    .line 1782
    invoke-interface {v1}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1798
    .end local v1           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_1
    :goto_0
    return-void

    .line 1788
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1789
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/ScreenNail;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1791
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->originScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_3

    .line 1792
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 1793
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 1794
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 1797
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 6
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 357
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/ScreenNail;

    .line 359
    .local v4, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v5, p2, :cond_2

    .line 360
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 391
    :cond_1
    :goto_0
    return-void

    .line 364
    :cond_2
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 368
    if-nez v4, :cond_6

    const/4 v2, 0x1

    .line 371
    .local v2, loadFailed:Z
    :goto_1
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v5, v5, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v5, :cond_3

    .line 372
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 373
    .local v3, original:Lcom/android/gallery3d/ui/BitmapScreenNail;
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;->combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    .line 376
    .end local v3           #original:Lcom/android/gallery3d/ui/BitmapScreenNail;
    :cond_3
    if-nez v4, :cond_7

    .line 377
    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 383
    :goto_2
    const/4 v1, -0x3

    .local v1, i:I
    :goto_3
    const/4 v5, 0x3

    if-gt v1, v5, :cond_5

    .line 384
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    if-ne p1, v5, :cond_8

    .line 385
    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 386
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 390
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 368
    .end local v1           #i:I
    .end local v2           #loadFailed:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 379
    .restart local v2       #loadFailed:Z
    :cond_7
    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 380
    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_2

    .line 383
    .restart local v1       #i:I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private updateSecondScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 7
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1854
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1855
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v4, p2, :cond_2

    .line 1856
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 1857
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v0, :cond_1

    .line 1858
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->recycle()V

    .line 1894
    :cond_1
    :goto_0
    return-void

    .line 1863
    .end local v0           #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    :cond_2
    iput-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 1864
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    .line 1866
    .restart local v0       #dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 1867
    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    :goto_1
    iput-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1869
    new-instance v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1871
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 1872
    const-string v3, "PhotoDataAdapter"

    const-string v4, "updateSecondScreenNail:update tileProvider"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 1874
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 1875
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v4, v4, 0x20

    aget-object v2, v3, v4

    .line 1879
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 1883
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 1884
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 1893
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 1867
    :cond_4
    new-instance v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    iget-object v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1888
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 1889
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    goto :goto_2
.end method

.method private updateSlidingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 721
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 723
    .local v2, start:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 725
    .local v0, end:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 728
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 731
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x10

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x20

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 733
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 734
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 736
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_5

    .line 737
    if-lt v1, v2, :cond_3

    if-lt v1, v0, :cond_4

    .line 738
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v4, v1, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 736
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 741
    :cond_5
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 742
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 743
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 3

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 687
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 7
    .parameter "entry"

    .prologue
    .line 695
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 696
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 697
    .local v0, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v2, :cond_2

    .line 700
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProviderEx(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 701
    const-string v4, "PhotoDataAdapter"

    const-string v5, "updateTileProvider:we return!"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :goto_0
    return-void

    .line 705
    :cond_0
    if-eqz v0, :cond_1

    .line 706
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 708
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 710
    :cond_1
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    .line 711
    .local v3, width:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    .line 712
    .local v1, height:I
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    goto :goto_0

    .line 715
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    goto :goto_0
.end method

.method private updateTileProviderEx(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z
    .locals 12
    .parameter "entry"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1484
    if-eqz p1, :cond_1

    iget-object v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1489
    iget-object v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-static {v7}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getScreenNailSubType(Lcom/android/gallery3d/ui/ScreenNail;)I

    move-result v4

    .line 1491
    .local v4, subType:I
    invoke-static {v4}, Lcom/mediatek/gallery3d/util/MediatekFeature;->showDrmMicroThumb(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1528
    :cond_0
    :goto_1
    return v9

    .end local v4           #subType:I
    :cond_1
    move v7, v9

    .line 1484
    goto :goto_0

    .line 1495
    .restart local v4       #subType:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getTargetScreenNail(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v5

    .line 1496
    .local v5, targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v5, :cond_0

    .line 1499
    iget-object v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-static {v5, v7}, Lcom/mediatek/gallery3d/util/MediatekFeature;->syncSubType(Lcom/android/gallery3d/ui/ScreenNail;Lcom/android/gallery3d/ui/ScreenNail;)Z

    .line 1501
    invoke-static {v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getSizeForSubtype(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    .line 1504
    .local v3, size:Lcom/android/gallery3d/ui/PhotoView$Size;
    if-eqz v3, :cond_5

    .line 1505
    iget v6, v3, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 1506
    .local v6, w:I
    iget v2, v3, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 1511
    .local v2, h:I
    :goto_2
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v7, v5, v6, v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 1513
    sget-boolean v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v7, :cond_3

    .line 1515
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v10, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-virtual {v7, v8, v10}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;)V

    .line 1516
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-virtual {v7, v10, v11}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setStereoScreenNail(ILcom/android/gallery3d/ui/ScreenNail;)V

    .line 1519
    :cond_3
    iget-object v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v7, :cond_4

    .line 1521
    iget v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->stereoLayout:I

    iget-object v10, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v10}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v10

    invoke-static {v8, v7, v10}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v1

    .line 1523
    .local v1, fullWidth:I
    iget v7, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->stereoLayout:I

    iget-object v10, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v10}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v10

    invoke-static {v9, v7, v10}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v0

    .line 1525
    .local v0, fullHeight:I
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v9, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v7, v9, v5, v1, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;Lcom/android/gallery3d/ui/ScreenNail;II)V

    .end local v0           #fullHeight:I
    .end local v1           #fullWidth:I
    :cond_4
    move v9, v8

    .line 1528
    goto :goto_1

    .line 1508
    .end local v2           #h:I
    .end local v6           #w:I
    :cond_5
    invoke-interface {v5}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v6

    .line 1509
    .restart local v6       #w:I
    invoke-interface {v5}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v2

    .restart local v2       #h:I
    goto :goto_2
.end method


# virtual methods
.method public enterConsumeMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1620
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_DRM_SUPPORTED:Z

    if-nez v2, :cond_0

    .line 1659
    :goto_0
    return-void

    .line 1624
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 1625
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1627
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_1

    .line 1628
    const-string v2, "PhotoDataAdapter"

    const-string v3, "enter is null"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1631
    :cond_1
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    if-eqz v2, :cond_2

    .line 1633
    const-string v2, "PhotoDataAdapter"

    const-string v3, "enterConsumeMode:we already in consumed mode!"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1638
    :cond_2
    iput-boolean v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    .line 1641
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1642
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isTimeInterval()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1643
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTimeIntervalDRM:Z

    .line 1651
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail()V

    .line 1654
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 1656
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 1658
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startGifAnimation(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method public enteredConsumeMode()Z
    .locals 3

    .prologue
    .line 1662
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1663
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->enteredConsumeMode:Z

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 576
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 577
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    goto :goto_0
.end method

.method public getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 564
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 565
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    .line 566
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 567
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 570
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 615
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v1

    .line 616
    :cond_1
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 617
    :cond_2
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .parameter "offset"

    .prologue
    .line 651
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v0, v1, p1

    .line 652
    .local v0, index:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, v0, 0x20

    aget-object v1, v1, v2

    .line 655
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 534
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v4, p1

    .line 535
    .local v1, index:I
    if-ltz v1, :cond_0

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge v1, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v4, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-object v3

    .line 536
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v4, :cond_3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 538
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 539
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    .line 541
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 542
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    .line 547
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getTargetScreenNail(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 548
    .local v3, targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-nez v3, :cond_0

    .line 554
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 555
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 556
    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 559
    :cond_2
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    .line 536
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "stereoIndex"

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCamera(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 588
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeletable(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 606
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 607
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMav(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v0, 0x0

    .line 2116
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 2117
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v1, :cond_0

    .line 2121
    :goto_0
    return v0

    .line 2120
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2121
    .local v0, isMavType:Z
    :cond_1
    goto :goto_0
.end method

.method public isPanorama(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 598
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 599
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 530
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 438
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 440
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 441
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 443
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 446
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_DRM_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->saveDrmConsumeStatus()V

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 451
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 452
    :cond_2
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 453
    :cond_3
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 456
    :cond_4
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_5

    .line 458
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->gifDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 462
    :cond_5
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_1

    .line 464
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 465
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_6

    .line 466
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 468
    :cond_6
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->firstScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->secondScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_0

    .line 473
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_7
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 474
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 475
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 428
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 429
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 431
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 434
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 435
    return-void
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v1, p1, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 661
    iput p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 662
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 663
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 666
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateDrmScreenNail()V

    .line 668
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 671
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 672
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    .line 353
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 678
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 679
    return-void
.end method

.method public setFocusHintPath(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 683
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 583
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    return-void
.end method
