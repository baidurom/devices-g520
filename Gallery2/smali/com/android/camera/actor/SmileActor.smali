.class public Lcom/android/camera/actor/SmileActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "SmileActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/SmileActor$SmileCameraCategory;,
        Lcom/android/camera/actor/SmileActor$ActorSmileCallback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final SAVE_ORIGINAL_PICTURE:Z = true

.field private static final SMILESHOT_IN_PROGRESS:I = 0x1

.field private static final SMILESHOT_STANDBY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmileActor"


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

.field private final mSmileCallback:Lcom/android/camera/actor/SmileActor$ActorSmileCallback;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/actor/SmileActor;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    .line 31
    new-instance v0, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;-><init>(Lcom/android/camera/actor/SmileActor;Lcom/android/camera/actor/SmileActor$1;)V

    iput-object v0, p0, Lcom/android/camera/actor/SmileActor;->mSmileCallback:Lcom/android/camera/actor/SmileActor$ActorSmileCallback;

    .line 33
    new-instance v0, Lcom/android/camera/actor/SmileActor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/SmileActor$1;-><init>(Lcom/android/camera/actor/SmileActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/SmileActor;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 46
    sget-boolean v0, Lcom/android/camera/actor/SmileActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "SmileActor"

    const-string v1, "SmileActor initialize"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    new-instance v0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;-><init>(Lcom/android/camera/actor/SmileActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 50
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/camera/actor/SmileActor;->LOG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/actor/SmileActor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/actor/SmileActor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    return p1
.end method

.method private openSmileShutterMode()V
    .locals 2

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/camera/actor/SmileActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "SmileActor"

    const-string v1, "openSmileShutterMode "

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    const-string v0, "SmileActor"

    const-string v1, "CameraDevice is null, ignore"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    .line 115
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor;->mSmileCallback:Lcom/android/camera/actor/SmileActor$ActorSmileCallback;

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/SmileActor;->startSmileDetection(Landroid/hardware/Camera$SmileCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public doSmileShutter()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 120
    sget-boolean v1, Lcom/android/camera/actor/SmileActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "SmileActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSmileShutter mStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget v1, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    if-ne v1, v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/actor/SmileActor;->capture()Z

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    .line 129
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureFDState(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 154
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/actor/SmileActor;->startFaceDetection()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v2

    aget-object v0, v1, v2

    .line 161
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v3, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/actor/SmileActor;->stopFaceDetection()V

    goto :goto_0
.end method

.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor;->mCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x6

    return v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 0

    .prologue
    .line 87
    return-object p0
.end method

.method public getZSDPreviewDone()Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleSDcardUnmount()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    iget v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    goto :goto_0
.end method

.method public isInShutterProgress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 178
    iget v1, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraClose()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->onCameraClose()V

    .line 73
    iput-boolean v1, p0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    .line 74
    iget v0, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    .line 77
    :cond_0
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 64
    sget-boolean v0, Lcom/android/camera/actor/SmileActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "SmileActor"

    const-string v1, "SmileActor onCameraParameterReady"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/SmileActor;->ensureFDState(Z)V

    .line 68
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 7
    .parameter "button"

    .prologue
    const v6, 0x7f0c00b5

    .line 196
    sget-boolean v3, Lcom/android/camera/actor/SmileActor;->LOG:Z

    if-eqz v3, :cond_0

    .line 197
    const-string v3, "SmileActor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smile.onShutterButtonLongPressed("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    .line 200
    .local v1, preferenceGroup:Lcom/android/camera/PreferenceGroup;
    if-nez v1, :cond_1

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v3, "pref_camera_normal_capture_key"

    invoke-virtual {v1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 205
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-nez v0, :cond_2

    .line 206
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3, v6}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, showing:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v2           #showing:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v4, v6}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #showing:Ljava/lang/String;
    goto :goto_1
.end method

.method public readyToCapture()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 96
    sget-boolean v1, Lcom/android/camera/actor/SmileActor;->LOG:Z

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "SmileActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " readyToCapture? mStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget v1, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    if-eq v1, v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/camera/actor/SmileActor;->openSmileShutterMode()V

    .line 101
    const/4 v0, 0x0

    .line 103
    :cond_1
    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->release()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->doCancelCapture()Z

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/actor/SmileActor;->ensureFDState(Z)V

    .line 84
    return-void
.end method

.method public startSmileDetection(Landroid/hardware/Camera$SmileCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startSDPreview()V

    .line 185
    return-void
.end method

.method public stopSmileDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 189
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelSDPreview()V

    .line 190
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V

    .line 191
    iput v2, p0, Lcom/android/camera/actor/SmileActor;->mStatus:I

    .line 192
    return-void
.end method
