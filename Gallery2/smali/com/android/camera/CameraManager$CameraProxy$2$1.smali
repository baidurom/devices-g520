.class Lcom/android/camera/CameraManager$CameraProxy$2$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraManager$CameraProxy$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/CameraManager$CameraProxy$2;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager$CameraProxy$2;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileSetParameters()V

    .line 497
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy$2;->val$context:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 498
    .local v0, params:Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    iget v1, v1, Lcom/android/camera/CameraManager$CameraProxy$2;->val$zoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 500
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 502
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileSetParameters()V

    .line 503
    return-void
.end method
