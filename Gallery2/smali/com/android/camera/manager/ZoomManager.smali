.class public Lcom/android/camera/manager/ZoomManager;
.super Lcom/android/camera/manager/ViewManager;
.source "ZoomManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;
.implements Lcom/android/camera/Camera$OnParametersReadyListener;
.implements Lcom/android/camera/Camera$Resumable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/ZoomManager$MyListener;
    }
.end annotation


# static fields
.field private static final FORMATOR:Ljava/text/DecimalFormat; = null

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final RATIO_FACTOR_RATE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ZoomManager"

.field private static final UNKNOWN:I = -0x1

.field private static final ZERO:F = 1.0f


# instance fields
.field private mDeviceSupport:Z

.field private mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

.field private mGestureListener:Lcom/android/camera/manager/ZoomManager$MyListener;

.field private mIgnorGestureForZooming:Z

.field private mLastZoomRatio:I

.field private mResumed:Z

.field private mZoomIndexFactor:F

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    .line 18
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/manager/ZoomManager;->FORMATOR:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 23
    new-instance v0, Lcom/android/camera/manager/ZoomManager$MyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/manager/ZoomManager$MyListener;-><init>(Lcom/android/camera/manager/ZoomManager;Lcom/android/camera/manager/ZoomManager$1;)V

    iput-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mGestureListener:Lcom/android/camera/manager/ZoomManager$MyListener;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnParametersReadyListener(Lcom/android/camera/Camera$OnParametersReadyListener;)Z

    .line 37
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addResumable(Lcom/android/camera/Camera$Resumable;)Z

    .line 38
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 39
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/manager/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndexFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/manager/ZoomManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/manager/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/android/camera/manager/ZoomManager;->mIgnorGestureForZooming:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/manager/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->shouldIgnoreCurrentGesture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/manager/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/manager/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    return p1
.end method

.method static synthetic access$532(Lcom/android/camera/manager/ZoomManager;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/manager/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/manager/ZoomManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/manager/ZoomManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ZoomManager;->findZoomIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/manager/ZoomManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndex()I

    move-result v0

    return v0
.end method

.method private findZoomIndex(I)I
    .locals 9
    .parameter "zoomRatio"

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, find:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 331
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 332
    .local v3, len:I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    .line 333
    const/4 v1, 0x0

    .line 353
    .end local v3           #len:I
    :cond_0
    :goto_0
    return v1

    .line 335
    .restart local v3       #len:I
    :cond_1
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 336
    .local v4, max:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 337
    .local v5, min:I
    if-gt p1, v5, :cond_2

    .line 338
    const/4 v1, 0x0

    goto :goto_0

    .line 339
    :cond_2
    if-lt p1, v4, :cond_3

    .line 340
    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 342
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_0

    .line 343
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 344
    .local v0, cur:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 345
    .local v6, next:I
    if-lt p1, v0, :cond_4

    if-ge p1, v6, :cond_4

    .line 346
    move v1, v2

    .line 347
    goto :goto_0

    .line 342
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getMaxZoomIndex()I
    .locals 2

    .prologue
    .line 368
    const/4 v0, -0x1

    .line 369
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 372
    :cond_0
    return v0
.end method

.method private getMaxZoomIndexFactor()F
    .locals 2

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->getMaxZoomRatio()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method private getMaxZoomRatio()I
    .locals 3

    .prologue
    .line 380
    const/4 v0, -0x1

    .line 381
    .local v0, ratio:I
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 384
    :cond_0
    return v0
.end method

.method private isAppSupported()Z
    .locals 4

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/SettingChecker;->isZoomEnable(I)Z

    move-result v0

    .line 313
    .local v0, enable:Z
    sget-boolean v1, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAppSupported() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    return v0
.end method

.method private isValidZoomIndex(I)Z
    .locals 4
    .parameter "zoomIndex"

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, valid:Z
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 361
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 362
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidZoomIndex("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    return v0
.end method

.method private performZoom(IZ)V
    .locals 7
    .parameter "zoomIndex"
    .parameter "userAction"

    .prologue
    .line 93
    sget-boolean v2, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "ZoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mResumed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDeviceSupport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/manager/ZoomManager;->mDeviceSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/manager/ZoomManager;->mDeviceSupport:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/manager/ZoomManager;->isValidZoomIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/SettingChecker;->isSmoothZoom(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ZoomManager;->startSmoothZoom(I)V

    .line 103
    :goto_0
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    .local v0, newRatio:I
    iget v2, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    if-eq v2, v0, :cond_1

    .line 105
    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    .line 108
    .end local v0           #newRatio:I
    :cond_1
    if-eqz p2, :cond_2

    .line 109
    iget v2, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float v1, v2, v3

    .line 110
    .local v1, zoomRation:F
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/manager/ZoomManager;->FORMATOR:Ljava/text/DecimalFormat;

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 112
    .end local v1           #zoomRation:F
    :cond_2
    return-void

    .line 101
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ZoomManager;->startAsyncZoom(I)V

    goto :goto_0
.end method

.method private shouldIgnoreCurrentGesture()Z
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/manager/ZoomManager;->mIgnorGestureForZooming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAsyncZoom(I)V
    .locals 3
    .parameter "zoomValue"

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncZoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/manager/ZoomManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/manager/ZoomManager$1;-><init>(Lcom/android/camera/manager/ZoomManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method private startSmoothZoom(I)V
    .locals 3
    .parameter "zoomValue"

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmoothZoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/manager/ZoomManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/manager/ZoomManager$2;-><init>(Lcom/android/camera/manager/ZoomManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->lockRun(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCameraParameterReady()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 280
    invoke-direct {p0}, Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 281
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/manager/ZoomManager;->mDeviceSupport:Z

    .line 282
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    .line 283
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    .line 284
    .local v2, index:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 285
    .local v3, len:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 286
    .local v0, curRatio:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 287
    .local v4, maxRatio:I
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 288
    .local v5, minRatio:I
    move v1, v2

    .line 289
    .local v1, finalIndex:I
    iget v7, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    iget v7, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    if-ne v7, v0, :cond_2

    .line 290
    :cond_0
    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    .line 291
    move v1, v2

    .line 295
    :goto_0
    iget-object v7, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 296
    .local v6, newRatio:I
    iget v7, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    if-eq v6, v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v1, v7}, Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V

    .line 297
    sget-boolean v7, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v7, :cond_1

    .line 298
    const-string v7, "ZoomManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCameraParameterReady() index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maxRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", minRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", curRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", finalIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSupportZoom="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/camera/manager/ZoomManager;->mDeviceSupport:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLastZoomRatio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v0           #curRatio:I
    .end local v1           #finalIndex:I
    .end local v2           #index:I
    .end local v3           #len:I
    .end local v4           #maxRatio:I
    .end local v5           #minRatio:I
    .end local v6           #newRatio:I
    :cond_1
    :goto_2
    return-void

    .line 293
    .restart local v0       #curRatio:I
    .restart local v1       #finalIndex:I
    .restart local v2       #index:I
    .restart local v3       #len:I
    .restart local v4       #maxRatio:I
    .restart local v5       #minRatio:I
    :cond_2
    iget v7, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    invoke-direct {p0, v7}, Lcom/android/camera/manager/ZoomManager;->findZoomIndex(I)I

    move-result v1

    goto/16 :goto_0

    .restart local v6       #newRatio:I
    :cond_3
    move v7, v8

    .line 296
    goto :goto_1

    .line 304
    .end local v0           #curRatio:I
    .end local v1           #finalIndex:I
    .end local v2           #index:I
    .end local v3           #len:I
    .end local v4           #maxRatio:I
    .end local v5           #minRatio:I
    .end local v6           #newRatio:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/manager/ZoomManager;->resetZoom()V

    .line 306
    invoke-direct {p0, v8, v8}, Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V

    goto :goto_2
.end method

.method public onFullScreenChanged(Z)V
    .locals 0
    .parameter "full"

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/camera/manager/ZoomManager;->resume()V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ZoomManager;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() mGalleryGestureListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    .line 74
    :cond_1
    return-void
.end method

.method public resetZoom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    sget-boolean v0, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetZoom() mZoomRatios="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastZoomRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F

    .line 86
    invoke-direct {p0, v3}, Lcom/android/camera/manager/ZoomManager;->isValidZoomIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mZoomRatios:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I

    .line 90
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 52
    iget-boolean v1, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager;->mGestureListener:Lcom/android/camera/manager/ZoomManager$MyListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/ActivityBase;->setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    .line 54
    .local v0, last:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager;->mGestureListener:Lcom/android/camera/manager/ZoomManager$MyListener;

    if-eq v0, v1, :cond_0

    .line 55
    iput-object v0, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    .line 57
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/manager/ZoomManager;->mResumed:Z

    .line 59
    .end local v0           #last:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    :cond_1
    sget-boolean v1, Lcom/android/camera/manager/ZoomManager;->LOG:Z

    if-eqz v1, :cond_2

    .line 60
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume() mGalleryGestureListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2
    return-void
.end method
