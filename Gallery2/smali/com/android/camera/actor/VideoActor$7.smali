.class Lcom/android/camera/actor/VideoActor$7;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1114
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1116
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoSavedRunnable.run() begin mVideoCameraClosed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStoppingAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mStoppingAction:I
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$2200(Lcom/android/camera/actor/VideoActor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEffectsDisplayResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mEffectsDisplayResult:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$3000(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFocusState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mFocusState:I
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$3100(Lcom/android/camera/actor/VideoActor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSingleAutoModeSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$3200(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$1600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V
    invoke-static {v1, v5}, Lcom/android/camera/actor/VideoActor;->access$3300(Lcom/android/camera/actor/VideoActor;Z)V

    .line 1123
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->dismissProgress()V

    .line 1124
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 1129
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 1130
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mStoppingAction:I
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$2200(Lcom/android/camera/actor/VideoActor;)I

    move-result v1

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mStoppingAction:I
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$2200(Lcom/android/camera/actor/VideoActor;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    const/4 v0, 0x4

    .line 1132
    .local v0, action:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1150
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mEffectsDisplayResult:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$3000(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1151
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->closeVideoFileDescriptor()V
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$3600(Lcom/android/camera/actor/VideoActor;)V

    .line 1154
    :cond_3
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mFocusState:I
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$3100(Lcom/android/camera/actor/VideoActor;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mFocusState:I
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$3100(Lcom/android/camera/actor/VideoActor;)I

    move-result v1

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$3200(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1157
    :cond_4
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->changeFocusState()V
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$3700(Lcom/android/camera/actor/VideoActor;)V

    .line 1159
    :cond_5
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->backToLastModeIfNeed()V
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$500(Lcom/android/camera/actor/VideoActor;)V

    .line 1160
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #setter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v1, v5}, Lcom/android/camera/actor/VideoActor;->access$1602(Lcom/android/camera/actor/VideoActor;Z)Z

    .line 1161
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1162
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoSavedRunnable.run() end mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$1600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_6
    return-void

    .line 1130
    .end local v0           #action:I
    :cond_7
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mStoppingAction:I
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$2200(Lcom/android/camera/actor/VideoActor;)I

    move-result v0

    goto :goto_0

    .line 1134
    .restart local v0       #action:I
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1135
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->animateCapture()V

    goto/16 :goto_1

    .line 1139
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->showAlert()V
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$3400(Lcom/android/camera/actor/VideoActor;)V

    goto/16 :goto_1

    .line 1142
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->doReturnToCaller(Z)V
    invoke-static {v1, v5}, Lcom/android/camera/actor/VideoActor;->access$3500(Lcom/android/camera/actor/VideoActor;Z)V

    goto/16 :goto_1

    .line 1145
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$7;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->doReturnToCaller(Z)V
    invoke-static {v1, v4}, Lcom/android/camera/actor/VideoActor;->access$3500(Lcom/android/camera/actor/VideoActor;Z)V

    goto/16 :goto_1

    .line 1132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
