.class Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;
.super Lcom/android/camera/actor/PhotoActor$CameraCategory;
.source "PanoramaActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PanoramaActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanoramaCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PanoramaActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public animateCapture(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "camera"
    .parameter "zsdEnabled"

    .prologue
    .line 596
    invoke-virtual {p1}, Lcom/android/camera/Camera;->animateCapture()V

    .line 597
    return-void
.end method

.method public applySpecialCapture()Z
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public doOnPictureTaken()V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public enableFD(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "camera"

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public initializeFirstTime()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 580
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-virtual {v0, v3}, Lcom/android/camera/actor/PanoramaActor;->showGuideString(I)V

    .line 581
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    new-instance v1, Lcom/android/camera/manager/PanoramaViewManager;

    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/manager/PanoramaViewManager;-><init>(Lcom/android/camera/Camera;I)V

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$1302(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/manager/PanoramaViewManager;)Lcom/android/camera/manager/PanoramaViewManager;

    .line 582
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1300(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/PanoramaViewManager;->show()V

    .line 583
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1300(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$1600(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/PanoramaViewManager;->setViewChangedListener(Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;)V

    .line 584
    return-void
.end method

.method public onLeaveActor()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method
