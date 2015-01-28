.class public Lcom/android/camera/actor/FaceBeautyActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "FaceBeautyActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final SAVE_ORIGINAL_PICTURE:Z = true

.field private static final SMILESHOT_IN_PROGRESS:I = 0x1

.field private static final SMILESHOT_STANDBY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FaceBeautyActor"


# instance fields
.field private mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/actor/FaceBeautyActor;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/actor/FaceBeautyActor;->mStatus:I

    .line 28
    sget-boolean v0, Lcom/android/camera/actor/FaceBeautyActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "FaceBeautyActor"

    const-string v1, "FaceBeautyActor initialize"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    new-instance v0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;-><init>(Lcom/android/camera/actor/FaceBeautyActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actor/FaceBeautyActor;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/actor/FaceBeautyActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/camera/actor/FaceBeautyActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/camera/actor/FaceBeautyActor;->LOG:Z

    return v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    return v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method public getZSDPreviewDone()Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeFaceView()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->initializeFaceView()V

    .line 54
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->enableFaceBeauty(Z)V

    .line 55
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 42
    sget-boolean v0, Lcom/android/camera/actor/FaceBeautyActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "FaceBeautyActor"

    const-string v1, "FaceBeautyActor onCameraParameterReady"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/camera/actor/FaceBeautyActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "FaceBeautyActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceBeauty.onShutterButtonLongPressed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c00b5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->release()V

    .line 75
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v2

    aget-object v0, v1, v2

    .line 76
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/actor/PhotoActor;->stopFaceDetection()V

    .line 79
    :cond_0
    return-void
.end method
