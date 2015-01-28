.class Lcom/android/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;


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
    .line 1576
    iput-object p1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 1604
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1605
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Photo.onShutterButtonClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 1609
    iget-object v1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 1611
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 1612
    invoke-interface {v0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 1616
    .end local v0           #listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    :cond_1
    return-void
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 4
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 1592
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Photo.onShutterButtonFocus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 1596
    iget-object v1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 1597
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 1598
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 1600
    :cond_1
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 1580
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Photo.onShutterButtonLongPressed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 1584
    iget-object v1, p0, Lcom/android/camera/Camera$6;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 1585
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 1586
    invoke-interface {v0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V

    .line 1588
    :cond_1
    return-void
.end method
