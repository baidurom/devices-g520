.class Lcom/mediatek/gallery3d/video/MTKVideoView$4;
.super Ljava/lang/Object;
.source "MTKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/video/MTKVideoView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/MTKVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$4;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$4;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2802(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 240
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$4;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2900(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$4;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$2900(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 244
    :cond_0
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate() Buffering percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate() mTargetState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$4;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mTargetState:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3000(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate() mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$4;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3100(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method
