.class public Lcom/mediatek/gallery3d/mav/MAVView;
.super Landroid/widget/ImageView;
.source "MAVView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;
    }
.end annotation


# static fields
.field private static final BASE_ANGLE:I = 0xf

.field private static final FLING_DIRECTION_INVALID:I = -0x1

.field private static final FLING_DIRECTION_LEFT:I = 0x1

.field private static final FLING_DIRECTION_RIGHT:I = 0x2

.field private static final NS2S:F = 1.0E-9f

.field private static final OFFSET:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "MAVView"

.field private static final TH:F = 0.0010f


# instance fields
.field private mAbsorbingFling:Z

.field private mAngle:[F

.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mBitmapArr:[Landroid/graphics/Bitmap;

.field private mDisplay:Landroid/view/Display;

.field private mDistDivider:I

.field private mEffectLeft:Landroid/widget/EdgeEffect;

.field private mEffectRight:Landroid/widget/EdgeEffect;

.field private mEnableTouchMode:Z

.field private mFirstShowBitmap:Landroid/graphics/Bitmap;

.field private mFirstTime:Z

.field private mFlingDirection:I

.field private mFlingOnGoing:Z

.field private mFlingThread:Ljava/lang/Thread;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasDown:Z

.field private mImageRotation:I

.field private mLastIndex:I

.field private mLastTmpIndex:I

.field private mOrientation:I

.field private mOverScrollPoint:F

.field public mRectifySensorListener:Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;

.field private mRectifyValue:[F

.field private mResponsibility:Z

.field private mScrollDistance:F

.field private mScroller:Landroid/widget/OverScroller;

.field private mTimestamp:F

.field private mTouchThreshold:I

.field private mValue:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mRectifyValue:[F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstTime:Z

    .line 31
    const v0, 0xffff

    iput v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 34
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    .line 35
    new-instance v0, Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;-><init>(Lcom/mediatek/gallery3d/mav/MAVView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mRectifySensorListener:Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;

    .line 164
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mValue:F

    .line 166
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTimestamp:F

    .line 167
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    .line 287
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEnableTouchMode:Z

    .line 290
    iput v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTouchThreshold:I

    .line 292
    iput v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    .line 295
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z

    .line 298
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z

    .line 299
    iput v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingDirection:I

    .line 303
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    .line 304
    iput v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOrientation:I

    .line 305
    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mImageRotation:I

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstShowBitmap:Landroid/graphics/Bitmap;

    .line 309
    iput v4, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDistDivider:I

    .line 310
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    .line 311
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mHasDown:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/mav/MAVView;->initView(Landroid/content/Context;)V

    .line 41
    return-void

    .line 29
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 167
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mRectifyValue:[F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstTime:Z

    .line 31
    const v0, 0xffff

    iput v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 34
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    .line 35
    new-instance v0, Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;-><init>(Lcom/mediatek/gallery3d/mav/MAVView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mRectifySensorListener:Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;

    .line 164
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mValue:F

    .line 166
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTimestamp:F

    .line 167
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    .line 287
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEnableTouchMode:Z

    .line 290
    iput v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTouchThreshold:I

    .line 292
    iput v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    .line 295
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z

    .line 298
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z

    .line 299
    iput v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingDirection:I

    .line 303
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    .line 304
    iput v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOrientation:I

    .line 305
    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mImageRotation:I

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstShowBitmap:Landroid/graphics/Bitmap;

    .line 309
    iput v4, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDistDivider:I

    .line 310
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    .line 311
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mHasDown:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/mav/MAVView;->initView(Landroid/content/Context;)V

    .line 46
    return-void

    .line 29
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 167
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/mediatek/gallery3d/mav/MAVView;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mRectifyValue:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/mav/MAVView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/gallery3d/mav/MAVView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/mav/MAVView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDistDivider:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/gallery3d/mav/MAVView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/mav/MAVView;->scrollDeltaDistance(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/mav/MAVView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/gallery3d/mav/MAVView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/gallery3d/mav/MAVView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingDirection:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method private checkBitmap(Landroid/graphics/Bitmap;)Z
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 198
    if-nez p1, :cond_0

    .line 199
    const-string v3, "MAVView"

    const-string v4, "checkBitmap:in passed Bitmap is null!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return v2

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 204
    .local v1, w:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 205
    .local v0, h:F
    cmpg-float v3, v1, v4

    if-lez v3, :cond_1

    cmpg-float v3, v0, v4

    if-gtz v3, :cond_2

    .line 206
    :cond_1
    const-string v3, "MAVView"

    const-string v4, "checkBitmap:invalid dimension of Bitmap!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkSelf()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 215
    .local v1, viewWidth:F
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 216
    .local v0, viewHeight:F
    cmpg-float v2, v1, v3

    if-lez v2, :cond_0

    cmpg-float v2, v0, v3

    if-gtz v2, :cond_1

    .line 217
    :cond_0
    const-string v2, "MAVView"

    const-string v3, "checkSelf:invalid dimension of ImageView!"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x0

    .line 221
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 315
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/mav/MAVView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object v0, p1

    .line 316
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDisplay:Landroid/view/Display;

    .line 317
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 318
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScroller:Landroid/widget/OverScroller;

    .line 319
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    .line 320
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    .line 321
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->updateDimensionParams()V

    .line 322
    const-string v0, "MAVView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView: initial rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method private scrollDeltaDistance(I)V
    .locals 3
    .parameter "deltaX"

    .prologue
    .line 556
    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTouchThreshold:I

    div-int v0, p1, v2

    .line 557
    .local v0, cnt:I
    if-eqz v0, :cond_1

    .line 558
    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    add-int v1, v2, v0

    .line 559
    .local v1, tmpIndex:I
    if-gez v1, :cond_2

    .line 560
    const/4 v1, 0x0

    .line 564
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 565
    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    .line 567
    .end local v1           #tmpIndex:I
    :cond_1
    return-void

    .line 561
    .restart local v1       #tmpIndex:I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method private setBitmapMatrix(Landroid/graphics/Bitmap;)V
    .locals 14
    .parameter "bitmap"

    .prologue
    const/high16 v13, 0x4000

    .line 225
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->checkSelf()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/mav/MAVView;->checkBitmap(Landroid/graphics/Bitmap;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 226
    :cond_0
    const-string v10, "MAVView"

    const-string v11, "setBitmapMatrix:either Bitmap or ImageView\'s dimen invalid"

    invoke-static {v10, v11}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 228
    iget-object v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v10}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 271
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->getWidth()I

    move-result v10

    int-to-float v7, v10

    .line 233
    .local v7, viewWidth:F
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->getHeight()I

    move-result v10

    int-to-float v6, v10

    .line 235
    .local v6, viewHeight:F
    const/4 v8, 0x0

    .line 236
    .local v8, w:F
    const/4 v2, 0x0

    .line 237
    .local v2, h:F
    iget v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mImageRotation:I

    div-int/lit8 v10, v10, 0x5a

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_3

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v8, v10

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v2, v10

    .line 245
    :goto_1
    div-float v9, v7, v8

    .line 246
    .local v9, widthScale:F
    div-float v3, v6, v2

    .line 248
    .local v3, heightScale:F
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 250
    .local v5, scale:F
    iget-object v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 252
    iget v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mImageRotation:I

    if-eqz v10, :cond_2

    .line 253
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 258
    .local v0, cx:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v1, v10, 0x2

    .line 259
    .local v1, cy:I
    neg-int v10, v0

    int-to-float v10, v10

    neg-int v11, v1

    int-to-float v11, v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 260
    iget v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mImageRotation:I

    int-to-float v10, v10

    invoke-virtual {v4, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 261
    div-float v10, v8, v13

    div-float v11, v2, v13

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 262
    iget-object v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 265
    .end local v0           #cx:I
    .end local v1           #cy:I
    .end local v4           #matrix:Landroid/graphics/Matrix;
    :cond_2
    iget-object v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 266
    iget-object v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float v11, v8, v5

    sub-float v11, v7, v11

    div-float/2addr v11, v13

    mul-float v12, v2, v5

    sub-float v12, v6, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 270
    iget-object v10, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v10}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 241
    .end local v3           #heightScale:F
    .end local v5           #scale:F
    .end local v9           #widthScale:F
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v8, v10

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v2, v10

    goto :goto_1
.end method

.method private updateDimensionParams()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mWidth:I

    .line 356
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 363
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 364
    iget v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDistDivider:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTouchThreshold:I

    goto :goto_0
.end method


# virtual methods
.method public configChanged(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->updateDimensionParams()V

    .line 336
    const-string v0, "MAVView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configChanged: new width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 174
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 414
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return v1

    .line 418
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z

    .line 420
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 421
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 422
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 425
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingDirection:I

    .line 426
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    .line 427
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 585
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 587
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 588
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 589
    .local v1, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 590
    .local v2, w:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 591
    .local v0, h:I
    const/high16 v3, 0x42b4

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 592
    neg-int v3, v2

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 593
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->invalidate()V

    .line 596
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 599
    .end local v0           #h:I
    .end local v1           #saveCount:I
    .end local v2           #w:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 600
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 601
    .restart local v1       #saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 602
    .restart local v2       #w:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 603
    .restart local v0       #h:I
    const/high16 v3, -0x3d4c

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 604
    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 605
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 606
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->invalidate()V

    .line 608
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 610
    .end local v0           #h:I
    .end local v1           #saveCount:I
    .end local v2           #w:I
    :cond_3
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 13
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 434
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    if-nez v1, :cond_0

    .line 436
    const/4 v1, 0x1

    .line 497
    :goto_0
    return v1

    .line 438
    :cond_0
    const-string v1, "MAVView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFling: vX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    .line 440
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    const/4 v1, 0x2

    :goto_1
    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingDirection:I

    .line 442
    move/from16 v0, p3

    float-to-int v12, v0

    .line 444
    .local v12, initialVelocityX:I
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 445
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z

    .line 446
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 447
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 448
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 450
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z

    if-eqz v1, :cond_2

    .line 451
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z

    .line 455
    :cond_2
    iget v7, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mWidth:I

    .line 456
    .local v7, maxX:I
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTouchThreshold:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDistDivider:I

    mul-int v2, v1, v3

    .line 457
    .local v2, startX:I
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    neg-int v4, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 458
    new-instance v1, Lcom/mediatek/gallery3d/mav/MAVView$1;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/gallery3d/mav/MAVView$1;-><init>(Lcom/mediatek/gallery3d/mav/MAVView;I)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingThread:Ljava/lang/Thread;

    .line 495
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingThread:Ljava/lang/Thread;

    const-string v3, "scroller-fling"

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFlingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 497
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 440
    .end local v2           #startX:I
    .end local v7           #maxX:I
    .end local v12           #initialVelocityX:I
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 51
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 52
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 53
    const v0, 0xffff

    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 58
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEnableTouchMode:Z

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v1, v1

    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 65
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstShowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstShowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 577
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 504
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    if-nez v1, :cond_0

    .line 552
    :goto_0
    return v4

    .line 509
    :cond_0
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    cmpg-float v1, p3, v3

    if-gez v1, :cond_1

    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2

    :cond_1
    cmpl-float v1, p3, v3

    if-lez v1, :cond_5

    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    .line 514
    :cond_2
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    .line 515
    iput v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    .line 516
    iput p3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    .line 517
    cmpg-float v1, p3, v3

    if-gez v1, :cond_4

    .line 518
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 519
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 551
    :cond_3
    :goto_1
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/mav/MAVView;->scrollDeltaDistance(I)V

    goto :goto_0

    .line 521
    :cond_4
    cmpl-float v1, p3, v3

    if-lez v1, :cond_3

    .line 522
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 523
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    .line 527
    :cond_5
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    add-float/2addr v1, p3

    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    .line 528
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    if-nez v1, :cond_8

    cmpg-float v1, p3, v3

    if-gez v1, :cond_8

    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_8

    .line 530
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    .line 535
    :cond_6
    :goto_2
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTouchThreshold:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDistDivider:I

    mul-int v0, v1, v2

    .line 536
    .local v0, startX:I
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    if-nez v1, :cond_9

    cmpg-float v1, p3, v3

    if-gez v1, :cond_9

    .line 537
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    .line 538
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 540
    :cond_7
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    iget v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 541
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->invalidate()V

    goto :goto_1

    .line 531
    .end local v0           #startX:I
    :cond_8
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_6

    cmpl-float v1, p3, v3

    if-lez v1, :cond_6

    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    .line 533
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    goto :goto_2

    .line 542
    .restart local v0       #startX:I
    :cond_9
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    cmpl-float v1, p3, v3

    if-lez v1, :cond_3

    .line 543
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_a

    .line 544
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 546
    :cond_a
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    iget v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mScrollDistance:F

    iget v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOverScrollPoint:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 547
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->invalidate()V

    goto/16 :goto_1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    .line 88
    iget-boolean v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    if-nez v5, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const v4, 0x3cf5c28f

    .line 100
    .local v4, xSmallRotateTH:F
    const/4 v3, 0x0

    .line 101
    .local v3, valueToUse:F
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 102
    .local v2, newRotation:I
    iget v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOrientation:I

    if-eq v5, v2, :cond_2

    .line 104
    iput v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOrientation:I

    .line 105
    const/4 v5, 0x0

    iput v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mValue:F

    .line 106
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 107
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 108
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 109
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstTime:Z

    .line 111
    :cond_2
    iget v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 127
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 129
    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3cf5c28f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 134
    const/4 v5, 0x0

    add-float/2addr v5, v3

    iput v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mValue:F

    .line 135
    iget v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTimestamp:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mValue:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 136
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v5, v5

    iget v6, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTimestamp:F

    sub-float/2addr v5, v6

    const v6, 0x3089705f

    mul-float v0, v5, v6

    .line 137
    .local v0, dT:F
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x1

    aget v7, v5, v6

    float-to-double v7, v7

    iget v9, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mValue:F

    mul-float/2addr v9, v0

    const/high16 v10, 0x4334

    mul-float/2addr v9, v10

    float-to-double v9, v9

    const-wide v11, 0x400921fb54442d18L

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v5, v6

    .line 138
    iget-boolean v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstTime:Z

    if-eqz v5, :cond_6

    .line 139
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x4170

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 140
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x4170

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 141
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstTime:Z

    .line 149
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    .line 150
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v6, v6

    mul-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x1e

    .line 151
    .local v1, index:I
    if-ltz v1, :cond_5

    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 152
    iget v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    const v6, 0xffff

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    if-eq v5, v1, :cond_5

    .line 153
    :cond_4
    const-string v5, "MAVView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageBitmap: bitmap["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v7, v7

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v6, v6

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    .line 160
    .end local v0           #dT:F
    .end local v1           #index:I
    :cond_5
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v5, v5

    iput v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mTimestamp:F

    goto/16 :goto_0

    .line 113
    :pswitch_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v3, v5, v6

    .line 114
    goto/16 :goto_1

    .line 117
    :pswitch_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 118
    goto/16 :goto_1

    .line 121
    :pswitch_2
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    neg-float v3, v5

    .line 122
    goto/16 :goto_1

    .line 124
    :pswitch_3
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    neg-float v3, v5

    .line 125
    goto/16 :goto_1

    .line 142
    .restart local v0       #dT:F
    :cond_6
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_7

    .line 143
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 144
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x41f0

    add-float/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_2

    .line 145
    :cond_7
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 146
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 147
    iget-object v5, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mAngle:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    const/high16 v8, 0x41f0

    sub-float/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_2

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 581
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 572
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 372
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEnableTouchMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    if-nez v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v2

    .line 375
    :cond_1
    const/4 v0, 0x0

    .line 376
    .local v0, shouldIgnore:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 405
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 378
    :pswitch_0
    iput-boolean v2, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mHasDown:Z

    goto :goto_1

    .line 381
    :pswitch_1
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mHasDown:Z

    if-nez v1, :cond_2

    .line 382
    const/4 v0, 0x1

    goto :goto_1

    .line 386
    :pswitch_2
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mHasDown:Z

    if-nez v1, :cond_3

    .line 387
    const/4 v0, 0x1

    .line 388
    iput-boolean v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mHasDown:Z

    goto :goto_1

    .line 391
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mHasDown:Z

    .line 394
    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    iput v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    .line 395
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    .line 396
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 398
    :cond_4
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public recycleBitmapArr()V
    .locals 4

    .prologue
    .line 274
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 275
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 276
    const-string v1, "MAVView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is recycled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 279
    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public setBitmapArr([Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmapArr"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    .line 195
    return-void
.end method

.method public setFirstShowBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mFirstShowBitmap:Landroid/graphics/Bitmap;

    .line 327
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->checkSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/mav/MAVView;->checkBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    const-string v0, "MAVView"

    const-string v1, "setImageBitmap:either Bitmap or ImageView\'s dimen invalid"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/mav/MAVView;->setBitmapMatrix(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 177
    iput p1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mImageRotation:I

    .line 178
    const-string v0, "MAVView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageRotation(rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public setResponsibility(Z)V
    .locals 2
    .parameter "responsible"

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mResponsibility:Z

    .line 341
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEnableTouchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mBitmapArr:[Landroid/graphics/Bitmap;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    .line 346
    iget v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastIndex:I

    iput v0, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mLastTmpIndex:I

    .line 347
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mav/MAVView;->updateDimensionParams()V

    .line 349
    :cond_0
    return-void
.end method

.method public setTouchModeEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/mav/MAVView;->mEnableTouchMode:Z

    .line 331
    return-void
.end method
