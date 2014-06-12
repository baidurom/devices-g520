.class Lcom/android/camera/actor/VideoActor$SavingTask;
.super Ljava/lang/Thread;
.source "VideoActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/actor/VideoActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1009
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor$SavingTask;-><init>(Lcom/android/camera/actor/VideoActor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1011
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1012
    const-string v5, "VideoActor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SavingTask.run() begin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mEffectsActive="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z
    invoke-static {v7}, Lcom/android/camera/actor/VideoActor;->access$1500(Lcom/android/camera/actor/VideoActor;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMediaRecorderRecording="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v7}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mRecorderBusy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v7}, Lcom/android/camera/actor/VideoActor;->access$1600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStoreVideo()V

    .line 1017
    const/4 v1, 0x0

    .line 1019
    .local v1, fail:Z
    const/4 v2, 0x0

    .line 1020
    .local v2, shouldAddToMediaStoreNow:Z
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1022
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1500(Lcom/android/camera/actor/VideoActor;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1027
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mEffectsRecorder:Lcom/android/camera/actor/EffectsRecorder;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1700(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/actor/EffectsRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/actor/EffectsRecorder;->stopRecording()V

    .line 1035
    :goto_0
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v6, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/actor/VideoActor;->access$2000(Lcom/android/camera/actor/VideoActor;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/camera/actor/VideoActor;->access$1902(Lcom/android/camera/actor/VideoActor;Ljava/lang/String;)Ljava/lang/String;

    .line 1036
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1037
    const-string v5, "VideoActor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting current video filename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/camera/actor/VideoActor;->access$1900(Lcom/android/camera/actor/VideoActor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #setter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v5, v4}, Lcom/android/camera/actor/VideoActor;->access$402(Lcom/android/camera/actor/VideoActor;Z)Z

    .line 1048
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1049
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1051
    :cond_2
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1052
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1500(Lcom/android/camera/actor/VideoActor;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mStoppingAction:I
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2200(Lcom/android/camera/actor/VideoActor;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 1053
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->isQuickCapture()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1054
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v6, 0x2

    #setter for: Lcom/android/camera/actor/VideoActor;->mStoppingAction:I
    invoke-static {v5, v6}, Lcom/android/camera/actor/VideoActor;->access$2202(Lcom/android/camera/actor/VideoActor;I)I

    .line 1063
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1500(Lcom/android/camera/actor/VideoActor;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1064
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2300(Lcom/android/camera/actor/VideoActor;)V

    .line 1066
    :cond_4
    if-eqz v2, :cond_6

    .line 1067
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2400(Lcom/android/camera/actor/VideoActor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-nez v5, :cond_6

    .line 1068
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->computeDuration()J
    invoke-static {v6}, Lcom/android/camera/actor/VideoActor;->access$2500(Lcom/android/camera/actor/VideoActor;)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/android/camera/SaveRequest;->setDuration(J)V

    .line 1069
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v6}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v6

    if-nez v6, :cond_b

    :goto_3
    invoke-interface {v5, v3}, Lcom/android/camera/SaveRequest;->setIgnoreThumbnail(Z)V

    .line 1071
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v3

    new-instance v4, Lcom/android/camera/actor/VideoActor$SavingTask$1;

    invoke-direct {v4, p0}, Lcom/android/camera/actor/VideoActor$SavingTask$1;-><init>(Lcom/android/camera/actor/VideoActor$SavingTask;)V

    invoke-interface {v3, v4}, Lcom/android/camera/SaveRequest;->setListener(Lcom/android/camera/FileSaver$FileSaverListener;)V

    .line 1078
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/SaveRequest;->addRequest()V

    .line 1080
    :try_start_1
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1081
    const-string v3, "VideoActor"

    const-string v4, "Wait for URI when saving video done"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_5
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1084
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1085
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1089
    :goto_4
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v4}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/SaveRequest;->getUri()Landroid/net/Uri;

    move-result-object v4

    #setter for: Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/android/camera/actor/VideoActor;->access$2702(Lcom/android/camera/actor/VideoActor;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1090
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v4}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/SaveRequest;->getFilePath()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/camera/actor/VideoActor;->access$1902(Lcom/android/camera/actor/VideoActor;Ljava/lang/String;)Ljava/lang/String;

    .line 1091
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1092
    const-string v3, "VideoActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving video,mCurrentVideoUri=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2700(Lcom/android/camera/actor/VideoActor;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCurrentVideoFilename="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1900(Lcom/android/camera/actor/VideoActor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_6
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$2800(Lcom/android/camera/actor/VideoActor;)Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4

    .line 1098
    :try_start_3
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mEffectsActive:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$1500(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1099
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$2800(Lcom/android/camera/actor/VideoActor;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1100
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$900(Lcom/android/camera/actor/VideoActor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSavedRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2900(Lcom/android/camera/actor/VideoActor;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$900(Lcom/android/camera/actor/VideoActor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSavedRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2900(Lcom/android/camera/actor/VideoActor;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1105
    :goto_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1106
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1107
    const-string v3, "VideoActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavingTask.run() end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentVideoUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2700(Lcom/android/camera/actor/VideoActor;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRecorderBusy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_7
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStoreVideo()V

    .line 1111
    return-void

    .line 1029
    :cond_8
    :try_start_4
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1800(Lcom/android/camera/actor/VideoActor;)Landroid/media/MediaRecorder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1030
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1800(Lcom/android/camera/actor/VideoActor;)Landroid/media/MediaRecorder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1031
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1800(Lcom/android/camera/actor/VideoActor;)Landroid/media/MediaRecorder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->stop()V

    .line 1032
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$1800(Lcom/android/camera/actor/VideoActor;)Landroid/media/MediaRecorder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOnCameraReleasedListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1033
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "VideoActor"

    const-string v6, "stop fail"

    invoke-static {v5, v6, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1041
    const/4 v1, 0x1

    .line 1042
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/actor/VideoActor;->access$2000(Lcom/android/camera/actor/VideoActor;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1043
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v6, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/actor/VideoActor;->access$2000(Lcom/android/camera/actor/VideoActor;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/camera/actor/VideoActor;->deleteVideoFile(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/camera/actor/VideoActor;->access$2100(Lcom/android/camera/actor/VideoActor;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1056
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_9
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v6, 0x4

    #setter for: Lcom/android/camera/actor/VideoActor;->mStoppingAction:I
    invoke-static {v5, v6}, Lcom/android/camera/actor/VideoActor;->access$2202(Lcom/android/camera/actor/VideoActor;I)I

    goto/16 :goto_2

    .line 1059
    :cond_a
    if-eqz v1, :cond_3

    .line 1060
    iget-object v5, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v6, 0x5

    #setter for: Lcom/android/camera/actor/VideoActor;->mStoppingAction:I
    invoke-static {v5, v6}, Lcom/android/camera/actor/VideoActor;->access$2202(Lcom/android/camera/actor/VideoActor;I)I

    goto/16 :goto_2

    :cond_b
    move v3, v4

    .line 1069
    goto/16 :goto_3

    .line 1085
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1086
    :catch_1
    move-exception v0

    .line 1087
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "VideoActor"

    const-string v4, "Got notify from onFileSaved"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1103
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_c
    :try_start_7
    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v5, 0x0

    #setter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v3, v5}, Lcom/android/camera/actor/VideoActor;->access$1602(Lcom/android/camera/actor/VideoActor;Z)Z

    goto/16 :goto_5

    .line 1105
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3
.end method
