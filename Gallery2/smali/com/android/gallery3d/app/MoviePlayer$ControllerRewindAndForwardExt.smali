.class Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerRewindAndForwardExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1218
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public onForward()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1282
    const-string v2, "MoviePlayer"

    const-string v3, "ControllerRewindAndForwardExt onForward()"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->canSeekForward()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1284
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v3

    invoke-interface {v2, v3, v4, v4}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    .line 1287
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->getStepOptionValue()I

    move-result v0

    .line 1288
    .local v0, stepValue:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v1

    .line 1292
    .local v1, targetDuration:I
    :goto_0
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForward targetDuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 1299
    .end local v0           #stepValue:I
    .end local v1           #targetDuration:I
    :goto_1
    return-void

    .line 1288
    .restart local v0       #stepValue:I
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    add-int v1, v2, v0

    goto :goto_0

    .line 1295
    .end local v0           #stepValue:I
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v3

    invoke-interface {v2, v3, v4, v4}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    goto :goto_1
.end method

.method public onHidden()V
    .locals 0

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onHidden()V

    .line 1242
    return-void
.end method

.method public onIsRTSP()Z
    .locals 1

    .prologue
    .line 1250
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPause()V
    .locals 0

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onPlayPause()V

    .line 1222
    return-void
.end method

.method public onReplay()V
    .locals 0

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onReplay()V

    .line 1246
    return-void
.end method

.method public onRewind()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1263
    const-string v2, "MoviePlayer"

    const-string v3, "ControllerRewindAndForwardExt onRewind()"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->canSeekBackward()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1265
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v3

    invoke-interface {v2, v3, v1, v1}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    .line 1268
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->getStepOptionValue()I

    move-result v0

    .line 1269
    .local v0, stepValue:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v2, v0

    if-gez v2, :cond_0

    .line 1272
    .local v1, targetDuration:I
    :goto_0
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRewind targetDuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 1279
    .end local v0           #stepValue:I
    .end local v1           #targetDuration:I
    :goto_1
    return-void

    .line 1269
    .restart local v0       #stepValue:I
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v2

    sub-int v1, v2, v0

    goto :goto_0

    .line 1275
    .end local v0           #stepValue:I
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v3

    invoke-interface {v2, v3, v1, v1}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    goto :goto_1
.end method

.method public onSeekEnd(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 1233
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onSeekEnd(I)V

    .line 1234
    return-void
.end method

.method public onSeekMove(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 1229
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onSeekMove(I)V

    .line 1230
    return-void
.end method

.method public onSeekStart()V
    .locals 0

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onSeekStart()V

    .line 1226
    return-void
.end method

.method public onShown()V
    .locals 0

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->onShown()V

    .line 1238
    return-void
.end method

.method public onStopVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1254
    const-string v0, "MoviePlayer"

    const-string v1, "ControllerRewindAndForwardExt onStopVideo()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->canStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mPlayerExt:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2900(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->stopVideo()V

    .line 1257
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mControllerRewindAndForwardExt:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;

    move-result-object v0

    invoke-interface {v0, v2, v2, v2}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;->showControllerButtonsView(ZZZ)V

    .line 1260
    :cond_0
    return-void
.end method
