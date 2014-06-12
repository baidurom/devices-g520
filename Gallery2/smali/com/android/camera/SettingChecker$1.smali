.class Lcom/android/camera/SettingChecker$1;
.super Ljava/lang/Object;
.source "SettingChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SettingChecker;->applyParametersToUIImmediately()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SettingChecker;


# direct methods
.method constructor <init>(Lcom/android/camera/SettingChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/android/camera/SettingChecker$1;->this$0:Lcom/android/camera/SettingChecker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/camera/SettingChecker$1;->this$0:Lcom/android/camera/SettingChecker;

    #getter for: Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/SettingChecker;->access$000(Lcom/android/camera/SettingChecker;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getPickerManager()Lcom/android/camera/manager/PickerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/android/camera/SettingChecker$1;->this$0:Lcom/android/camera/SettingChecker;

    #getter for: Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/SettingChecker;->access$000(Lcom/android/camera/SettingChecker;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getPickerManager()Lcom/android/camera/manager/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/PickerManager;->onCameraParameterReady()V

    .line 1838
    iget-object v0, p0, Lcom/android/camera/SettingChecker$1;->this$0:Lcom/android/camera/SettingChecker;

    #getter for: Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/SettingChecker;->access$000(Lcom/android/camera/SettingChecker;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getPickerManager()Lcom/android/camera/manager/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/PickerManager;->refresh()V

    .line 1840
    :cond_0
    return-void
.end method
