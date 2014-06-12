.class Lcom/android/camera/Camera$18;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->doShowRemaining(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$showAways:Z


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2770
    iput-object p1, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    iput-boolean p2, p0, Lcom/android/camera/Camera$18;->val$showAways:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2773
    const/4 v0, 0x0

    .line 2774
    .local v0, remainingShown:Z
    iget-boolean v1, p0, Lcom/android/camera/Camera$18;->val$showAways:Z

    if-eqz v1, :cond_2

    .line 2775
    iget-object v1, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/RemainingManager;->showAways()Z

    move-result v0

    .line 2779
    :goto_0
    if-eqz v0, :cond_1

    .line 2780
    iget-object v1, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)Lcom/android/camera/manager/IndicatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/IndicatorManager;->hide()V

    .line 2781
    iget-object v1, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/InfoManager;->hide()V

    .line 2782
    iget-object v1, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNormalViewState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2783
    iget-object v1, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/PickerManager;->show()V

    .line 2785
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    const/16 v2, 0xbb8

    #calls: Lcom/android/camera/Camera;->showIndicator(I)V
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$5400(Lcom/android/camera/Camera;I)V

    .line 2787
    :cond_1
    return-void

    .line 2777
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$18;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/RemainingManager;->showIfNeed()Z

    move-result v0

    goto :goto_0
.end method
