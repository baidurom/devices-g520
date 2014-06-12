.class Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;
.super Landroid/os/Handler;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/ThumbnailManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/manager/ThumbnailManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    .line 319
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 320
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 324
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 325
    const-string v8, "ThumbnailManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 328
    .local v3, now:J
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 372
    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 373
    const-string v8, "ThumbnailManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage() diff="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J
    invoke-static {v10}, Lcom/android/camera/manager/ThumbnailManager;->access$1000(Lcom/android/camera/manager/ThumbnailManager;)J

    move-result-wide v10

    sub-long v10, v3, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRefreshInterval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J
    invoke-static {v10}, Lcom/android/camera/manager/ThumbnailManager;->access$900(Lcom/android/camera/manager/ThumbnailManager;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    :goto_1
    return-void

    .line 330
    :pswitch_1
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mCurrentSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$600(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    .line 331
    .local v0, curRequest:Lcom/android/camera/SaveRequest;
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mLastSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$700(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/SaveRequest;

    move-result-object v8

    if-eq v0, v8, :cond_1

    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$800(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 332
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$900(Lcom/android/camera/manager/ThumbnailManager;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$1000(Lcom/android/camera/manager/ThumbnailManager;)J

    move-result-wide v8

    sub-long v8, v3, v8

    iget-object v10, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J
    invoke-static {v10}, Lcom/android/camera/manager/ThumbnailManager;->access$900(Lcom/android/camera/manager/ThumbnailManager;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 333
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mRefreshInterval:J
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$900(Lcom/android/camera/manager/ThumbnailManager;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J
    invoke-static {v10}, Lcom/android/camera/manager/ThumbnailManager;->access$1000(Lcom/android/camera/manager/ThumbnailManager;)J

    move-result-wide v10

    sub-long v10, v3, v10

    sub-long v1, v8, v10

    .line 334
    .local v1, delay:J
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v1, v2}, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 336
    .end local v1           #delay:J
    :cond_3
    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v8

    if-nez v8, :cond_4

    .line 337
    const-string v8, "ThumbnailManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") storage not ready, so return."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    :cond_4
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #setter for: Lcom/android/camera/manager/ThumbnailManager;->mLastRefreshTime:J
    invoke-static {v8, v3, v4}, Lcom/android/camera/manager/ThumbnailManager;->access$1002(Lcom/android/camera/manager/ThumbnailManager;J)J

    .line 341
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$800(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 342
    .local v6, thumbnailWidth:I
    invoke-interface {v0, v6}, Lcom/android/camera/SaveRequest;->createThumbnail(I)Lcom/android/camera/Thumbnail;

    move-result-object v5

    .line 343
    .local v5, thumb:Lcom/android/camera/Thumbnail;
    if-eqz v5, :cond_5

    .line 344
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #setter for: Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v8, v5}, Lcom/android/camera/manager/ThumbnailManager;->access$402(Lcom/android/camera/manager/ThumbnailManager;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 348
    :goto_2
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mResumed:Z
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$1100(Lcom/android/camera/manager/ThumbnailManager;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 350
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #calls: Lcom/android/camera/manager/ThumbnailManager;->saveThumbnailToFile()V
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$1200(Lcom/android/camera/manager/ThumbnailManager;)V

    goto/16 :goto_0

    .line 346
    :cond_5
    const-string v8, "ThumbnailManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Why doesn\'t create thumbnail success???"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 352
    :cond_6
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #calls: Lcom/android/camera/manager/ThumbnailManager;->sendUpdateThumbnail()V
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$1300(Lcom/android/camera/manager/ThumbnailManager;)V

    goto/16 :goto_0

    .line 358
    .end local v0           #curRequest:Lcom/android/camera/SaveRequest;
    .end local v5           #thumb:Lcom/android/camera/Thumbnail;
    .end local v6           #thumbnailWidth:I
    :pswitch_2
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$400(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/Thumbnail;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 359
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$400(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/Thumbnail;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v9}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v7

    .line 360
    .local v7, valid:Z
    if-nez v7, :cond_7

    .line 361
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    const/4 v9, 0x0

    #setter for: Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v8, v9}, Lcom/android/camera/manager/ThumbnailManager;->access$402(Lcom/android/camera/manager/ThumbnailManager;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 362
    iget-object v8, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #calls: Lcom/android/camera/manager/ThumbnailManager;->sendUpdateThumbnail()V
    invoke-static {v8}, Lcom/android/camera/manager/ThumbnailManager;->access$1300(Lcom/android/camera/manager/ThumbnailManager;)V

    .line 364
    :cond_7
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 365
    const-string v8, "ThumbnailManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage() mThumbnail="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/manager/ThumbnailManager$WorkerHandler;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #getter for: Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v10}, Lcom/android/camera/manager/ThumbnailManager;->access$400(Lcom/android/camera/manager/ThumbnailManager;)Lcom/android/camera/Thumbnail;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", valid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
