.class Lcom/android/camera/actor/EffectsRecorder$1;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    .line 587
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    const-string v1, "EffectsRecorder"

    const-string v2, "SurfaceTexture ready callback received"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    monitor-enter v2

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #setter for: Lcom/android/camera/actor/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v1, p1}, Lcom/android/camera/actor/EffectsRecorder;->access$102(Lcom/android/camera/actor/EffectsRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 593
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    if-nez v1, :cond_3

    .line 597
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    const-string v1, "EffectsRecorder"

    const-string v3, "Ready callback: Already stopped, skipping."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_1
    monitor-exit v2

    .line 655
    :cond_2
    :goto_0
    return-void

    .line 602
    :cond_3
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 605
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 606
    const-string v1, "EffectsRecorder"

    const-string v3, "Ready callback: Already released, skipping."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    if-nez p1, :cond_7

    .line 612
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 613
    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: source null! Looks like graph was closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_5
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    if-eq v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 620
    :cond_6
    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready callback: State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v3}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". stopCameraPreview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/actor/EffectsRecorder;->stopCameraPreview()V

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 629
    :cond_7
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/actor/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 631
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$300(Lcom/android/camera/actor/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 632
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 633
    const-string v1, "EffectsRecorder"

    const-string v2, "Runner active, connecting effects preview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_8
    :try_start_2
    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewTexture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v3}, Lcom/android/camera/actor/EffectsRecorder;->access$100(Lcom/android/camera/actor/EffectsRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$300(Lcom/android/camera/actor/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$100(Lcom/android/camera/actor/EffectsRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 642
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$300(Lcom/android/camera/actor/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 645
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/actor/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 647
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #setter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v1, v4}, Lcom/android/camera/actor/EffectsRecorder;->access$202(Lcom/android/camera/actor/EffectsRecorder;I)I

    .line 649
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 650
    const-string v1, "EffectsRecorder"

    const-string v2, "Start preview/effect switch complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_9
    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$1;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$400(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v2

    #calls: Lcom/android/camera/actor/EffectsRecorder;->sendMessage(II)V
    invoke-static {v1, v2, v5}, Lcom/android/camera/actor/EffectsRecorder;->access$500(Lcom/android/camera/actor/EffectsRecorder;II)V

    goto/16 :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect camera to effect input"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
