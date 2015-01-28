.class Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifAnimationRunnable"
.end annotation


# instance fields
.field private mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;)V
    .locals 7
    .parameter
    .parameter "path"
    .parameter "gifAnimation"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2001
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2002
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mPath:Lcom/android/gallery3d/data/Path;

    .line 2003
    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    .line 2004
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v5, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    if-nez v5, :cond_2

    .line 2005
    :cond_0
    const-string v3, "PhotoDataAdapter"

    const-string v4, "GifAnimationRunnable:invalid GifDecoder"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    .line 2028
    :cond_1
    :goto_0
    return-void

    .line 2009
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v5, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->animatedIndex:I

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    if-eq v5, v6, :cond_3

    move v1, v3

    .line 2010
    .local v1, imageChanged:Z
    :goto_1
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 2011
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2012
    .local v0, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_2
    if-eq p2, v0, :cond_5

    move v5, v3

    :goto_3
    or-int/2addr v1, v5

    .line 2013
    if-eqz v1, :cond_6

    .line 2014
    const-string v3, "PhotoDataAdapter"

    const-string v4, "GifAnimationRunnable:image changed"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0

    .end local v0           #currentPath:Lcom/android/gallery3d/data/Path;
    .end local v1           #imageChanged:Z
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    move v1, v4

    .line 2009
    goto :goto_1

    .line 2011
    .restart local v1       #imageChanged:Z
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .restart local v0       #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_5
    move v5, v4

    .line 2012
    goto :goto_3

    .line 2019
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iput v4, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    .line 2020
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v5, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    invoke-virtual {v5}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getTotalFrameCount()I

    move-result v5

    iput v5, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->totalFrameCount:I

    .line 2022
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v4, v4, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->totalFrameCount:I

    if-gt v4, v3, :cond_1

    .line 2023
    const-string v3, "PhotoDataAdapter"

    const-string v4, "GifAnimationRunnable:invalid frame count, NO animation!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0
.end method

.method private releaseGifResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1994
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    if-eqz v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    .line 1997
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    .line 1999
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2033
    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z
    invoke-static {v13}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2034
    const-string v10, "PhotoDataAdapter"

    const-string v11, "GifAnimationRunnable:run:already paused"

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    .line 2102
    :goto_0
    return-void

    .line 2039
    :cond_0
    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    if-eqz v13, :cond_1

    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v13, v13, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    if-nez v13, :cond_2

    .line 2040
    :cond_1
    const-string v10, "PhotoDataAdapter"

    const-string v11, "GifAnimationRunnable:run:invalid GifDecoder"

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0

    .line 2045
    :cond_2
    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v13, v13, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->animatedIndex:I

    iget-object v14, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v14}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v14

    if-eq v13, v14, :cond_3

    move v5, v10

    .line 2046
    .local v5, imageChanged:Z
    :goto_1
    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v13, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    .line 2047
    .local v6, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 2048
    .local v3, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_2
    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mPath:Lcom/android/gallery3d/data/Path;

    if-eq v13, v3, :cond_5

    move v13, v10

    :goto_3
    or-int/2addr v5, v13

    .line 2049
    if-eqz v5, :cond_6

    .line 2050
    const-string v10, "PhotoDataAdapter"

    const-string v11, " GifAnimationRunnable:run:image changed"

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0

    .end local v3           #currentPath:Lcom/android/gallery3d/data/Path;
    .end local v5           #imageChanged:Z
    .end local v6           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    move v5, v11

    .line 2045
    goto :goto_1

    .restart local v5       #imageChanged:Z
    .restart local v6       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    move-object v3, v12

    .line 2047
    goto :goto_2

    .restart local v3       #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_5
    move v13, v11

    .line 2048
    goto :goto_3

    .line 2055
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2058
    .local v7, preTime:J
    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v13, v13, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iget-object v14, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v14, v14, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    invoke-virtual {v13, v14}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2060
    .local v0, curBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_7

    .line 2061
    const-string v10, "PhotoDataAdapter"

    const-string v11, "GifAnimationRunnable:run:got null frame!"

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->releaseGifResource()V

    goto :goto_0

    .line 2068
    :cond_7
    const/16 v13, 0x800

    invoke-static {v0, v13, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2069
    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceGifBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2070
    const-string v10, "PhotoDataAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GifAnimationRunnable:run:update frame["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v14, v14, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v10, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->gifDecoder:Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v13, v13, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    invoke-virtual {v10, v13}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->getFrameDuration(I)I

    move-result v10

    int-to-long v1, v10

    .line 2077
    .local v1, curDuration:J
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v13, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v13, v13, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    add-int/lit8 v13, v13, 0x1

    iget-object v14, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget v14, v14, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->totalFrameCount:I

    rem-int/2addr v13, v14

    iput v13, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->currentFrame:I

    .line 2080
    const/4 v4, 0x0

    .line 2081
    .local v4, gifFrame:Lcom/android/gallery3d/ui/ScreenNail;
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v9

    .line 2083
    .local v9, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-nez v9, :cond_8

    .line 2084
    new-instance v9, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .end local v9           #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-direct {v9, v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 2086
    .restart local v9       #screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_8
    move-object v4, v9

    .line 2088
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v10, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v10, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v10, :cond_9

    .line 2089
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v10, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v10, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v10}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 2090
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v10, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iput-object v12, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2093
    :cond_9
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v10, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iput-object v4, v10, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentGifFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2095
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->mGifAnimation:Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;

    iget-object v12, v12, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimation;->entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    invoke-static {v10, v12}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3600(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 2097
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 2099
    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$GifAnimationRunnable;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    add-long v12, v1, v7

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
