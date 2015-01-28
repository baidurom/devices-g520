.class public abstract Lcom/android/camera/actor/CameraActor;
.super Ljava/lang/Object;
.source "CameraActor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraActor"


# instance fields
.field protected final mContext:Lcom/android/camera/Camera;

.field protected mFocusManager:Lcom/android/camera/FocusManager;

.field private mPreferences:Lcom/android/camera/ComboPreferences;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    .line 39
    return-void
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 188
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 193
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getASDCallback()Landroid/hardware/Camera$ASDCallback;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAUTORAMACallback()Landroid/hardware/Camera$AUTORAMACallback;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAUTORAMAMVCallback()Landroid/hardware/Camera$AUTORAMAMVCallback;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoFocusMoveCallback()Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Lcom/android/camera/Camera;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    return-object v0
.end method

.method public getContinuousShotDone()Landroid/hardware/Camera$ContinuousShotDone;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorCallback()Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFaceDetectionListener()Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusManagerListener()Lcom/android/camera/FocusManager$Listener;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMAVCallback()Landroid/hardware/Camera$MAVCallback;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMode()I
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnZoomChangeListener()Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewCallback()Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRetakeListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmileCallback()Landroid/hardware/Camera$SmileCallback;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getZSDPreviewDone()Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getonSingleTapUpListener()Lcom/android/camera/Camera$OnSingleTapUpListener;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleFocus()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method protected isFromInternal()Z
    .locals 5

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 199
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, action:Ljava/lang/String;
    const-string v2, "CameraActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 115
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraClose()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onCameraDisabled()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onCameraOpenDone()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onCameraOpenFailed()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 0
    .parameter "startPreview"

    .prologue
    .line 167
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaEject()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onPause()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onUserInteraction()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public stopPreview()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
