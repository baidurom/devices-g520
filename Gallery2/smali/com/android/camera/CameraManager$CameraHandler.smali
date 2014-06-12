.class Lcom/android/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    .line 122
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 127
    invoke-static {}, Lcom/android/camera/CameraManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v2, :sswitch_data_0

    .line 309
    :goto_0
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 310
    :goto_1
    return-void

    .line 133
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraRelease()V

    .line 134
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 135
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraRelease()V

    .line 136
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 137
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/RuntimeException;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 300
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 304
    :goto_2
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v5}, Lcom/android/camera/CameraManager;->access$102(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 305
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v2, v5}, Lcom/android/camera/CameraManager;->access$202(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 307
    :cond_1
    throw v0

    .line 141
    .end local v0           #e:Ljava/lang/RuntimeException;
    :sswitch_2
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$302(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 143
    :try_start_4
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 144
    :catch_1
    move-exception v1

    .line 145
    .local v1, ex:Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #setter for: Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v2, v1}, Lcom/android/camera/CameraManager;->access$302(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 150
    .end local v1           #ex:Ljava/io/IOException;
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto :goto_0

    .line 154
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 159
    :sswitch_5
    :try_start_6
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 160
    :catch_2
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_6
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStartPreview()V

    .line 167
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 168
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStartPreview()V

    goto/16 :goto_1

    .line 172
    :sswitch_7
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStopPreview()V

    .line 173
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 174
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStopPreview()V

    goto/16 :goto_0

    .line 178
    :sswitch_8
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 183
    :sswitch_9
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 187
    :sswitch_a
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 191
    :sswitch_b
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 195
    :sswitch_c
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_0

    .line 200
    :sswitch_d
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 204
    :sswitch_e
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 209
    :sswitch_f
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    .line 214
    :sswitch_10
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startFaceDetection()V

    goto/16 :goto_0

    .line 218
    :sswitch_11
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto/16 :goto_0

    .line 222
    :sswitch_12
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_0

    .line 226
    :sswitch_13
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileSetParameters()V

    .line 227
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 228
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileSetParameters()V

    goto/16 :goto_0

    .line 232
    :sswitch_14
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileGetParameters()V

    .line 233
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/android/camera/CameraManager;->access$402(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 234
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileGetParameters()V

    goto/16 :goto_0

    .line 238
    :sswitch_15
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileSetParameters()V

    .line 240
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 242
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileSetParameters()V

    goto/16 :goto_1

    .line 249
    :sswitch_16
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto/16 :goto_0

    .line 252
    :sswitch_17
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AUTORAMACallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V

    goto/16 :goto_0

    .line 255
    :sswitch_18
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AUTORAMAMVCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    goto/16 :goto_0

    .line 258
    :sswitch_19
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->startAUTORAMA(I)V

    goto/16 :goto_0

    .line 261
    :sswitch_1a
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->stopAUTORAMA(I)V

    goto/16 :goto_0

    .line 264
    :sswitch_1b
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$MAVCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    goto/16 :goto_0

    .line 267
    :sswitch_1c
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->startMAV(I)V

    goto/16 :goto_0

    .line 270
    :sswitch_1d
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->stopMAV(I)V

    goto/16 :goto_0

    .line 273
    :sswitch_1e
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ASDCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setASDCallback(Landroid/hardware/Camera$ASDCallback;)V

    goto/16 :goto_0

    .line 276
    :sswitch_1f
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$SmileCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    goto/16 :goto_0

    .line 279
    :sswitch_20
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startSDPreview()V

    goto/16 :goto_0

    .line 282
    :sswitch_21
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelSDPreview()V

    goto/16 :goto_0

    .line 285
    :sswitch_22
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelContinuousShot()V

    goto/16 :goto_0

    .line 288
    :sswitch_23
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setContinuousShotSpeed(I)V

    goto/16 :goto_0

    .line 291
    :sswitch_24
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ZSDPreviewDone;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    goto/16 :goto_0

    .line 294
    :sswitch_25
    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ContinuousShotDone;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setCSDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 301
    .local v0, e:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 302
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "CameraManager"

    const-string v3, "Fail to release the camera."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_0
        0x64 -> :sswitch_16
        0x65 -> :sswitch_17
        0x66 -> :sswitch_18
        0x67 -> :sswitch_19
        0x68 -> :sswitch_1a
        0x69 -> :sswitch_1b
        0x6a -> :sswitch_1c
        0x6b -> :sswitch_1d
        0x6c -> :sswitch_1e
        0x6d -> :sswitch_1f
        0x6e -> :sswitch_20
        0x6f -> :sswitch_21
        0x70 -> :sswitch_22
        0x71 -> :sswitch_23
        0x72 -> :sswitch_24
        0x73 -> :sswitch_25
    .end sparse-switch
.end method
