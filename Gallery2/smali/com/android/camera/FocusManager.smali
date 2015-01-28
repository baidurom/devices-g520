.class public Lcom/android/camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$MainHandler;,
        Lcom/android/camera/FocusManager$Listener;
    }
.end annotation


# static fields
.field private static final FOCUS_FRAME_DELAY:I = 0x3e8

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusManager"


# instance fields
.field private mAeLock:Z

.field private mAeLockSupported:Z

.field private mAwbLock:Z

.field private mAwbLockSupported:Z

.field private mContext:Lcom/android/camera/Camera;

.field private mContinousFocusMode:Ljava/lang/String;

.field private mContinousFocusSupported:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mEnableFaceBeauty:Z

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstFocusDone:Z

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/view/View;

.field private mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mLockAeNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mOrientation:I

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/FocusManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "focusIndicatorRotate"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"
    .parameter "continous"

    .prologue
    const/4 v1, 0x0

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeNeeded:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mFirstFocusDone:Z

    .line 678
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mContext:Lcom/android/camera/Camera;

    .line 679
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 680
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 682
    iput-object p2, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 683
    iput-object p3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 685
    iput-object p9, p0, Lcom/android/camera/FocusManager;->mContinousFocusMode:Ljava/lang/String;

    .line 686
    iput-object p6, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 687
    invoke-virtual {p0, p4}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 688
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 689
    invoke-virtual {p0, p7}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 691
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 692
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 2
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "focusIndicatorRotate"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeNeeded:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mFirstFocusDone:Z

    .line 149
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p7}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 152
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 153
    iput-object p2, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 154
    invoke-virtual {p0, p3}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0, p4}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 156
    iput-object p5, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 157
    invoke-virtual {p0, p6}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 432
    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 434
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 437
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 441
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    const-string v0, "FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 451
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 452
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 455
    :cond_0
    iput v2, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 456
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 457
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iput v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 463
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    :cond_0
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 616
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 207
    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 208
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 214
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    .line 217
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 563
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 564
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 565
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 566
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 568
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 569
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 570
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 571
    return-void
.end method

.method public clearFocusOnContinuous()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 640
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 643
    :cond_0
    return-void
.end method

.method public doSnap()V
    .locals 3

    .prologue
    .line 262
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInitialized ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->readyToCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->doSmileShutter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0

    .line 278
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 282
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 283
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->doSmileShutter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public enableFaceBeauty(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 632
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mEnableFaceBeauty:Z

    .line 633
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->enableFaceBeauty(Z)V

    .line 636
    :cond_0
    return-void
.end method

.method public getAeLock()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeLock:Z

    return v0
.end method

.method public getAeLockSupported()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeLockSupported:Z

    return v0
.end method

.method public getAwbLock()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAwbLock:Z

    return v0
.end method

.method public getAwbLockSupported()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAwbLockSupported:Z

    return v0
.end method

.method public getContinousFocusSupported()Z
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mContinousFocusSupported:Z

    return v0
.end method

.method public getCurrentFocusMode(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 672
    invoke-virtual {p1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusAreaSupported()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 468
    sget-boolean v3, Lcom/android/camera/FocusManager;->LOG:Z

    if-eqz v3, :cond_0

    .line 469
    const-string v3, "FocusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFocusMode mOverrideFocusMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mFocusArea="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mFocusAreaSupported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 474
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 506
    :goto_0
    return-object v3

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 478
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 480
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 496
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 499
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 501
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 506
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 483
    :cond_4
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mContinousFocusMode:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 486
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 487
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 488
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 489
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 490
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 487
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 503
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreaSupported()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isCameraIdle()Z
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 578
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 6
    .parameter "focused"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 295
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocus focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 300
    if-eqz p1, :cond_1

    .line 301
    iput v3, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 305
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 306
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->doSmileShutter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    .line 336
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/android/camera/FocusManager;->mFirstFocusDone:Z

    .line 337
    return-void

    .line 303
    :cond_1
    iput v5, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_0

    .line 309
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v4, :cond_6

    .line 313
    if-eqz p1, :cond_5

    .line 314
    iput v3, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 318
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFirstFocusDone:Z

    if-nez v0, :cond_4

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v4}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    .line 325
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 328
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 323
    :cond_5
    iput v5, p0, Lcom/android/camera/FocusManager;->mState:I

    goto :goto_2

    .line 331
    :cond_6
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 3
    .parameter "moving"

    .prologue
    .line 340
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocusMoving = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 348
    if-eqz p1, :cond_2

    .line 349
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showStart()V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->showSuccess(Z)V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 429
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 696
    iget v0, p0, Lcom/android/camera/FocusManager;->mOrientation:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 697
    iput p1, p0, Lcom/android/camera/FocusManager;->mOrientation:I

    .line 698
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iget v1, p0, Lcom/android/camera/FocusManager;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 700
    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 418
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 422
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 424
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 425
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 220
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeLock:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAwbLock:Z

    if-nez v0, :cond_3

    .line 225
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/FocusManager;->setAeLock(Z)V

    .line 226
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mAwbLock:Z

    .line 228
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 231
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 253
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeLock:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAwbLock:Z

    if-eqz v0, :cond_0

    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 254
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mAeLock:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mAwbLock:Z

    .line 257
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 361
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 366
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 367
    .local v2, focusHeight:I
    if-eqz v1, :cond_4

    if-nez v2, :cond_5

    .line 368
    :cond_4
    const-string v0, "FocusManager"

    const-string v3, "UI Component not initialized, cancel this touch"

    invoke-static {v0, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_5
    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 372
    .local v6, previewWidth:I
    iget v7, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 373
    .local v7, previewHeight:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_6

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 375
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 377
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_6
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 385
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 389
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 391
    .local v10, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v0, v1, 0x2

    sub-int v0, p1, v0

    const/4 v3, 0x0

    sub-int v4, v6, v1

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v9

    .line 392
    .local v9, left:I
    div-int/lit8 v0, v2, 0x2

    sub-int v0, p2, v0

    const/4 v3, 0x0

    sub-int v4, v7, v2

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v12

    .line 393
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v12, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 395
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 396
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v3, 0x0

    aput v3, v11, v0

    .line 397
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 400
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection()V

    .line 403
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 404
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_7

    .line 405
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->autoFocus()V

    .line 413
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFirstFocusDone:Z

    goto/16 :goto_0

    .line 407
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 409
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 704
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 547
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 559
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 552
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 553
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 554
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 555
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 557
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 558
    iput-object v5, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeLock(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mLockAeNeeded:Z

    if-eqz v0, :cond_0

    .line 600
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeLock:Z

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeLock:Z

    goto :goto_0
.end method

.method public setAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAwbLock:Z

    .line 592
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "displayOrientation"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/camera/FocusManager;->mDisplayOrientation:I

    .line 197
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 198
    return-void
.end method

.method public setFaceView(Lcom/android/camera/ui/FaceView;)V
    .locals 2
    .parameter "faceView"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 202
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFocusIndicatorRotateLayout(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V

    .line 203
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mEnableFaceBeauty:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/FocusManager;->enableFaceBeauty(Z)V

    .line 204
    return-void
.end method

.method public setFocusAreaIndicator(Landroid/view/View;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 142
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 143
    const v0, 0x7f0b0020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    .line 144
    return-void
.end method

.method public setLockAeNeeded(Z)V
    .locals 0
    .parameter "neededLock"

    .prologue
    .line 595
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mLockAeNeeded:Z

    .line 596
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    .line 192
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 193
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 162
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 168
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    .line 169
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeLockSupported:Z

    .line 170
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAwbLockSupported:Z

    .line 171
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mContinousFocusMode:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mContinousFocusSupported:Z

    .line 173
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeLockSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 174
    return-void

    :cond_2
    move v0, v2

    .line 162
    goto :goto_0

    :cond_3
    move v0, v2

    .line 168
    goto :goto_1
.end method

.method public setPreviewSize(II)V
    .locals 4
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 177
    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eq v2, p2, :cond_1

    .line 178
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 179
    iput p2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 180
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 183
    iget v2, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 184
    .local v1, len:I
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 185
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    .end local v0           #layout:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #len:I
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 518
    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v5, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 522
    .local v0, faceExists:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 523
    .local v1, focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :goto_2
    const-string v5, "FocusManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateFocusUI, faceExists = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget v5, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v5, :cond_5

    .line 525
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v3, :cond_4

    .line 526
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .end local v0           #faceExists:Z
    .end local v1           #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    move v0, v4

    .line 521
    goto :goto_1

    .line 522
    .restart local v0       #faceExists:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    goto :goto_2

    .line 531
    .restart local v1       #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_4
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 533
    :cond_5
    iget v5, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v5, v3, :cond_6

    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 534
    :cond_6
    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 536
    :cond_7
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 538
    .local v2, focusMode:Ljava/lang/String;
    :goto_3
    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_9

    .line 539
    invoke-interface {v1, v4}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 536
    .end local v2           #focusMode:Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    goto :goto_3

    .line 540
    .restart local v2       #focusMode:Ljava/lang/String;
    :cond_9
    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 541
    invoke-interface {v1, v4}, Lcom/android/camera/ui/FocusIndicator;->showFail(Z)V

    goto :goto_0
.end method
