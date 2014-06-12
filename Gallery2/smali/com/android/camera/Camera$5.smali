.class Lcom/android/camera/Camera$5;
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
    .line 1518
    iput-object p1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 7
    .parameter "button"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 1546
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1547
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video.onShutterButtonClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") isFullScreen()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 1550
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1552
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1554
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 1555
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_2

    .line 1556
    invoke-interface {v0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 1573
    .end local v0           #listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    :cond_1
    :goto_0
    return-void

    .line 1557
    .restart local v0       #listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/ModePicker;->getModeIndex(I)I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 1560
    invoke-static {}, Lcom/android/camera/Storage;->getLeftSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    .line 1561
    const-string v1, "Camera"

    const-string v2, "Error, Video.onShutterButtonClick, there is not enough storage"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0

    .line 1568
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/manager/ModePicker;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ModePicker;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 1570
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera$5;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 4
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 1534
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1535
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video.onShutterButtonFocus("

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

    .line 1537
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 1538
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 1539
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 1540
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 1542
    :cond_1
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 1522
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video.onShutterButtonLongPressed("

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

    .line 1525
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingManager:Lcom/android/camera/manager/SettingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)Lcom/android/camera/manager/SettingManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 1526
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    move-result-object v0

    .line 1527
    .local v0, listener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    if-eqz v0, :cond_1

    .line 1528
    invoke-interface {v0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V

    .line 1530
    :cond_1
    return-void
.end method
