.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "method"
    .parameter "force"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 414
    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    .line 415
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 6

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mIsUsbConnected:Z
    invoke-static {v1}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const-string v3, "checking"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    iget-object v3, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const-string v3, "mounted"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    iget-object v3, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->access$810(Lcom/android/server/MountService;)I

    .line 438
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUMSCount:I
    invoke-static {v1}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 439
    new-instance v1, Lcom/android/server/MountService$UmsEnableCallBack$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$UmsEnableCallBack$1;-><init>(Lcom/android/server/MountService$UmsEnableCallBack;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$UmsEnableCallBack$1;->start()V

    .line 445
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$1002(Lcom/android/server/MountService;Z)Z

    .line 447
    :cond_0
    return-void

    .line 425
    :cond_1
    invoke-static {}, Lcom/android/server/MountService;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static {v1}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Z

    move-result v0

    .line 427
    .local v0, unmountSwap:Z
    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    .line 430
    if-eqz v0, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v3, "/storage/sdcard1"

    iget-object v4, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    const/4 v5, 0x1

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v1, v3, v4, v5}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 435
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #unmountSwap:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 433
    .restart local v0       #unmountSwap:Z
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    const/4 v5, 0x1

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v1, v3, v4, v5}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
