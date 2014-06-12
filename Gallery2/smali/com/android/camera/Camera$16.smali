.class Lcom/android/camera/Camera$16;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


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
    .line 2469
    iput-object p1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 2472
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2473
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver.onReceive("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2476
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2477
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2478
    invoke-static {v4}, Lcom/android/camera/Storage;->setStorageReady(Z)V

    .line 2479
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->onMediaEject()V

    .line 2505
    :cond_1
    :goto_0
    return-void

    .line 2481
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2482
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2483
    invoke-static {v4}, Lcom/android/camera/Storage;->setStorageReady(Z)V

    .line 2484
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    goto :goto_0

    .line 2486
    :cond_3
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2487
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2488
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/camera/Storage;->setStorageReady(Z)V

    .line 2489
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    goto :goto_0

    .line 2491
    :cond_4
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2492
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/android/camera/Camera;->access$4700(Lcom/android/camera/Camera;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2493
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    goto :goto_0

    .line 2495
    :cond_5
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2496
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/net/Uri;)Z
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2497
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    const v2, 0x7f0c00d4

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showToast(I)V

    goto :goto_0

    .line 2499
    :cond_6
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2500
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/android/camera/Camera;->isSameStorage(Landroid/net/Uri;)Z
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2501
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRemainingManager:Lcom/android/camera/manager/RemainingManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$4800(Lcom/android/camera/Camera;)Lcom/android/camera/manager/RemainingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/RemainingManager;->showHint()V

    .line 2502
    iget-object v1, p0, Lcom/android/camera/Camera$16;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mThumbnailManager:Lcom/android/camera/manager/ThumbnailManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ThumbnailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/manager/ThumbnailManager;->forceUpdate()V

    goto/16 :goto_0
.end method
