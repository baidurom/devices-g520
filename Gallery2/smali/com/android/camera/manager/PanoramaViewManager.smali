.class public Lcom/android/camera/manager/PanoramaViewManager;
.super Lcom/android/camera/manager/ViewManager;
.source "PanoramaViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;
    }
.end annotation


# static fields
.field static final ANIMATION:Z = true

.field private static final DIRECTION_DOWN:I = 0x3

.field private static final DIRECTION_LEFT:I = 0x1

.field private static final DIRECTION_RIGHT:I = 0x0

.field private static final DIRECTION_UNKNOWN:I = 0x4

.field private static final DIRECTION_UP:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field public static final MAV_VIEW:I = 0x1

.field private static final NONE_ORIENTATION:I = -0x1

.field public static final PANORAMA_VIEW:I = 0x0

.field private static final PANO_3D_OVERLAP_DISTANCE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PanoramaViewManager"

.field private static final TARGET_DISTANCE_HORIZONTAL:I = 0xa0

.field private static final TARGET_DISTANCE_VERTICAL:I = 0x78


# instance fields
.field private mAnimation:Lcom/android/camera/AnimationController;

.field private mCenterIndicator:Landroid/view/ViewGroup;

.field private mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

.field private mDirectionSigns:[Landroid/view/ViewGroup;

.field private mDisplayDirection:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayOrientaion:I

.field private mDisplayRotation:I

.field private mHalfArrowHeight:I

.field private mHalfArrowLength:I

.field private mHoldOrientation:I

.field private mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

.field private mNeedInitialize:Z

.field private mOnSizeChangedListener:Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;

.field private mPanoView:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

.field private mRootView:Landroid/view/View;

.field private mS3DMode:Z

.field private mScreenProgressLayout:Lcom/android/camera/ui/RotateLayout;

.field private mSensorDirection:I

.field private mSensorMatrix:[Landroid/graphics/Matrix;

.field private mViewCategory:I

.field private mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/PanoramaViewManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;I)V
    .locals 3
    .parameter "context"
    .parameter "viewCategory"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 26
    new-array v0, v2, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mS3DMode:Z

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 45
    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    .line 46
    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayDirection:I

    .line 58
    iput v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    .line 59
    iput v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNeedInitialize:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    .line 66
    new-instance v0, Lcom/android/camera/manager/PanoramaViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/PanoramaViewManager$1;-><init>(Lcom/android/camera/manager/PanoramaViewManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mOnSizeChangedListener:Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;

    .line 79
    iput p2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    .line 80
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/camera/manager/PanoramaViewManager;->LOG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/manager/PanoramaViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPreviewWidth:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/manager/PanoramaViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPreviewHeight:I

    return p1
.end method

.method private filterViewCategory(I)Z
    .locals 3
    .parameter "requestCategory"

    .prologue
    .line 357
    iget v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    if-eq v0, p1, :cond_1

    .line 358
    sget-boolean v0, Lcom/android/camera/manager/PanoramaViewManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "PanoramaViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only panorama could call this method. mViewCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getArrowHL()V
    .locals 3

    .prologue
    .line 278
    iget v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    if-nez v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 280
    .local v1, naviWidth:I
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 281
    .local v0, naviHeight:I
    if-le v1, v0, :cond_1

    .line 282
    shr-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    .line 283
    shr-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    .line 289
    .end local v0           #naviHeight:I
    .end local v1           #naviWidth:I
    :cond_0
    :goto_0
    return-void

    .line 285
    .restart local v0       #naviHeight:I
    .restart local v1       #naviWidth:I
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    .line 286
    shr-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    goto :goto_0
.end method

.method private initializeViewManager()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPanoView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mScreenProgressLayout:Lcom/android/camera/ui/RotateLayout;

    .line 109
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    .line 110
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0066

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v5

    .line 111
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v4

    .line 112
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f0b006b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v6

    .line 113
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v3, 0x7f0b006e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    .line 114
    new-instance v1, Lcom/android/camera/AnimationController;

    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/AnimationController;-><init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    .line 116
    iget v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/NaviLineImageView;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    .line 118
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    .line 120
    new-instance v0, Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/camera/ui/ProgressIndicator;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    .line 121
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/camera/manager/PanoramaViewManager;->prepareSensorMatrix()V

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getDisplayOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayOrientaion:I

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayRotation:I

    .line 131
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mScreenProgressLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mOnSizeChangedListener:Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnSizeChangedListener(Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;)V

    .line 132
    return-void

    .line 124
    :cond_1
    iget v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    if-ne v0, v4, :cond_0

    .line 125
    new-instance v0, Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/android/camera/ui/ProgressIndicator;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    .line 126
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method private prepareSensorMatrix()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    .line 224
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v2

    .line 225
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 226
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    const/high16 v2, 0x42f0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 228
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v4

    .line 229
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    const/high16 v1, 0x43a0

    const/high16 v2, 0x42f0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 232
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v5

    .line 233
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v5

    const/high16 v1, 0x4320

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v6

    .line 237
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v6

    const/high16 v1, 0x4320

    const/high16 v2, 0x4370

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 239
    return-void
.end method

.method private prepareTransformMatrix(I)V
    .locals 9
    .parameter "direction"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 242
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 243
    iget v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPreviewWidth:I

    shr-int/lit8 v1, v4, 0x1

    .line 244
    .local v1, halfPrewWidth:I
    iget v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPreviewHeight:I

    shr-int/lit8 v0, v4, 0x1

    .line 247
    .local v0, halfPrewHeight:I
    invoke-direct {p0}, Lcom/android/camera/manager/PanoramaViewManager;->getArrowHL()V

    .line 252
    int-to-float v4, v1

    iget v5, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 253
    .local v3, halfViewWidth:F
    int-to-float v4, v0

    iget v5, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 255
    .local v2, halfViewHeight:F
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x4320

    div-float v5, v3, v5

    const/high16 v6, 0x42f0

    div-float v6, v2, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 256
    iget v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayOrientaion:I

    sparse-switch v4, :sswitch_data_0

    .line 274
    :goto_0
    :sswitch_0
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 275
    return-void

    .line 260
    :sswitch_1
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    mul-float/2addr v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 261
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b4

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 264
    :sswitch_2
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v3

    mul-float/2addr v5, v7

    neg-float v6, v2

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 265
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x4334

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 268
    :sswitch_3
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 269
    iget-object v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, -0x3d4c

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 256
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private setOrientationIndicator(I)V
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x10e

    const/16 v4, 0xb4

    const/16 v3, 0x5a

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 202
    if-nez p1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 205
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/high16 v1, -0x3d4c

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    if-ne p1, v1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v4, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v4, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 209
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v3, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v3, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 214
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v5, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v0, v5, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0
.end method

.method private updateDirection(I)V
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x4

    .line 174
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayOrientaion:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    .line 176
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_3

    .line 177
    :cond_0
    rsub-int/lit8 p1, p1, 0x3

    .line 182
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/camera/manager/PanoramaViewManager;->LOG:Z

    if-eqz v1, :cond_2

    .line 183
    const-string v1, "PanoramaViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDirection mDirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    if-eq v1, p1, :cond_5

    .line 186
    iput p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    .line 187
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    if-eq v1, v4, :cond_4

    .line 188
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    invoke-interface {v1}, Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;->onCaptureBegin()V

    .line 189
    invoke-direct {p0, p1}, Lcom/android/camera/manager/PanoramaViewManager;->setOrientationIndicator(I)V

    .line 190
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v1}, Lcom/android/camera/AnimationController;->startCenterAnimation()V

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_5

    .line 193
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    .end local v0           #i:I
    :cond_3
    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    .line 196
    :cond_4
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_5
    return-void
.end method

.method private updateUIShowingMatrix(III)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 293
    const/4 v3, 0x2

    new-array v2, v3, [F

    int-to-float v3, p1

    aput v3, v2, v8

    int-to-float v3, p2

    aput v3, v2, v6

    .line 294
    .local v2, pts:[F
    iget-object v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v3, v3, p3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 295
    sget-boolean v3, Lcom/android/camera/manager/PanoramaViewManager;->LOG:Z

    if-eqz v3, :cond_0

    .line 296
    const-string v3, "PanoramaViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matrix x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/camera/manager/PanoramaViewManager;->prepareTransformMatrix(I)V

    .line 300
    iget-object v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 301
    sget-boolean v3, Lcom/android/camera/manager/PanoramaViewManager;->LOG:Z

    if-eqz v3, :cond_1

    .line 302
    const-string v3, "PanoramaViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayMatrix x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    aget v3, v2, v8

    float-to-int v0, v3

    .line 306
    .local v0, fx:I
    aget v3, v2, v6

    float-to-int v1, v3

    .line 308
    .local v1, fy:I
    iget-object v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    iget v4, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    sub-int v5, v1, v5

    iget v6, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowHeight:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHalfArrowLength:I

    add-int/2addr v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/ui/NaviLineImageView;->setLayoutPosition(IIII)V

    .line 310
    invoke-direct {p0, p3}, Lcom/android/camera/manager/PanoramaViewManager;->updateDirection(I)V

    .line 311
    iget-object v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 100
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mRootView:Landroid/view/View;

    .line 102
    return-object v0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/camera/manager/PanoramaViewManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "PanoramaViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged mContext.getCameraState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 148
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->onOrientationChanged(I)V

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_1
    iput p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNeedInitialize:Z

    .line 139
    return-void
.end method

.method public resetController()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 371
    sget-boolean v1, Lcom/android/camera/manager/PanoramaViewManager;->LOG:Z

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "PanoramaViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetController mViewCategory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPanoView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/ProgressIndicator;->setProgress(I)V

    .line 376
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    .line 377
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v1}, Lcom/android/camera/AnimationController;->stopCenterAnimation()V

    .line 378
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    if-nez v1, :cond_1

    .line 381
    iput v6, p0, Lcom/android/camera/manager/PanoramaViewManager;->mSensorDirection:I

    .line 382
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public set3DMode(Z)V
    .locals 0
    .parameter "panoramaMode"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mS3DMode:Z

    .line 368
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ProgressIndicator;->setProgress(I)V

    .line 333
    :cond_0
    return-void
.end method

.method public setViewChangedListener(Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;)V
    .locals 0
    .parameter "viewChangedListener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    .line 84
    return-void
.end method

.method public setViewsForNext(I)V
    .locals 3
    .parameter "imageNum"

    .prologue
    const/4 v2, 0x0

    .line 315
    invoke-direct {p0, v2}, Lcom/android/camera/manager/PanoramaViewManager;->filterViewCategory(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProgressIndicator;->setProgress(I)V

    .line 319
    if-nez p1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v0}, Lcom/android/camera/AnimationController;->startDirectionAnimation()V

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v0}, Lcom/android/camera/AnimationController;->stopCenterAnimation()V

    .line 324
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 88
    iget-boolean v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNeedInitialize:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/camera/manager/PanoramaViewManager;->initializeViewManager()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNeedInitialize:Z

    .line 92
    :cond_0
    return-void
.end method

.method public showCaptureView()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 157
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 158
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mHoldOrientation:I

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/PanoramaViewManager;->onOrientationChanged(I)V

    .line 160
    :cond_0
    iget v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mViewCategory:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v1}, Lcom/android/camera/AnimationController;->startCenterAnimation()V

    .line 169
    .end local v0           #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mPanoView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mProgressIndicator:Lcom/android/camera/ui/ProgressIndicator;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ProgressIndicator;->setVisibility(I)V

    .line 171
    return-void

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public startCenterAnimation()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mAnimation:Lcom/android/camera/AnimationController;

    invoke-virtual {v0}, Lcom/android/camera/AnimationController;->startCenterAnimation()V

    .line 338
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    return-void
.end method

.method public updateMovingUI(IIZ)V
    .locals 4
    .parameter "xy"
    .parameter "direction"
    .parameter "shown"

    .prologue
    const/4 v3, 0x4

    .line 342
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/manager/PanoramaViewManager;->filterViewCategory(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    :goto_0
    return-void

    .line 346
    :cond_0
    if-eq p2, v3, :cond_1

    if-eqz p3, :cond_2

    .line 347
    :cond_1
    iget-object v2, p0, Lcom/android/camera/manager/PanoramaViewManager;->mNaviLine:Lcom/android/camera/ui/NaviLineImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 350
    :cond_2
    const/high16 v2, -0x1

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-short v0, v2

    .line 351
    .local v0, x:S
    const v2, 0xffff

    and-int/2addr v2, p1

    int-to-short v1, v2

    .line 353
    .local v1, y:S
    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/manager/PanoramaViewManager;->updateUIShowingMatrix(III)V

    goto :goto_0
.end method
