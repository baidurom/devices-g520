.class Lcom/android/camera/actor/PhotoActor$13;
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
    .line 648
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 13
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 653
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    const-string v5, "PhotoActor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JpegPictureCallback onPictureTaken jpegData="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCameraClosed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v7, v7, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #setter for: Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z
    invoke-static {v5, v12}, Lcom/android/camera/actor/PhotoActor;->access$2202(Lcom/android/camera/actor/PhotoActor;Z)Z

    .line 658
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v5, v5, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v5, :cond_1

    if-nez p1, :cond_2

    .line 659
    :cond_1
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 660
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 729
    :goto_0
    return-void

    .line 664
    :cond_2
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v5, v6, v7}, Lcom/android/camera/actor/PhotoActor;->access$2302(Lcom/android/camera/actor/PhotoActor;J)J

    .line 668
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v5, v5, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallbackTime:J

    cmp-long v5, v5, v10

    if-eqz v5, :cond_6

    .line 669
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v6, v6, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallbackTime:J

    iget-object v8, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J
    invoke-static {v8}, Lcom/android/camera/actor/PhotoActor;->access$1500(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/camera/actor/PhotoActor;->mShutterToPictureDisplayedTime:J

    .line 671
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v6}, Lcom/android/camera/actor/PhotoActor;->access$2300(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v8, v8, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallbackTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/camera/actor/PhotoActor;->mPictureDisplayedToJpegCallbackTime:J

    .line 679
    :goto_1
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 680
    const-string v5, "PhotoActor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v7, v7, Lcom/android/camera/actor/PhotoActor;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_3
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStorePicture()V

    .line 685
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 686
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v5

    if-nez v5, :cond_4

    .line 687
    invoke-static {}, Lcom/mediatek/camera/ext/ExtensionHelper;->getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;

    move-result-object v4

    .line 688
    .local v4, previewFeature:Lcom/mediatek/camera/ext/IFeatureExtension;
    invoke-interface {v4}, Lcom/mediatek/camera/ext/IFeatureExtension;->isDelayRestartPreview()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 689
    const-wide/16 v5, 0x4b0

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v7, v7, Lcom/android/camera/actor/PhotoActor;->mPictureDisplayedToJpegCallbackTime:J

    sub-long v0, v5, v7

    .line 690
    .local v0, delay:J
    cmp-long v5, v0, v10

    if-gtz v5, :cond_7

    .line 691
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->restartPreview()V
    invoke-static {v5}, Lcom/android/camera/actor/PhotoActor;->access$800(Lcom/android/camera/actor/PhotoActor;)V

    .line 705
    .end local v0           #delay:J
    .end local v4           #previewFeature:Lcom/mediatek/camera/ext/IFeatureExtension;
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iput-boolean v12, v5, Lcom/android/camera/actor/PhotoActor;->mCapturing:Z

    .line 707
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v5

    if-nez v5, :cond_9

    .line 709
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->setSaveRequest([B)V
    invoke-static {v5, p1}, Lcom/android/camera/actor/PhotoActor;->access$1800(Lcom/android/camera/actor/PhotoActor;[B)V

    .line 710
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v5}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->doOnPictureTaken()V

    .line 722
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 723
    .local v2, now:J
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v6}, Lcom/android/camera/actor/PhotoActor;->access$2300(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v6

    sub-long v6, v2, v6

    iput-wide v6, v5, Lcom/android/camera/actor/PhotoActor;->mJpegCallbackFinishTime:J

    .line 724
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 725
    const-string v5, "PhotoActor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mJpegCallbackFinishTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v7, v7, Lcom/android/camera/actor/PhotoActor;->mJpegCallbackFinishTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_5
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStorePicture()V

    .line 728
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #setter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v5, v10, v11}, Lcom/android/camera/actor/PhotoActor;->access$2302(Lcom/android/camera/actor/PhotoActor;J)J

    goto/16 :goto_0

    .line 674
    .end local v2           #now:J
    :cond_6
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J
    invoke-static {v6}, Lcom/android/camera/actor/PhotoActor;->access$1600(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J
    invoke-static {v8}, Lcom/android/camera/actor/PhotoActor;->access$1500(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/camera/actor/PhotoActor;->mShutterToPictureDisplayedTime:J

    .line 676
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v6}, Lcom/android/camera/actor/PhotoActor;->access$2300(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J
    invoke-static {v8}, Lcom/android/camera/actor/PhotoActor;->access$1600(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/camera/actor/PhotoActor;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 693
    .restart local v0       #delay:J
    .restart local v4       #previewFeature:Lcom/mediatek/camera/ext/IFeatureExtension;
    :cond_7
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/camera/actor/PhotoActor$13$1;

    invoke-direct {v6, p0}, Lcom/android/camera/actor/PhotoActor$13$1;-><init>(Lcom/android/camera/actor/PhotoActor$13;)V

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 702
    .end local v0           #delay:J
    :cond_8
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->restartPreview()V
    invoke-static {v5}, Lcom/android/camera/actor/PhotoActor;->access$800(Lcom/android/camera/actor/PhotoActor;)V

    goto/16 :goto_2

    .line 712
    .end local v4           #previewFeature:Lcom/mediatek/camera/ext/IFeatureExtension;
    :cond_9
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iput-object p1, v5, Lcom/android/camera/actor/PhotoActor;->mJpegImageData:[B

    .line 713
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->isQuickCapture()Z

    move-result v5

    if-nez v5, :cond_a

    .line 714
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->showReview()V

    .line 715
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 716
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v5, v5, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/camera/Camera;->setViewState(I)V

    goto/16 :goto_3

    .line 718
    :cond_a
    iget-object v5, p0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->doAttach()V
    invoke-static {v5}, Lcom/android/camera/actor/PhotoActor;->access$600(Lcom/android/camera/actor/PhotoActor;)V

    goto/16 :goto_3
.end method
