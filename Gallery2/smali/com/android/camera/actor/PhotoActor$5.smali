.class Lcom/android/camera/actor/PhotoActor$5;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Landroid/hardware/Camera$ZSDPreviewDone;


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
    .line 267
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$5;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewDone()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$5;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$5;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$5;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->animateCapture()V

    .line 272
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$5;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->interruptRenderThread()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$5;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    .line 275
    return-void
.end method
