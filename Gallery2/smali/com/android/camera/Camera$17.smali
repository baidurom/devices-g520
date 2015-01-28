.class Lcom/android/camera/Camera$17;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->doShowInfo(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$showMs:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2738
    iput-object p1, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$17;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/Camera$17;->val$showMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIndicatorManager:Lcom/android/camera/manager/IndicatorManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;)Lcom/android/camera/manager/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 2742
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPickerManager:Lcom/android/camera/manager/PickerManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;)Lcom/android/camera/manager/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 2743
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 2744
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInfoManager:Lcom/android/camera/manager/InfoManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5300(Lcom/android/camera/Camera;)Lcom/android/camera/manager/InfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$17;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/InfoManager;->showText(Ljava/lang/String;)V

    .line 2745
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/Camera$17;->val$showMs:I

    #calls: Lcom/android/camera/Camera;->showIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$5400(Lcom/android/camera/Camera;I)V

    .line 2746
    return-void
.end method
