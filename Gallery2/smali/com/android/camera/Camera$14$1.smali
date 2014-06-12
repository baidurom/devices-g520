.class Lcom/android/camera/Camera$14$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$14;->onRestorePreferencesClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$14;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1887
    iget-object v0, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v0, v0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->collapseViewManager(Z)Z

    .line 1888
    iget-object v0, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v0, v0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v1, v1, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v2, v2, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 1890
    iget-object v0, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v0, v0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mZoomManager:Lcom/android/camera/manager/ZoomManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ZoomManager;->resetZoom()V

    .line 1893
    sput-boolean v3, Lcom/android/camera/Camera;->mIsGpsOpen:Z

    .line 1896
    iget-object v0, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v0, v0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v0, v0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v0, v0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;Z)V

    .line 1898
    iget-object v0, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v0, v0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/SettingChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingChecker;->applyParametersToUIImmediately()V

    .line 1902
    :goto_0
    return-void

    .line 1900
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$14$1;->this$1:Lcom/android/camera/Camera$14;

    iget-object v0, v0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    goto :goto_0
.end method
