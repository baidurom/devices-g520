.class public Lcom/mediatek/gallery3d/video/MTKVideoView;
.super Landroid/widget/VideoView;
.source "MTKVideoView.java"

# interfaces
.implements Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;


# static fields
.field private static final LOG:Z = true

.field private static final MSG_LAYOUT_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MTKVideoView"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasGotMetaData:Z

.field private mHasGotPreparedCallBack:Z

.field private final mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mNeedWaitLayout:Z

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnResumed:Z

.field private mScreenManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

.field private mVideoSizeListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 88
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotMetaData:Z

    .line 89
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotPreparedCallBack:Z

    .line 91
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$1;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 709
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    .line 710
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$7;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$7;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->initialize()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotMetaData:Z

    .line 89
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotPreparedCallBack:Z

    .line 91
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$1;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 709
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    .line 710
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$7;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$7;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHandler:Landroid/os/Handler;

    .line 129
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->initialize()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotMetaData:Z

    .line 89
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotPreparedCallBack:Z

    .line 91
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$1;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 709
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    .line 710
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$7;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$7;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHandler:Landroid/os/Handler;

    .line 134
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->initialize()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/gallery3d/video/MTKVideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCanPause:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotMetaData:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotPreparedCallBack:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    return v0
.end method

.method static synthetic access$1902(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/video/MTKVideoView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->doPreparedIfReady(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$3100(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$3202(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$3302(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$3400(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$3500(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$3700(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$3800(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$3900(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$4202(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoSizeListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$4600(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$4700(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$4802(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$4902(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$5000(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$5200(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$5300(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$5500(Lcom/mediatek/gallery3d/video/MTKVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$5602(Lcom/mediatek/gallery3d/video/MTKVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/mediatek/gallery3d/video/MTKVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$802(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$902(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCanSeekForward:Z

    return p1
.end method

.method private clearVideoInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 464
    const-string v0, "MTKVideoView"

    const-string v1, "clearVideoInfo()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iput-boolean v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotPreparedCallBack:Z

    .line 467
    iput-boolean v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    .line 468
    return-void
.end method

.method private doPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 538
    const-string v1, "MTKVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPrepared("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    .line 541
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 544
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    .line 545
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    .line 547
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    .line 548
    .local v0, seekToPosition:I
    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 551
    :cond_1
    iget v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    if-eqz v1, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 555
    :cond_2
    iget v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 556
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->start()V

    .line 559
    :cond_3
    const-string v1, "MTKVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPrepared() end video size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTargetState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method private doPreparedIfReady(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 113
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPreparedIfReady() mHasGotPreparedCallBack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotPreparedCallBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHasGotMetaData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotMetaData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNeedWaitLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotPreparedCallBack:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotMetaData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->doPrepared(Landroid/media/MediaPlayer;)V

    .line 120
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$2;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 168
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$3;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$3;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 237
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$4;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$4;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 255
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$5;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 281
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 282
    new-instance v0, Lcom/mediatek/gallery3d/video/MTKVideoView$6;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/MTKVideoView$6;-><init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 323
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 324
    return-void
.end method


# virtual methods
.method public clearDuration()V
    .locals 3

    .prologue
    .line 702
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDuration() mDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    .line 705
    return-void
.end method

.method public clearSeek()V
    .locals 3

    .prologue
    .line 637
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearSeek() mSeekWhenPrepared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    .line 640
    return-void
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 651
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() mUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTargetState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSeekWhenPrepared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMediaPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSurfaceHolder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, position:I
    iget v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    if-lez v1, :cond_1

    .line 621
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    .line 627
    :cond_0
    :goto_0
    const-string v1, "MTKVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPosition() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSeekWhenPrepared="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return v0

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 624
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->isInPlaybackState()Z

    move-result v0

    .line 687
    .local v0, inPlaybackState:Z
    const-string v1, "MTKVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDuration() mDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", inPlaybackState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    if-eqz v0, :cond_1

    .line 690
    iget v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    if-lez v1, :cond_0

    .line 691
    iget v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    .line 697
    :goto_0
    return v1

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    .line 694
    iget v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    goto :goto_0

    .line 697
    :cond_1
    iget v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isTargetPlaying()Z
    .locals 3

    .prologue
    .line 644
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTargetPlaying() mTargetState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x55

    const/16 v3, 0x4f

    const/4 v1, 0x1

    .line 397
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 405
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 406
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_4

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->pause()V

    .line 410
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 443
    :cond_1
    :goto_1
    return v1

    .line 397
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->start()V

    .line 413
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 416
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 417
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->start()V

    .line 419
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 422
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 424
    :cond_6
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->pause()V

    .line 426
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 429
    :cond_7
    const/16 v2, 0x5a

    if-eq p1, v2, :cond_1

    const/16 v2, 0x57

    if-eq p1, v2, :cond_1

    const/16 v2, 0x58

    if-eq p1, v2, :cond_1

    const/16 v2, 0x59

    if-eq p1, v2, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->toggleMediaControlsVisiblity()V

    .line 443
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v6, 0x78

    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, width:I
    const/4 v0, 0x0

    .line 331
    .local v0, height:I
    const/4 v1, 0x1

    .line 332
    .local v1, screenMode:I
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mScreenManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    if-eqz v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mScreenManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->getScreenMode()I

    move-result v1

    .line 335
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 371
    :pswitch_0
    const-string v3, "MTKVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong screen mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    :goto_0
    const-string v3, "MTKVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure() set size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v3, "MTKVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure() video size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v3, "MTKVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure() mNeedWaitLayout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setMeasuredDimension(II)V

    .line 380
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    if-eqz v3, :cond_2

    .line 381
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z

    .line 382
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 384
    :cond_2
    return-void

    .line 337
    :pswitch_1
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    invoke-static {v3, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDefaultSize(II)I

    move-result v2

    .line 338
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    invoke-static {v3, p2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDefaultSize(II)I

    move-result v0

    .line 339
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    if-lez v3, :cond_1

    .line 340
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_3

    .line 342
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    div-int v0, v3, v4

    goto/16 :goto_0

    .line 343
    :cond_3
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    mul-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    .line 345
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    div-int v2, v3, v4

    goto/16 :goto_0

    .line 354
    :pswitch_2
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    invoke-static {v3, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDefaultSize(II)I

    move-result v2

    .line 355
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    invoke-static {v3, p2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDefaultSize(II)I

    move-result v0

    .line 356
    goto/16 :goto_0

    .line 358
    :pswitch_3
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    invoke-static {v3, p1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDefaultSize(II)I

    move-result v2

    .line 359
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    invoke-static {v3, p2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDefaultSize(II)I

    move-result v0

    .line 360
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    if-lez v3, :cond_1

    .line 361
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_4

    .line 363
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    div-int v2, v3, v4

    goto/16 :goto_0

    .line 364
    :cond_4
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    mul-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    .line 366
    iget v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I

    div-int v0, v3, v4

    goto/16 :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onScreenModeChanged(I)V
    .locals 0
    .parameter "newMode"

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->requestLayout()V

    .line 744
    return-void
.end method

.method protected openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 473
    const-string v2, "MTKVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openVideo() mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSurfaceHolder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSeekWhenPrepared="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMediaPlayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOnResumed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnResumed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->clearVideoInfo()V

    .line 478
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnResumed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    invoke-virtual {p0, v6}, Lcom/mediatek/gallery3d/video/MTKVideoView;->release(Z)V

    .line 492
    const-string v2, ""

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    const-string v2, "MTKVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 498
    :cond_2
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 500
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 501
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 503
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 504
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 505
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 506
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 507
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentBufferPercentage:I

    .line 508
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 509
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 510
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 511
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 512
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 515
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 531
    const-string v2, "MTKVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openVideo() mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSurfaceHolder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSeekWhenPrepared="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMediaPlayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MTKVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 521
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 522
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MTKVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 525
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 526
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    const-string v2, "MTKVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method protected release(Z)V
    .locals 3
    .parameter "cleartargetstate"

    .prologue
    .line 670
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mMediaPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-super {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    .line 673
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 580
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume() mTargetState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setResumed(Z)V

    .line 583
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->openVideo()V

    .line 584
    return-void
.end method

.method public seekTo(I)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 662
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") isInPlaybackState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-super {p0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 665
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 678
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    if-lez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    .line 681
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 604
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnBufferingUpdateListener("

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

    .line 606
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 597
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoListener("

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

    .line 599
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 609
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoSizeListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 611
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnVideoSizeChangedListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method public setResumed(Z)V
    .locals 3
    .parameter "resume"

    .prologue
    .line 572
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResumed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOnResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnResumed:Z

    .line 575
    return-void
.end method

.method public setScreenModeManager(Lcom/mediatek/gallery3d/video/ScreenModeManager;)V
    .locals 3
    .parameter "manager"

    .prologue
    .line 732
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mScreenManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    .line 733
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mScreenManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mScreenManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->addListener(Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;)V

    .line 737
    :cond_0
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenModeManager("

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

    .line 739
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mDuration:I

    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setResumed(Z)V

    .line 450
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 451
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;Z)V
    .locals 3
    .parameter "uri"
    .parameter
    .parameter "hasGotMetaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoURI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iput-boolean p3, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mHasGotMetaData:Z

    .line 459
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 460
    return-void
.end method

.method public suspend()V
    .locals 3

    .prologue
    .line 589
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suspend() mTargetState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-super {p0}, Landroid/widget/VideoView;->suspend()V

    .line 592
    return-void
.end method
