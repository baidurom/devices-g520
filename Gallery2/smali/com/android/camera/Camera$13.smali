.class Lcom/android/camera/Camera$13;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->applyGPSDialog()V
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
    .line 1844
    iput-object p1, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->putValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1849
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingListener:Lcom/android/camera/manager/SettingManager$SettingListener;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager$SettingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/manager/SettingManager$SettingListener;->onSharedPreferenceChanged()V

    .line 1850
    iget-object v0, p0, Lcom/android/camera/Camera$13;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager;->refresh()V

    .line 1851
    return-void
.end method
