.class Lcom/android/camera/actor/VideoActor$1;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;


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
    .line 140
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 158
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video.onShutterButtonClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mMediaRecorderRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v2}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerVideoShutterClick()V

    .line 163
    invoke-static {}, Lcom/android/camera/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->backToLastModeIfNeed()V
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$500(Lcom/android/camera/actor/VideoActor;)V

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$600(Lcom/android/camera/actor/VideoActor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStopVideoRecording()V

    .line 172
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$700(Lcom/android/camera/actor/VideoActor;)V

    .line 173
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStopVideoRecording()V

    goto :goto_0

    .line 175
    :cond_3
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStartVideoRecording()V

    .line 176
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->startVideoRecording()V
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$800(Lcom/android/camera/actor/VideoActor;)V

    .line 177
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStartVideoRecording()V

    .line 179
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$900(Lcom/android/camera/actor/VideoActor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12c

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 151
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video.onShutterButtonFocus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 144
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video.onShutterButtonLongPressed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void
.end method
