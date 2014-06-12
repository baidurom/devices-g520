.class Lcom/android/camera/actor/PhotoActor$6;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Lcom/android/camera/Camera$OnSingleTapUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 282
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleTapUp mCameraClosed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCamera.getCameraDevice()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v3, v3, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCamera.getFocusManager()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v3, v3, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCamera.getCameraState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v3, v3, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->getCurrentFocusMode(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, focusMode:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "infinity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mInitialized:Z
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$900(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusAreaSupported()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getMeteringAreaSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/manager/SelfTimerManager;->getInstance(Landroid/os/Looper;)Lcom/android/camera/manager/SelfTimerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/SelfTimerManager;->isSelfTimerCounting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$6;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method
