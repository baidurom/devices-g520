.class Lcom/android/camera/actor/PhotoActor$12;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 607
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 610
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string v0, "PhotoActor"

    const-string v1, "PhotoActor.ContinuousShot.onPictureTaken"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStorePicture()V

    .line 614
    if-nez p1, :cond_3

    .line 615
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 616
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #setter for: Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z
    invoke-static {v0, v6}, Lcom/android/camera/actor/PhotoActor;->access$1702(Lcom/android/camera/actor/PhotoActor;Z)Z

    .line 617
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") stop shot!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStorePicture()V

    .line 641
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuous Shot, onPictureTaken: mCurrentShotsNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$1900(Lcom/android/camera/actor/PhotoActor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContinuousShotPerformed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$1000(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_2
    return-void

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_7

    .line 621
    invoke-static {}, Lcom/android/camera/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 624
    :cond_4
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->setSaveRequest([B)V
    invoke-static {v0, p1}, Lcom/android/camera/actor/PhotoActor;->access$1800(Lcom/android/camera/actor/PhotoActor;[B)V

    .line 625
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-virtual {v1, v2}, Lcom/android/camera/FileSaver;->copyPhotoRequest(Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    .line 627
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$1908(Lcom/android/camera/actor/PhotoActor;)I

    .line 628
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$2000(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;

    move-result-object v0

    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->refresh(J)V

    .line 629
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$1900(Lcom/android/camera/actor/PhotoActor;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2100(Lcom/android/camera/actor/PhotoActor;)I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$2000(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->isNeedStopCapture()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    :cond_5
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 631
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #setter for: Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z
    invoke-static {v0, v6}, Lcom/android/camera/actor/PhotoActor;->access$1702(Lcom/android/camera/actor/PhotoActor;Z)Z

    goto/16 :goto_0

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$2000(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FileSaver;->getWaitingDataSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->isNeedSlowDown(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2000(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->getSuitableContinuousShotSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotSpeed(I)V

    goto/16 :goto_0

    .line 636
    :cond_7
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received onPictureTaken, but mCameraClosed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$12;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v2, v2, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
