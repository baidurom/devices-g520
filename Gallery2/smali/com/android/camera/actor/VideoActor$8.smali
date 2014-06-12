.class Lcom/android/camera/actor/VideoActor$8;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1190
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoPauseResumeListner.onClick() mMediaRecoderRecordingPaused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$3800(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mRecorderBusy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$1600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mMediaRecorderRecording = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1221
    :cond_1
    :goto_0
    return-void

    .line 1198
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #setter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v1, v4}, Lcom/android/camera/actor/VideoActor;->access$1602(Lcom/android/camera/actor/VideoActor;Z)Z

    .line 1200
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$3800(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1201
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$3900(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/manager/RecordingView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/RecordingView;->showRecording(Z)V

    .line 1203
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1800(Lcom/android/camera/actor/VideoActor;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 1204
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J
    invoke-static {v4}, Lcom/android/camera/actor/VideoActor;->access$4100(Lcom/android/camera/actor/VideoActor;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    #setter for: Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/actor/VideoActor;->access$4002(Lcom/android/camera/actor/VideoActor;J)J

    .line 1205
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/actor/VideoActor;->access$4102(Lcom/android/camera/actor/VideoActor;J)J

    .line 1206
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z
    invoke-static {v1, v2}, Lcom/android/camera/actor/VideoActor;->access$3802(Lcom/android/camera/actor/VideoActor;Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :goto_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #setter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v1, v6}, Lcom/android/camera/actor/VideoActor;->access$1602(Lcom/android/camera/actor/VideoActor;Z)Z

    .line 1217
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1218
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoPauseResumeListner.onClick() end. mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$1600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "VideoActor"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1209
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v1

    const v2, 0x7f0c0077

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showToast(I)V

    .line 1210
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$2300(Lcom/android/camera/actor/VideoActor;)V

    goto :goto_1

    .line 1213
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$8;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->pauseVideoRecording()V
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$4200(Lcom/android/camera/actor/VideoActor;)V

    goto :goto_1
.end method
