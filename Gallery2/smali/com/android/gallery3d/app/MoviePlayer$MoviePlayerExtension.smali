.class Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IMoviePlayer;
.implements Lcom/android/gallery3d/app/MoviePlayer$Restorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoviePlayerExtension"
.end annotation


# static fields
.field private static final KEY_VIDEO_IS_LOOP:Ljava/lang/String; = "video_is_loop"


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

.field private mCopyRight:Ljava/lang/String;

.field private mIsLoop:Z

.field private mLastCanPaused:Z

.field private mLastPlaying:Z

.field private mPauseBuffering:Z

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1313
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->pauseIfNeed()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->resumeIfNeed()V

    return-void
.end method

.method private pauseIfNeed()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1474
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    .line 1475
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    if-eqz v0, :cond_1

    .line 1476
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    move-result-object v0

    sget-object v3, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    if-ne v0, v3, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    .line 1477
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->clearBuffering()V

    .line 1478
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    .line 1479
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1600(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1482
    :cond_1
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseIfNeed() mLastPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastCanPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPauseBuffering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return-void

    :cond_2
    move v0, v2

    .line 1474
    goto :goto_0
.end method

.method private resumeIfNeed()V
    .locals 3

    .prologue
    .line 1488
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    if-eqz v0, :cond_0

    .line 1489
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    if-eqz v0, :cond_0

    .line 1490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    .line 1491
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3800(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1495
    :cond_0
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeIfNeed() mLastPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastCanPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastCanPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPauseBuffering="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-void
.end method


# virtual methods
.method public addBookmark()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1360
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    if-nez v0, :cond_0

    .line 1361
    new-instance v0, Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1364
    .local v2, uri:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v0

    const v1, 0x7f0c017e

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1371
    :goto_0
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBookmark() mTitle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mUri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return-void

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mBookmark:Lcom/mediatek/gallery3d/video/BookmarkEnhance;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/gallery3d/video/BookmarkEnhance;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    .line 1368
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v0

    const v1, 0x7f0c017f

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public canStop()Z
    .locals 4

    .prologue
    .line 1348
    const/4 v0, 0x0

    .line 1349
    .local v0, stopped:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->isPlayingEnd()Z

    move-result v0

    .line 1353
    :cond_0
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canStop() stopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLoop()Z
    .locals 3

    .prologue
    .line 1378
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLoop() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    return v0
.end method

.method public onFirstShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->isLiveStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    :goto_0
    return-void

    .line 1459
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->pauseIfNeed()V

    .line 1461
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstShow() mLastPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLastDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1467
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->resumeIfNeed()V

    .line 1469
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLastDismiss() mLastPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mLastPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 1443
    const-string v0, "video_is_loop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    .line 1444
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 1447
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1451
    const-string v0, "video_is_loop"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1452
    return-void
.end method

.method public pauseBuffering()Z
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mPauseBuffering:Z

    return v0
.end method

.method public setLoop(Z)V
    .locals 3
    .parameter "loop"

    .prologue
    .line 1386
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mIsLoop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->isLocalFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mIsLoop:Z

    .line 1390
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 1392
    :cond_0
    return-void
.end method

.method public setVideoInfo(Landroid/media/Metadata;)V
    .locals 4
    .parameter "data"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x7

    const/4 v1, 0x5

    .line 1505
    invoke-virtual {p1, v1}, Landroid/media/Metadata;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    invoke-virtual {p1, v1}, Landroid/media/Metadata;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mTitle:Ljava/lang/String;

    .line 1508
    :cond_0
    invoke-virtual {p1, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1509
    invoke-virtual {p1, v3}, Landroid/media/Metadata;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mAuthor:Ljava/lang/String;

    .line 1511
    :cond_1
    invoke-virtual {p1, v2}, Landroid/media/Metadata;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1512
    invoke-virtual {p1, v2}, Landroid/media/Metadata;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mCopyRight:Ljava/lang/String;

    .line 1514
    :cond_2
    return-void
.end method

.method public showDetail()V
    .locals 5

    .prologue
    .line 1396
    new-instance v0, Lcom/mediatek/gallery3d/video/DetailDialog;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mAuthor:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->mCopyRight:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/gallery3d/video/DetailDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    .local v0, detailDialog:Lcom/mediatek/gallery3d/video/DetailDialog;
    const v1, 0x7f0c018a

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/DetailDialog;->setTitle(I)V

    .line 1398
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/DetailDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1408
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/DetailDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1418
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/DetailDialog;->show()V

    .line 1419
    return-void
.end method

.method public startNextVideo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 1423
    move-object v1, p1

    .line 1424
    .local v1, next:Lcom/mediatek/gallery3d/ext/IMovieItem;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 1425
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    .line 1426
    .local v2, position:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    .line 1427
    .local v0, duration:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/Bookmarker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 1428
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->stopPlayback()V

    .line 1429
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVisibility(I)V

    .line 1430
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->clearVideoInfo()V
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1431
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v3, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3302(Lcom/android/gallery3d/app/MoviePlayer;Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 1432
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/MovieActivity;->refreshMovieInfo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    .line 1433
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->startVideoCareDrm()V
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$3700(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1434
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVisibility(I)V

    .line 1438
    .end local v0           #duration:I
    .end local v2           #position:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieActivity;->closeOptionsMenu()V

    .line 1439
    return-void

    .line 1436
    :cond_0
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot play the next video! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1328
    const-string v0, "MoviePlayer"

    const-string v1, "stopVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->STOPED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2502(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$TState;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1331
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->clearSeek()V

    .line 1332
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->clearDuration()V

    .line 1333
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->stopPlayback()V

    .line 1334
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setResumed(Z)V

    .line 1335
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVisibility(I)V

    .line 1336
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVisibility(I)V

    .line 1337
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->clearVideoInfo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1338
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3202(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 1339
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 1340
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 1342
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    .line 1343
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)I

    .line 1344
    return-void
.end method
