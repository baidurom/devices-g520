.class Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;
.super Landroid/os/Handler;
.source "PanoramaActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PanoramaActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PanoramaActor;


# direct methods
.method public constructor <init>(Lcom/android/camera/actor/PanoramaActor;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;->this$0:Lcom/android/camera/actor/PanoramaActor;

    .line 70
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 75
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #calls: Lcom/android/camera/actor/PanoramaActor;->resetCapture()V
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$200(Lcom/android/camera/actor/PanoramaActor;)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-boolean v2, v2, Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->animateCapture(Lcom/android/camera/Camera;Z)V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaHandler;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
