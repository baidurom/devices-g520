.class Lcom/android/camera/Camera$14;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/manager/SettingManager$SettingListener;


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
    .line 1870
    iput-object p1, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1881
    iget-object v0, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1908
    :goto_0
    return-void

    .line 1884
    :cond_0
    new-instance v4, Lcom/android/camera/Camera$14$1;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$14$1;-><init>(Lcom/android/camera/Camera$14;)V

    .line 1904
    .local v4, runnable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    const v3, 0x7f0c00d9

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    const/high16 v6, 0x104

    invoke-virtual {v5, v6}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyGPSDialog()V

    .line 1876
    iget-object v0, p0, Lcom/android/camera/Camera$14;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;Z)V

    .line 1877
    return-void
.end method
