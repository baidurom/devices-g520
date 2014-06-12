.class public Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.super Lcom/android/gallery3d/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;,
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifDecoderListener;,
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_GIF_ANIMATION_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field private static final MSG_RUN_OBJECT:I = 0x2

.field private static final MSG_UPDATE_IMAGE:I = 0x1

.field private static final MSG_UPDATE_LARGE_IMAGE:I = 0x4

.field private static final MSG_UPDATE_SECOND_IMAGE:I = 0x3

.field private static final SHOW_THUMB_FIRST:Z = true

.field private static final SIZE_BACKUP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SinglePhotoDataAdapter"


# instance fields
.field private mAnimateGif:Z

.field private mCurrentFrameNum:I

.field private mCurrentGifFrame:Landroid/graphics/Bitmap;

.field private mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

.field private mGifTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasFullImage:Z

.field private mIsActive:Z

.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mLargeListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingState:I

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mSecondThumbListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mShowStereoImage:Z

.field private mShowedThumb:Z

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private mThumbListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalFrameCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isGifAnimationSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    .line 61
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "activity"
    .parameter "view"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 64
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    .line 100
    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 161
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    .line 185
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    .line 193
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$4;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mSecondThumbListener:Lcom/android/gallery3d/util/FutureListener;

    .line 104
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 105
    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 109
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 112
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mAnimateGif:Z

    .line 117
    :goto_1
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    const/high16 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowStereoImage:Z

    .line 120
    const-string v0, "SinglePhotoDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SinglePhotoDataAdapter:mShowStereoImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowStereoImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 122
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 148
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 149
    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0

    .line 114
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mAnimateGif:Z

    goto :goto_1

    :cond_2
    move v1, v2

    .line 117
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeSecondThumbComplete(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->updateGifFrame(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->startGifAnimation(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTotalFrameCount:I

    return v0
.end method

.method private onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 212
    :try_start_0
    iget-object v4, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    .line 213
    .local v1, fullWidth:I
    iget-object v4, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 214
    .local v0, fullHeight:I
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v1

    .line 216
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v5

    invoke-static {v4, v5, v0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v0

    .line 219
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iget-object v5, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    .line 221
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v2, :cond_0

    .line 222
    iget-object v4, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, v4, v2, v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 227
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 231
    .end local v0           #fullHeight:I
    .end local v1           #fullWidth:I
    .end local v2           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :goto_1
    return-void

    .line 224
    .restart local v0       #fullHeight:I
    .restart local v1       #fullWidth:I
    .restart local v2       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_0
    iget-object v4, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v5, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v4, v5, v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v0           #fullHeight:I
    .end local v1           #fullWidth:I
    .end local v2           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :catch_0
    move-exception v3

    .line 229
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "SinglePhotoDataAdapter"

    const-string v5, "fail to decode large"

    invoke-static {v4, v5, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onDecodeSecondThumbComplete(Lcom/android/gallery3d/util/Future;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const/4 v4, 0x1

    .line 291
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 293
    .local v0, second:Landroid/graphics/Bitmap;
    :goto_0
    const-string v1, "SinglePhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDecodeSecondThumbComplete:second="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-nez v0, :cond_2

    .line 310
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v1, :cond_0

    .line 312
    iput-boolean v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 313
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 317
    :cond_0
    :goto_1
    return-void

    .line 291
    .end local v0           #second:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    .restart local v0       #second:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v1, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setStereoScreenNail(ILandroid/graphics/Bitmap;)V

    .line 302
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setStereoScreenNail(ILandroid/graphics/Bitmap;)V

    .line 304
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 308
    invoke-direct {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->resetStereoMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v1, :cond_0

    .line 312
    iput-boolean v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 313
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    goto :goto_1

    .line 310
    .end local v0           #second:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v2, :cond_3

    .line 312
    iput-boolean v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 313
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    :cond_3
    throw v1
.end method

.method private onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 236
    .local v0, backup:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 237
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 286
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local v0       #backup:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 243
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v7, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 244
    .local v3, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v3, :cond_3

    .line 245
    const/4 v6, 0x0

    .line 246
    .local v6, width:I
    const/4 v1, 0x0

    .line 247
    .local v1, height:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getSizeForSubtype(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v4

    .line 248
    .local v4, size:Lcom/android/gallery3d/ui/PhotoView$Size;
    if-eqz v4, :cond_2

    .line 249
    iget v6, v4, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 250
    iget v1, v4, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 255
    :goto_1
    invoke-virtual {p0, v3, v6, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 260
    .end local v1           #height:I
    .end local v4           #size:Lcom/android/gallery3d/ui/PhotoView$Size;
    .end local v6           #width:I
    :goto_2
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 263
    iget-boolean v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowStereoImage:Z

    if-eqz v7, :cond_4

    .line 265
    new-instance v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 266
    .local v2, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 267
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    .line 268
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    .line 269
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/mediatek/gallery3d/util/MediatekFeature;->enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V

    .line 270
    const-string v7, "SinglePhotoDataAdapter"

    const-string v8, "onDecodeThumbComplete:start second image task"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mSecondThumbListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v0           #backup:Landroid/graphics/Bitmap;
    .end local v2           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    .end local v3           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :catch_0
    move-exception v5

    .line 284
    .local v5, t:Ljava/lang/Throwable;
    const-string v7, "SinglePhotoDataAdapter"

    const-string v8, "fail to decode thumb"

    invoke-static {v7, v8, v5}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    .end local v5           #t:Ljava/lang/Throwable;
    .restart local v0       #backup:Landroid/graphics/Bitmap;
    .restart local v1       #height:I
    .restart local v3       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    .restart local v4       #size:Lcom/android/gallery3d/ui/PhotoView$Size;
    .restart local v6       #width:I
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v6

    .line 253
    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    goto :goto_1

    .line 257
    .end local v1           #height:I
    .end local v4           #size:Lcom/android/gallery3d/ui/PhotoView$Size;
    .end local v6           #width:I
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    goto :goto_2

    .line 277
    :cond_4
    iget-boolean v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v7, :cond_0

    .line 279
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 280
    iget-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v8, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private releaseGifResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 604
    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 607
    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    .line 609
    :cond_0
    return-void
.end method

.method private resetStereoMode()V
    .locals 4

    .prologue
    .line 320
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowStereoImage:Z

    if-nez v1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 325
    .local v0, stereoMode:Z
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 327
    const/4 v0, 0x1

    .line 330
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 333
    const/4 v0, 0x0

    .line 336
    :cond_2
    const-string v1, "SinglePhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetStereoMode:stereoMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 338
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    goto :goto_0
.end method

.method private startGifAnimation(Lcom/android/gallery3d/util/Future;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    .line 519
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    iget-object v0, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    if-eqz v0, :cond_0

    .line 522
    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentFrameNum:I

    .line 523
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getTotalFrameCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTotalFrameCount:I

    .line 524
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTotalFrameCount:I

    if-gt v0, v1, :cond_1

    .line 525
    const-string v0, "SinglePhotoDataAdapter"

    const-string v1, "invalid frame count, NO animation!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    .line 532
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentGifFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    new-instance v3, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifAnimationRunnable;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 532
    goto :goto_1
.end method

.method private updateGifFrame(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "gifFrame"

    .prologue
    .line 589
    if-nez p1, :cond_0

    .line 601
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v1, p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    .line 594
    .local v0, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v0, :cond_1

    .line 595
    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 600
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    goto :goto_0

    .line 598
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    goto :goto_1
.end method


# virtual methods
.method public enterConsumeMode()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public enteredConsumeMode()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 413
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 1
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 402
    if-nez p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 404
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 409
    :goto_0
    return-void

    .line 406
    :cond_0
    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 407
    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getLoadingState(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 477
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    return v0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "offset"

    .prologue
    .line 452
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "offset"

    .prologue
    .line 418
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public isDeletable(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public isMav(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    .line 614
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 615
    .local v0, isMavType:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 616
    return v0

    .line 615
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPanorama(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 397
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 380
    .local v0, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 381
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 382
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 383
    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    .line 388
    if-eqz v0, :cond_1

    .line 389
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 390
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 392
    :cond_1
    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    .line 393
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 342
    iput-boolean v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    .line 344
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    if-nez v1, :cond_0

    .line 346
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mShowedThumb:Z

    .line 352
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 359
    :cond_0
    sget-boolean v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->IS_GIF_ANIMATION_SUPPORTED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    if-nez v1, :cond_1

    .line 360
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mAnimateGif:Z

    if-eqz v1, :cond_1

    .line 362
    new-instance v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 363
    .local v0, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    iput-boolean v5, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 364
    iput-boolean v4, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inGifDecoder:Z

    .line 365
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "resume:start GifDecoder task"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4, v0}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/mediatek/gallery3d/util/MediatekFeature$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifDecoderListener;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$GifDecoderListener;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mGifTask:Lcom/android/gallery3d/util/Future;

    .line 373
    .end local v0           #params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->resetStereoMode()V

    .line 374
    return-void
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 463
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 468
    return-void
.end method

.method public setFocusHintPath(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 473
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 424
    return-void
.end method
