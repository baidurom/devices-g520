.class Lcom/mediatek/gallery3d/video/MTKVideoView$5;
.super Ljava/lang/Object;
.source "MTKVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 255
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 4
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 257
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3202(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 258
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3302(Lcom/mediatek/gallery3d/video/MTKVideoView;I)I

    .line 260
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVideoSizeChagned("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

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

    .line 263
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVideoSizeChagned("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3400(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3500(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v0, "MTKVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVideoSizeChagned() mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3600(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3700(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3800(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoWidth:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$3900(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4000(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 270
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mCurrentState:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4100(Lcom/mediatek/gallery3d/video/MTKVideoView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 271
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #setter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mNeedWaitLayout:Z
    invoke-static {v0, v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4202(Lcom/mediatek/gallery3d/video/MTKVideoView;Z)Z

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoSizeListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4300(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    #getter for: Lcom/mediatek/gallery3d/video/MTKVideoView;->mVideoSizeListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->access$4300(Lcom/mediatek/gallery3d/video/MTKVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MTKVideoView$5;->this$0:Lcom/mediatek/gallery3d/video/MTKVideoView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->requestLayout()V

    .line 278
    return-void
.end method
