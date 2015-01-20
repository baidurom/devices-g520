.class Lcom/android/camera/Camera$19;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->doShowIndicator()V
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
    .line 2809
    iput-object p1, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/InfoManager;->hide()V

    .line 2813
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 2814
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNormalViewState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 2817
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCurrentViewState:I
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5500(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 2818
    iget-object v0, p0, Lcom/android/camera/Camera$19;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)Lcom/android/camera/manager/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 2820
    :cond_1
    return-void
.end method
