.class public Lcom/android/camera/actor/PhotoActor$CameraCategory;
.super Ljava/lang/Object;
.source "PhotoActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method protected constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateCapture(Lcom/android/camera/Camera;Z)V
    .locals 1
    .parameter "camera"
    .parameter "zsdEnabled"

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$1000(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1529
    invoke-virtual {p1}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 1531
    invoke-virtual {p1}, Lcom/android/camera/Camera;->animateCapture()V

    .line 1534
    :cond_0
    return-void
.end method

.method public applySpecialCapture()Z
    .locals 3

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$1000(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    new-instance v1, Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {v1, v2}, Lcom/android/camera/actor/PhotoActor$RenderInCapture;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    #setter for: Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$2802(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$RenderInCapture;)Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    .line 1515
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$2800(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1516
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mZSDPreviewDone:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2900(Lcom/android/camera/actor/PhotoActor;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    .line 1520
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1518
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    goto :goto_0
.end method

.method public doCancelCapture()Z
    .locals 1

    .prologue
    .line 1537
    const/4 v0, 0x0

    return v0
.end method

.method public doOnPictureTaken()V
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->interruptRenderThread()V

    .line 1525
    return-void
.end method

.method public enableFD(Lcom/android/camera/Camera;)Z
    .locals 4
    .parameter "camera"

    .prologue
    const/4 v1, 0x1

    .line 1541
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v3

    aget-object v0, v2, v3

    .line 1542
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ensureCaptureTempPath()V
    .locals 0

    .prologue
    .line 1509
    return-void
.end method

.method public initializeFirstTime()V
    .locals 5

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    #setter for: Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$1402(Lcom/android/camera/actor/PhotoActor;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 1506
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mBurstSound:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$1400(Lcom/android/camera/actor/PhotoActor;)Landroid/media/SoundPool;

    move-result-object v1

    const-string v2, "/system/media/audio/ui/camera_shutter.ogg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/camera/actor/PhotoActor;->mSoundID:I
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$1302(Lcom/android/camera/actor/PhotoActor;I)I

    .line 1507
    return-void
.end method

.method public onLeaveActor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1546
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeaveActor mContinuousShotPerformed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$1000(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavingPictures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$3000(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->interruptRenderThread()V

    .line 1551
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$1000(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$1002(Lcom/android/camera/actor/PhotoActor;Z)Z

    .line 1553
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #setter for: Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z
    invoke-static {v0, v4}, Lcom/android/camera/actor/PhotoActor;->access$3002(Lcom/android/camera/actor/PhotoActor;Z)Z

    .line 1554
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->cancelContinuousShot()V
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3100(Lcom/android/camera/actor/PhotoActor;)V

    .line 1556
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3000(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1558
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3200(Lcom/android/camera/actor/PhotoActor;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3200(Lcom/android/camera/actor/PhotoActor;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1559
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    new-instance v1, Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    #setter for: Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$3202(Lcom/android/camera/actor/PhotoActor;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1560
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3200(Lcom/android/camera/actor/PhotoActor;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1561
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0, v4, v4}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 1566
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1567
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->hideReview()V

    .line 1569
    :cond_4
    return-void

    .line 1564
    :cond_5
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    goto :goto_0
.end method
