.class Lcom/android/camera/Camera$1;
.super Landroid/os/Handler;
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
    .line 228
    iput-object p1, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    :pswitch_0
    return-void

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$002(Lcom/android/camera/Camera;Lcom/android/camera/Camera$CameraStartUpThread;)Lcom/android/camera/Camera$CameraStartUpThread;

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->notifyParametersReady()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->notifyPreferenceReady()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$200(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 247
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$300(Lcom/android/camera/Camera;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setDisplayOrientation()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)V

    .line 250
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->notifyOrientationChanged()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 257
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->switchCamera()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 260
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    goto :goto_0

    .line 263
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 266
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doShowIndicator()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 270
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doOnFirstFrameArrived()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 273
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;Z)V

    goto :goto_0

    .line 276
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$002(Lcom/android/camera/Camera;Lcom/android/camera/Camera$CameraStartUpThread;)Lcom/android/camera/Camera$CameraStartUpThread;

    .line 277
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOpenCameraFail:Z
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$1202(Lcom/android/camera/Camera;Z)Z

    .line 278
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    const v1, 0x7f0c00ce

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 281
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$002(Lcom/android/camera/Camera;Lcom/android/camera/Camera$CameraStartUpThread;)Lcom/android/camera/Camera$CameraStartUpThread;

    .line 282
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraDisabled:Z
    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$1302(Lcom/android/camera/Camera;Z)Z

    .line 283
    iget-object v0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    const v1, 0x7f0c00cf

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
