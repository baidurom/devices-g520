.class Lcom/android/camera/actor/SmileActor$SmileCameraCategory;
.super Lcom/android/camera/actor/PhotoActor$CameraCategory;
.source "SmileActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/SmileActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmileCameraCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/SmileActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/SmileActor;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public animateCapture(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "camera"
    .parameter "zsdEnabled"

    .prologue
    .line 222
    return-void
.end method

.method public applySpecialCapture()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public doCancelCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 225
    invoke-static {}, Lcom/android/camera/actor/SmileActor;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const-string v2, "SmileActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCamera.getCameraDevice()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v4, v4, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v4}, Lcom/android/camera/actor/SmileActor;->access$200(Lcom/android/camera/actor/SmileActor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 230
    iget-object v2, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_1

    .line 238
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v2}, Lcom/android/camera/actor/SmileActor;->access$200(Lcom/android/camera/actor/SmileActor;)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    move v0, v1

    .line 235
    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #setter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v1, v0}, Lcom/android/camera/actor/SmileActor;->access$202(Lcom/android/camera/actor/SmileActor;I)I

    goto :goto_0
.end method

.method public doOnPictureTaken()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->interruptRenderThread()V

    .line 220
    return-void
.end method

.method public onLeaveActor()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 245
    return-void
.end method
