.class Lcom/android/camera/actor/PanoramaActor$2;
.super Lcom/android/camera/CameraErrorCallback;
.source "PanoramaActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PanoramaActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PanoramaActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$2;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-direct {p0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/camera/CameraErrorCallback;->onError(ILandroid/hardware/Camera;)V

    .line 139
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$2;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v1, 0x7f0c007a

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$2;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$2;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #calls: Lcom/android/camera/actor/PanoramaActor;->showCaptureError()V
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$300(Lcom/android/camera/actor/PanoramaActor;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$2;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/actor/PanoramaActor;->stopCapture(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$400(Lcom/android/camera/actor/PanoramaActor;Z)V

    goto :goto_0
.end method
