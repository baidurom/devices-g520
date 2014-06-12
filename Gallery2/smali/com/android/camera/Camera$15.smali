.class Lcom/android/camera/Camera$15;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/manager/PickerManager$PickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2134
    iput-object p1, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraPicked(I)Z
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v3, 0x0

    .line 2137
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraPicked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPendingSwitchCameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPendingSwitchCameraId:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPendingSwitchCameraId:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2152
    :cond_1
    :goto_0
    return v3

    .line 2146
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2147
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 2150
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2151
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mPendingSwitchCameraId:I
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$4302(Lcom/android/camera/Camera;I)I

    goto :goto_0
.end method

.method public onFlashPicked(Ljava/lang/String;)Z
    .locals 2
    .parameter "flashMode"

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mFlashMode:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$4402(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 2158
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2159
    const/4 v0, 0x1

    return v0
.end method

.method public onStereoPicked(Z)Z
    .locals 1
    .parameter "stereoType"

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mStereoMode:Z
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$4502(Lcom/android/camera/Camera;Z)Z

    .line 2165
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->refreshModeRelated()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)V

    .line 2166
    const/4 v0, 0x1

    return v0
.end method
