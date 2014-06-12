.class Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/android/gallery3d/app/MoviePlayer$Restorable;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryExtension"
.end annotation


# static fields
.field private static final KEY_VIDEO_RETRY_COUNT:Ljava/lang/String; = "video_retry_count"


# instance fields
.field private mRetryCount:I

.field private mRetryDuration:I

.field private mRetryPosition:I

.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public clearRetry()V
    .locals 3

    .prologue
    .line 1077
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearRetry() mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    .line 1080
    return-void
.end method

.method public getRetryCount()I
    .locals 3

    .prologue
    .line 1094
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRetryCount() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    return v0
.end method

.method public handleOnReplay()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1159
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->isRetrying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1160
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->clearRetry()V

    .line 1161
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v1

    .line 1162
    .local v1, errorPosition:I
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    .line 1163
    .local v0, errorDuration:I
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    if-lez v1, :cond_0

    move v2, v3

    :cond_0
    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V
    invoke-static {v4, v2, v1, v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    .line 1165
    const-string v2, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReplay() errorPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errorDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .end local v0           #errorDuration:I
    .end local v1           #errorPosition:I
    :goto_0
    return v3

    :cond_1
    move v3, v2

    goto :goto_0
.end method

.method public isRetrying()Z
    .locals 4

    .prologue
    .line 1100
    const/4 v0, 0x0

    .line 1101
    .local v0, retry:Z
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    if-lez v1, :cond_0

    .line 1102
    const/4 v0, 0x1

    .line 1105
    :cond_0
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRetrying() mRetryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1122
    const/16 v0, 0x105

    if-ne p2, v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryPosition:I

    .line 1125
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryDuration:I

    .line 1126
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    .line 1127
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->reachRetryCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->RETRY_ERROR:Lcom/android/gallery3d/app/MoviePlayer$TState;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2502(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$TState;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1129
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->showReconnectingError()V

    .line 1134
    :goto_0
    const/4 v0, 0x1

    .line 1136
    :goto_1
    return v0

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-interface {v0, v1}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->showReconnecting(I)V

    .line 1132
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->retry()V

    goto :goto_0

    .line 1136
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 1141
    const/16 v1, 0x35d

    if-ne p2, v1, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->clearRetry()V

    .line 1155
    :goto_0
    return v0

    .line 1148
    :cond_0
    const/16 v1, 0x35a

    if-eq p2, v1, :cond_1

    const/16 v1, 0x35b

    if-ne p2, v1, :cond_2

    .line 1150
    :cond_1
    const-string v1, "MoviePlayer"

    const-string v2, "onInfo is PAUSE PLAY COMPLETED"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    .line 1152
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->updateRewindAndForwardUI()V

    .line 1155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 1112
    const-string v0, "video_retry_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    .line 1113
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1117
    const-string v0, "video_retry_count"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1118
    return-void
.end method

.method public reachRetryCount()Z
    .locals 3

    .prologue
    .line 1084
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reachRetryCount() mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1087
    const/4 v0, 0x1

    .line 1089
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retry()V
    .locals 4

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryPosition:I

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryDuration:I

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    .line 1071
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry() mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRetryPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return-void
.end method

.method public showRetry()V
    .locals 2

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->showReconnectingError()V

    .line 1174
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1000(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/video/MTKVideoView;->canSeekForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2700(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$2800(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setDuration(I)V

    .line 1178
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2700(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryPosition:I

    .line 1179
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2800(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryDuration:I

    .line 1180
    return-void
.end method
