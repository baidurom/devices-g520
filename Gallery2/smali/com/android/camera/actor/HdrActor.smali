.class public Lcom/android/camera/actor/HdrActor;
.super Lcom/android/camera/actor/PhotoActor;
.source "HdrActor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/actor/HdrActor$HdrCameraCategory;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final SAVE_ORIGINAL_PICTURE:Z = true

.field private static final TAG:Ljava/lang/String; = "HdrActor"


# instance fields
.field private mOriginalSaveRequest:Lcom/android/camera/SaveRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/actor/HdrActor;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor;-><init>(Lcom/android/camera/Camera;)V

    .line 21
    sget-boolean v0, Lcom/android/camera/actor/HdrActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "HdrActor"

    const-string v1, "HdrActor initialize"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    new-instance v0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;-><init>(Lcom/android/camera/actor/HdrActor;)V

    iput-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actor/HdrActor;)Lcom/android/camera/SaveRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/actor/HdrActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/actor/HdrActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/android/camera/actor/HdrActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/android/camera/actor/HdrActor;->LOG:Z

    return v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotoShutterButtonListener()Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onCameraOpenDone()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/camera/actor/PhotoActor;->onCameraOpenDone()V

    .line 35
    return-void
.end method

.method public onCameraParameterReady(Z)V
    .locals 2
    .parameter "startPreview"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/camera/actor/PhotoActor;->onCameraParameterReady(Z)V

    .line 40
    sget-boolean v0, Lcom/android/camera/actor/HdrActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "HdrActor"

    const-string v1, "HdrActor onCameraParameterReady"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/camera/actor/HdrActor;->LOG:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "HdrActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hdr.onShutterButtonLongPressed("

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

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v3, 0x7f0c00b5

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 57
    return-void
.end method
