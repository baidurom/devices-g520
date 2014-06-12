.class Lcom/android/camera/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/manager/ModePicker$OnModeChangedListener;


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
    .line 1414
    iput-object p1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 6
    .parameter "newMode"

    .prologue
    const/4 v2, 0x1

    .line 1417
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1418
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onModeChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") current mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v5}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraState:I
    invoke-static {v5}, Lcom/android/camera/Camera;->access$3200(Lcom/android/camera/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_0
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 1422
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 1423
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/actor/CameraActor;->release()V

    .line 1424
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v4}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v4

    #setter for: Lcom/android/camera/Camera;->mLastMode:I
    invoke-static {v3, v4}, Lcom/android/camera/Camera;->access$3302(Lcom/android/camera/Camera;I)I

    .line 1425
    sparse-switch p1, :sswitch_data_0

    .line 1458
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    new-instance v4, Lcom/android/camera/actor/PhotoActor;

    iget-object v5, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v4, v5}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3, v4}, Lcom/android/camera/Camera;->access$1802(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    .line 1461
    :goto_0
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    iget-boolean v3, v3, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-eqz v3, :cond_2

    .line 1476
    :cond_1
    :goto_1
    return-void

    .line 1427
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    new-instance v4, Lcom/android/camera/actor/PhotoActor;

    iget-object v5, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v4, v5}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3, v4}, Lcom/android/camera/Camera;->access$1802(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1430
    :sswitch_2
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    new-instance v4, Lcom/android/camera/actor/HdrActor;

    iget-object v5, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v4, v5}, Lcom/android/camera/actor/HdrActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3, v4}, Lcom/android/camera/Camera;->access$1802(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1433
    :sswitch_3
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    new-instance v4, Lcom/android/camera/actor/FaceBeautyActor;

    iget-object v5, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v4, v5}, Lcom/android/camera/actor/FaceBeautyActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3, v4}, Lcom/android/camera/Camera;->access$1802(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1437
    :sswitch_4
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    new-instance v4, Lcom/android/camera/actor/PanoramaActor;

    iget-object v5, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v4, v5}, Lcom/android/camera/actor/PanoramaActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3, v4}, Lcom/android/camera/Camera;->access$1802(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1447
    :sswitch_5
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    new-instance v4, Lcom/android/camera/actor/VideoActor;

    iget-object v5, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v4, v5}, Lcom/android/camera/actor/VideoActor;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3, v4}, Lcom/android/camera/Camera;->access$1802(Lcom/android/camera/Camera;Lcom/android/camera/actor/CameraActor;)Lcom/android/camera/actor/CameraActor;

    goto :goto_0

    .line 1465
    :cond_2
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeFocusManager()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)V

    .line 1466
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->clearDeviceCallbacks()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)V

    .line 1467
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyDeviceCallbacks()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)V

    .line 1468
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->clearViewCallbacks()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)V

    .line 1469
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applayViewCallbacks()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)V

    .line 1470
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->notifyOrientationChanged()V
    invoke-static {v3}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)V

    .line 1471
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLastMode:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/SettingChecker;->getCameraMode(I)I

    move-result v1

    .line 1472
    .local v1, oldCameraMode:I
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/SettingChecker;->getCameraMode(I)I

    move-result v0

    .line 1473
    .local v0, newCameraMode:I
    iget-object v3, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    if-eq v1, v0, :cond_3

    :goto_2
    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v3, v2}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;Z)V

    .line 1474
    iget-object v2, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/SettingChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SettingChecker;->applyParametersToUIImmediately()V

    goto/16 :goto_1

    .line 1473
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1425
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_5
        0x64 -> :sswitch_0
        0x6b -> :sswitch_0
        0xc8 -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method
