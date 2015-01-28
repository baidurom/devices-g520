.class public Lcom/android/gallery3d/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MoviePlayer$15;,
        Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;,
        Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;,
        Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;,
        Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;,
        Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;,
        Lcom/android/gallery3d/app/MoviePlayer$Restorable;,
        Lcom/android/gallery3d/app/MoviePlayer$TState;,
        Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;
    }
.end annotation


# static fields
.field private static final BLACK_TIMEOUT:J = 0x1f4L

.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final DELAY_REMOVE_MS:I = 0x2710

.field private static final KEY_CONSUMED_DRM_RIGHT:Ljava/lang/String; = "consumed_drm_right"

.field private static final KEY_POSITION_WHEN_PAUSED:Ljava/lang/String; = "video_position_when_paused"

.field private static final KEY_RESUMEABLE_TIME:Ljava/lang/String; = "resumeable-timeout"

.field private static final KEY_VIDEO_CAN_PAUSE:Ljava/lang/String; = "video_can_pause"

.field private static final KEY_VIDEO_CAN_SEEK:Ljava/lang/String; = "video_can_seek"

.field private static final KEY_VIDEO_LAST_DISCONNECT_TIME:Ljava/lang/String; = "last_disconnect_time"

.field private static final KEY_VIDEO_LAST_DURATION:Ljava/lang/String; = "video_last_duration"

.field private static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video-position"

.field private static final KEY_VIDEO_STATE:Ljava/lang/String; = "video_state"

.field private static final KEY_VIDEO_STREAMING_TYPE:Ljava/lang/String; = "video_streaming_type"

.field private static final LOG:Z = true

.field private static final RESUMEABLE_TIMEOUT:J = 0x2bf20L

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final STREAMING_HTTP:I = 0x1

.field public static final STREAMING_LOCAL:I = 0x0

.field public static final STREAMING_RTSP:I = 0x2

.field public static final STREAMING_SDP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MoviePlayer"


# instance fields
.field private mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

.field private final mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private final mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

.field private mCanReplay:Z

.field private mConsumedDrmRight:Z

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

.field private mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

.field private mDelayVideoRunnable:Ljava/lang/Runnable;

.field private mDragging:Z

.field private mDrmExt:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

.field private mFirstBePlayed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private mIsOnlyAudio:Z

.field private mIsShowResumingDialog:Z

.field private mLastSystemUiVis:I

.field private mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

.field private mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

.field private mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private final mRemoveBackground:Ljava/lang/Runnable;

.field private mResumeableTime:J

.field private mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

.field private mRewindAndForwardListener:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

.field private final mRootView:Landroid/view/View;

.field private mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

.field private mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

.field private mShowing:Z

.field private mStreamingType:I

.field private mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

.field private mVideoCanPause:Z

.field private mVideoCanSeek:Z

.field private mVideoLastDuration:I

.field private mVideoPosition:I

.field private final mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

.field private mWaitMetaData:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Landroid/os/Bundle;Z)V
    .locals 10
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "info"
    .parameter "savedInstance"
    .parameter "canReplay"

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 106
    iput-wide v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 107
    iput v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 108
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 109
    iput v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    .line 117
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 132
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    .line 142
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 748
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    .line 795
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanPause:Z

    .line 796
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    .line 926
    iput v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    .line 982
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    .line 983
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-static {v1}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieDrmExtension(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDrmExt:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    .line 1010
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    .line 1048
    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1050
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-direct {v1, p0, v6}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    .line 1051
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    invoke-direct {v1, p0, v6}, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    .line 1052
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-direct {v1, p0, v6}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    .line 1053
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-direct {v1, p0, v6}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    .line 1056
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;

    invoke-direct {v1, p0, v6}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRewindAndForwardListener:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    .line 1685
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$14;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$14;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDelayVideoRunnable:Ljava/lang/Runnable;

    .line 152
    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 153
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    .line 154
    const v1, 0x7f0b0040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/video/MTKVideoView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    .line 155
    new-instance v1, Lcom/android/gallery3d/app/Bookmarker;

    invoke-direct {v1, p2}, Lcom/android/gallery3d/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    .line 158
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {v1, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    .line 159
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 161
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, p5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 163
    invoke-direct {p0, p2, p3, p5}, Lcom/android/gallery3d/app/MoviePlayer;->init(Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Z)V

    .line 165
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 166
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 169
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$6;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$6;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 226
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 228
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-direct {v1, p0, v6}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 229
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 231
    if-eqz p4, :cond_0

    .line 232
    const-string v1, "video-position"

    invoke-virtual {p4, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 233
    const-string v1, "resumeable-timeout"

    invoke-virtual {p4, v1, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 234
    invoke-direct {p0, p4}, Lcom/android/gallery3d/app/MoviePlayer;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 235
    iput-boolean v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->setScreenMode()V

    .line 247
    return-void

    .line 237
    :cond_0
    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 238
    iput-boolean v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    .line 239
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Lcom/android/gallery3d/app/BookmarkerInfo;

    move-result-object v0

    .line 240
    .local v0, bookmark:Lcom/android/gallery3d/app/BookmarkerInfo;
    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0, p2, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;Lcom/android/gallery3d/app/BookmarkerInfo;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideoCareDrm()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MoviePlayer;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsShowResumingDialog:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/MoviePlayer;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZII)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$TState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$TState;)Lcom/android/gallery3d/app/MoviePlayer$TState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->clearVideoInfo()V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IMovieItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/gallery3d/app/MoviePlayer;Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/Bookmarker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideoCareDrm()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return p1
.end method

.method private addBackground()V
    .locals 2

    .prologue
    .line 1677
    const-string v0, "MoviePlayer"

    const-string v1, "addBackground()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1680
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1681
    return-void
.end method

.method private clearVideoInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 833
    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 834
    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    .line 835
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    .line 836
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    .line 837
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    #calls: Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->clearServerInfo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->access$1700(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    .line 840
    :cond_0
    return-void
.end method

.method private doOnPause()V
    .locals 12

    .prologue
    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 340
    .local v6, start:J
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->addBackground()V

    .line 341
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 342
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 343
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v8}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v5

    .line 344
    .local v5, position:I
    if-ltz v5, :cond_0

    .end local v5           #position:I
    :goto_0
    iput v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 345
    const-string v8, "MoviePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mVideoPosition is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v8}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    .line 347
    .local v0, duration:I
    if-lez v0, :cond_1

    .end local v0           #duration:I
    :goto_1
    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    .line 348
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v9}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v11, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 350
    .local v1, end1:J
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v8}, Landroid/widget/VideoView;->stopPlayback()V

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x2bf20

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 352
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setResumed(Z)V

    .line 353
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 356
    .local v3, end2:J
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-interface {v8}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->clearBuffering()V

    .line 357
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    #calls: Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->recordDisconnectTime()V
    invoke-static {v8}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->access$1300(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    .line 359
    const-string v8, "MoviePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doOnPause() save video info consume:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v1, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v8, "MoviePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doOnPause() suspend video consume:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v3, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v8, "MoviePlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doOnPause() mVideoPosition="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mResumeableTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mVideoLastDuration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mIsShowResumingDialog="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsShowResumingDialog:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    .line 344
    .end local v1           #end1:J
    .end local v3           #end2:J
    .restart local v5       #position:I
    :cond_0
    iget v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    goto/16 :goto_0

    .line 347
    .end local v5           #position:I
    .restart local v0       #duration:I
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    goto/16 :goto_1
.end method

.method private doStartVideo(ZII)V
    .locals 4
    .parameter "enableFasten"
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 501
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZIIZ)V

    .line 502
    return-void
.end method

.method private doStartVideo(ZIIZ)V
    .locals 10
    .parameter "enableFasten"
    .parameter "position"
    .parameter "duration"
    .parameter "start"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 456
    const-string v6, "MoviePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doStartVideo("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v6}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, scheme:Ljava/lang/String;
    const-string v6, "http"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "rtsp"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "https"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 463
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showLoading()V

    .line 464
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isLiveStreaming()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setPlayingInfo(Z)V

    .line 465
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 472
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onIsRTSP()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 473
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 474
    .local v1, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "MTK-ASYNC-RTSP-PAUSE-PLAY"

    const-string v7, "true"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v7}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWaitMetaData:Z

    if-nez v8, :cond_6

    :goto_1
    invoke-virtual {v6, v7, v1, v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;Z)V

    .line 479
    .end local v1           #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    if-eqz p4, :cond_1

    .line 480
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->start()V

    .line 485
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->getLoop()Z

    move-result v2

    .line 486
    .local v2, loop:Z
    if-eqz v2, :cond_9

    move v0, v2

    .line 487
    .local v0, canReplay:Z
    :goto_3
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 488
    if-lez p2, :cond_3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 489
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4, p2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 491
    :cond_3
    if-eqz p1, :cond_4

    .line 492
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v4, p3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setDuration(I)V

    .line 494
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 495
    return-void

    .line 468
    .end local v0           #canReplay:Z
    .end local v2           #loop:Z
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 469
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    goto :goto_0

    .restart local v1       #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    move v4, v5

    .line 475
    goto :goto_1

    .line 477
    .end local v1           #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v7}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWaitMetaData:Z

    if-nez v9, :cond_8

    :goto_4
    invoke-virtual {v6, v7, v8, v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;Z)V

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_4

    .line 486
    .restart local v2       #loop:Z
    :cond_9
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCanReplay:Z

    goto :goto_3
.end method

.method private doStartVideoCareDrm(ZII)V
    .locals 4
    .parameter "enableFasten"
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 986
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartVideoCareDrm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 989
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDrmExt:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$13;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$13;-><init>(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;->handleDrmFile(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZII)V

    .line 1002
    :cond_0
    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 1027
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() mHasPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResumeableTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoLastDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConsumedDrmRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoCanSeek="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoCanPause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsShowResumingDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsShowResumingDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-void
.end method

.method private getVideoInfo(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 843
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 844
    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 846
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_2

    .line 847
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->setVideoInfo(Landroid/media/Metadata;)V

    .line 848
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->setVideoInfo(Landroid/media/Metadata;)V

    .line 852
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 853
    .local v1, duration:I
    if-gtz v1, :cond_3

    .line 854
    iput v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    .line 862
    :cond_0
    :goto_1
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoInfo() duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStreamingType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v0           #data:Landroid/media/Metadata;
    .end local v1           #duration:I
    :cond_1
    return-void

    .line 850
    .restart local v0       #data:Landroid/media/Metadata;
    :cond_2
    const-string v2, "MoviePlayer"

    const-string v3, "Metadata is null!"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 857
    .restart local v1       #duration:I
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    if-ne v2, v5, :cond_0

    .line 858
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    goto :goto_1
.end method

.method private init(Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Z)V
    .locals 2
    .parameter "movieActivity"
    .parameter "info"
    .parameter "canReplay"

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    .line 752
    iput-boolean p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCanReplay:Z

    .line 753
    iput-object p2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 754
    invoke-interface {p2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->judgeStreamingType(Landroid/net/Uri;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 758
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 759
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 760
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 762
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$12;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$12;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 769
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getOverlayExt()Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    .line 770
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getControllerRewindAndForwardExt()Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    .line 771
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRewindAndForwardListener:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    invoke-interface {v0, v1}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->setIListener(Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;)V

    .line 774
    :cond_0
    return-void
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 719
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private judgeStreamingType(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 931
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "judgeStreamingType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    if-nez p1, :cond_0

    .line 953
    :goto_0
    return-void

    .line 936
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, scheme:Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWaitMetaData:Z

    .line 938
    invoke-static {p1, p2}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isSdpStreaming(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    .line 950
    :goto_1
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStreamingType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCanGetMetaData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWaitMetaData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 940
    :cond_1
    invoke-static {p1, p2}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isRtspStreaming(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    goto :goto_1

    .line 942
    :cond_2
    invoke-static {p1, p2}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isHttpStreaming(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 943
    iput v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    .line 944
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWaitMetaData:Z

    goto :goto_1

    .line 946
    :cond_3
    iput v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    .line 947
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mWaitMetaData:Z

    goto :goto_1
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 815
    const-string v0, "video_last_duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    .line 816
    const-string v0, "video_can_pause"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanPause:Z

    .line 817
    const-string v0, "video_can_seek"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    .line 818
    const-string v0, "consumed_drm_right"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    .line 819
    const-string v0, "video_streaming_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    .line 820
    const-string v0, "video_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$TState;->valueOf(Ljava/lang/String;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 822
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 823
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 824
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 825
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 827
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method

.method private onSaveInstanceStateMore(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 800
    const-string v0, "video_last_duration"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    const-string v0, "video_can_pause"

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->canPause()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 802
    const-string v0, "video_can_seek"

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 803
    const-string v0, "consumed_drm_right"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 804
    const-string v0, "video_streaming_type"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 805
    const-string v0, "video_state"

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mScreenModeExt:Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 807
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 808
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 810
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void
.end method

.method private pauseVideo()V
    .locals 2

    .prologue
    .line 516
    const-string v0, "MoviePlayer"

    const-string v1, "pauseVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PAUSED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 519
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPaused()V

    .line 521
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 522
    return-void
.end method

.method private pauseVideoMoreThanThreeMinutes()V
    .locals 5

    .prologue
    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 417
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isLiveStreaming()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-static {v2}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieStrategy(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieStrategy;->shouldEnableCheckLongSleep()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanPause:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->canPause()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 424
    :cond_1
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseVideoMoreThanThreeMinutes() now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method private playVideo()V
    .locals 2

    .prologue
    .line 506
    const-string v0, "MoviePlayer"

    const-string v1, "playVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 509
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 510
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 511
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 512
    return-void
.end method

.method private removeBackground()V
    .locals 4

    .prologue
    .line 1668
    const-string v0, "MoviePlayer"

    const-string v1, "removeBackground()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1671
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1672
    return-void
.end method

.method private setProgress()I
    .locals 5

    .prologue
    .line 439
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProgress() mDragging="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsOnlyAudio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    if-nez v2, :cond_2

    .line 443
    :cond_0
    const/4 v1, 0x0

    .line 451
    :cond_1
    :goto_0
    return v1

    .line 445
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v1

    .line 446
    .local v1, position:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    .line 447
    .local v0, duration:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimes(II)V

    .line 448
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getPlayPauseEanbled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->updateRewindAndForwardUI()V

    goto :goto_0
.end method

.method private showResumeDialog(Landroid/content/Context;Lcom/android/gallery3d/app/BookmarkerInfo;)V
    .locals 6
    .parameter "context"
    .parameter "bookmark"

    .prologue
    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c01e6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 269
    const v2, 0x7f0c01e7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/gallery3d/app/BookmarkerInfo;->mBookmark:I

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {p1, v5}, Lcom/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 272
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$7;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$7;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    const v2, 0x7f0c01e8

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct {v3, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$8;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/BookmarkerInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    const v2, 0x7f0c01ed

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$9;

    invoke-direct {v3, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$9;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/BookmarkerInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 296
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$10;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$10;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 302
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$11;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$11;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 308
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 309
    return-void
.end method

.method private showSystemUi(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 250
    const/16 v0, 0x700

    .line 253
    .local v0, flag:I
    if-nez p1, :cond_0

    .line 254
    or-int/lit8 v0, v0, 0x7

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 258
    return-void
.end method

.method private startVideoCareDrm()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1005
    invoke-direct {p0, v0, v0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V

    .line 1006
    return-void
.end method


# virtual methods
.method public getMoviePlayerExt()Lcom/mediatek/gallery3d/ext/IMoviePlayer;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    return-object v0
.end method

.method public getStepOptionValue()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1303
    const-string v1, "selected_step_option"

    .line 1304
    .local v1, slectedStepOption:Ljava/lang/String;
    const-string v4, "video_player_data"

    .line 1305
    .local v4, videoPlayerData:Ljava/lang/String;
    const/16 v2, 0xbb8

    .line 1306
    .local v2, stepBase:I
    const/4 v3, 0x0

    .line 1307
    .local v3, stepOptionThreeSeconds:I
    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const-string v6, "video_player_data"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1309
    .local v0, mPrefs:Landroid/content/SharedPreferences;
    const-string v5, "selected_step_option"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0xbb8

    return v5
.end method

.method public getVideoSurface()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    return-object v0
.end method

.method public isFullBuffer()Z
    .locals 2

    .prologue
    .line 956
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 957
    :cond_0
    const/4 v0, 0x0

    .line 959
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLiveStreaming()Z
    .locals 4

    .prologue
    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, isLive:Z
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 972
    const/4 v0, 0x1

    .line 975
    :cond_0
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLiveStreaming() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return v0
.end method

.method public isLocalFile()Z
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStreamingType:I

    if-nez v0, :cond_0

    .line 964
    const/4 v0, 0x1

    .line 966
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 4
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->pauseBuffering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isFullBuffer()Z

    move-result v0

    .line 911
    .local v0, fullBuffer:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-interface {v1, v0, p2}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->showBuffering(ZI)V

    .line 914
    .end local v0           #fullBuffer:Z
    :cond_0
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBufferingUpdate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") pauseBuffering="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->pauseBuffering()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void
.end method

.method public onCompletion()V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 550
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion() mCanReplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCanReplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "MoviePlayer"

    const-string v1, "error occured, exit the video player!"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 566
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->getLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onReplay()V

    goto :goto_0

    .line 560
    :cond_1
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$TState;->COMPELTED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 561
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCanReplay:Z

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 564
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 431
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    #calls: Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->clearTimeoutDialog()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->access$1400(Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;)V

    .line 432
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x1

    .line 528
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->setError()V

    .line 531
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 538
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 542
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHidden()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 637
    const-string v0, "MoviePlayer"

    const-string v1, "onHidden"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 640
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 641
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->removeBackground()V

    .line 642
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 894
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo() what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 904
    :goto_0
    return v0

    .line 899
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x35c

    if-ne p2, v2, :cond_1

    .line 900
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;

    const v3, 0x7f0c0176

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 901
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 904
    goto :goto_0
.end method

.method public onIsRTSP()Z
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isRtspStreaming(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "MoviePlayer"

    const-string v1, "onIsRTSP() is RTSP"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x1

    .line 652
    :goto_0
    return v0

    .line 651
    :cond_0
    const-string v0, "MoviePlayer"

    const-string v1, "onIsRTSP() is not RTSP"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 682
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 683
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    .line 711
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 686
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 711
    const/4 v0, 0x0

    goto :goto_0

    .line 689
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->canPause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 692
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 696
    :sswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->canPause()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 701
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 686
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 715
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onPause()Z
    .locals 4

    .prologue
    .line 313
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() isLiveStreaming()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isLiveStreaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, pause:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isLiveStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 323
    :goto_0
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() , return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v0

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doOnPause()V

    .line 320
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPlayPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 578
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v1

    invoke-interface {v0, v1, v2, v2}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    .line 587
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    .line 588
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v1

    invoke-interface {v0, v1, v2, v2}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 870
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepared("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->getVideoInfo(Landroid/media/MediaPlayer;)V

    .line 873
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isLocalFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 874
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isLiveStreaming()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setPlayingInfo(Z)V

    .line 876
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    .line 877
    .local v0, canPause:Z
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 878
    .local v1, canSeek:Z
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-interface {v2, v0}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setCanPause(Z)V

    .line 879
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    invoke-interface {v2, v1}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setCanScrubbing(Z)V

    .line 881
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayPauseReplayResume()V

    .line 882
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->isTargetPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 883
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 885
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->updateRewindAndForwardUI()V

    .line 887
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepared() canPause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", canSeek="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void

    .line 877
    .end local v1           #canSeek:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReplay()V
    .locals 2

    .prologue
    .line 669
    const-string v0, "MoviePlayer"

    const-string v1, "onReplay()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mFirstBePlayed:Z

    .line 672
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->handleOnReplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideoCareDrm()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 368
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->dump()V

    .line 369
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 370
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDelayVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDelayVideoRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mServerTimeoutExt:Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$ServerTimeoutExtension;->handleOnResume()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsShowResumingDialog:Z

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 411
    :goto_0
    return-void

    .line 379
    :cond_1
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$15;->$SwitchMap$com$android$gallery3d$app$MoviePlayer$TState:[I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 399
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z

    if-eqz v0, :cond_5

    .line 400
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-direct {p0, v5, v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZII)V

    .line 404
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideoMoreThanThreeMinutes()V

    .line 407
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->dump()V

    .line 408
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 381
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRetryExt:Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->showRetry()V

    goto :goto_2

    .line 384
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->stopVideo()V

    goto :goto_2

    .line 387
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 388
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setDuration(I)V

    goto :goto_2

    .line 395
    :pswitch_3
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-direct {p0, v5, v0, v1, v4}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZIIZ)V

    .line 396
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_2

    .line 402
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I

    invoke-direct {p0, v5, v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V

    goto :goto_1

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 261
    const-string v0, "video-position"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 263
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onSaveInstanceStateMore(Landroid/os/Bundle;)V

    .line 264
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1702
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 1703
    return-void
.end method

.method public onSeekEnd(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 616
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 619
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 621
    return-void
.end method

.method public onSeekMove(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 606
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekMove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 611
    :cond_0
    return-void
.end method

.method public onSeekStart()V
    .locals 3

    .prologue
    .line 598
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekStart() mDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 601
    return-void
.end method

.method public onShown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 626
    const-string v0, "MoviePlayer"

    const-string v1, "onShown"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->addBackground()V

    .line 629
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 630
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 631
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 632
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 331
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() mHasPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->doOnPause()V

    .line 336
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1013
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    .line 1018
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    invoke-interface {v0, v1, v2}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->setBottomPanel(ZZ)V

    .line 1020
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mIsOnlyAudio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return-void

    .line 1016
    :cond_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsOnlyAudio:Z

    goto :goto_0
.end method

.method public updateRewindAndForwardUI()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    if-eqz v0, :cond_0

    .line 657
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v4

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getTimeBarEanbled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v5}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    invoke-interface {v5}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->getTimeBarEanbled()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-interface {v3, v4, v0, v1}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    .line 664
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 657
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
