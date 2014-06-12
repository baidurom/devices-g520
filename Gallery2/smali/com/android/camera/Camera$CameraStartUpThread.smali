.class Lcom/android/camera/Camera$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancel:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancel:Z

    .line 346
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 297
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileCameraStartUp()V

    .line 299
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v3

    #calls: Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;Lcom/android/camera/ComboPreferences;)I

    move-result v0

    .line 300
    .local v0, cameraId:I
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 301
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraStartUpThread.run() preference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", memory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v4}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 305
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v4}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    #setter for: Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$1702(Lcom/android/camera/Camera;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getOriginalParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$1902(Lcom/android/camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 320
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->copy()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$2002(Lcom/android/camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 321
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/actor/CameraActor;->onCameraOpenDone()V

    .line 323
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 325
    iget-boolean v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->mCancel:Z

    if-eqz v2, :cond_1

    .line 326
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraStartUp()V

    .line 342
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, e:Lcom/android/camera/CameraHardwareException;
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/actor/CameraActor;->onCameraOpenFailed()V

    .line 308
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mOpenCameraFail:Z
    invoke-static {v2, v5}, Lcom/android/camera/Camera;->access$1202(Lcom/android/camera/Camera;Z)Z

    .line 309
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraStartUp()V

    goto :goto_0

    .line 312
    .end local v1           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v1

    .line 313
    .local v1, e:Lcom/android/camera/CameraDisabledException;
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraActor:Lcom/android/camera/actor/CameraActor;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/actor/CameraActor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/actor/CameraActor;->onCameraDisabled()V

    .line 314
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #setter for: Lcom/android/camera/Camera;->mCameraDisabled:Z
    invoke-static {v2, v5}, Lcom/android/camera/Camera;->access$1302(Lcom/android/camera/Camera;Z)Z

    .line 315
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraStartUp()V

    goto :goto_0

    .line 329
    .end local v1           #e:Lcom/android/camera/CameraDisabledException;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeFocusManager()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)V

    .line 330
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->setDisplayOrientation()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)V

    .line 331
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->updateSurfaceTexture()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)V

    .line 332
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->initializeCameraPreferences()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)V

    .line 333
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->clearDeviceCallbacks()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)V

    .line 334
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyDeviceCallbacks()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)V

    .line 335
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->clearViewCallbacks()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)V

    .line 336
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applayViewCallbacks()V
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)V

    .line 337
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->applyParameters(Z)V
    invoke-static {v2, v5}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;Z)V

    .line 338
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/SettingChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SettingChecker;->applyParametersToUIImmediately()V

    .line 339
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    #setter for: Lcom/android/camera/Camera;->mOnResumeTime:J
    invoke-static {v2, v3, v4}, Lcom/android/camera/Camera;->access$502(Lcom/android/camera/Camera;J)J

    .line 340
    iget-object v2, p0, Lcom/android/camera/Camera$CameraStartUpThread;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileCameraStartUp()V

    goto/16 :goto_0
.end method
