.class public Lcom/android/gallery3d/ui/CropView;
.super Lcom/android/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/CropView$DetectFaceTask;,
        Lcom/android/gallery3d/ui/CropView$HighlightRectangle;,
        Lcom/android/gallery3d/ui/CropView$AnimationController;,
        Lcom/android/gallery3d/ui/CropView$FaceHighlightView;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x4e2

.field private static final ANIMATION_TRIGGER:I = 0x40

.field private static final COLOR_FACE_OUTLINE:I = -0x1000000

.field private static final COLOR_OUTLINE:I = -0xff7501

.field private static final FACE_EYE_RATIO:F = 2.0f

.field private static final FACE_PIXEL_COUNT:I = 0x1d4c0

.field private static final MAX_FACE_COUNT:I = 0x3

.field private static final MAX_SELECTION_RATIO:F = 0.8f

.field private static final MIN_SELECTION_LENGTH:F = 16.0f

.field private static final MIN_SELECTION_RATIO:F = 0.4f

.field private static final MOVE_BLOCK:I = 0x10

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x4

.field private static final MOVE_TOP:I = 0x2

.field private static final MSG_UPDATE_FACES:I = 0x1

.field private static final OUTLINE_WIDTH:F = 3.0f

.field private static final SELECTION_RATIO:F = 0.6f

.field private static final SIZE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CropView"

.field private static final TOUCH_TOLERANCE:I = 0x1e

.field public static final UNSPECIFIED:F = -1.0f


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

.field private mAspectRatio:F

.field private mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

.field private mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

.field private mImageHeight:I

.field private mImageRotation:I

.field private mImageView:Lcom/android/gallery3d/ui/TileImageView;

.field private mImageWidth:I

.field private mMainHandler:Landroid/os/Handler;

.field private mPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mSpotlightRatioX:F

.field private mSpotlightRatioY:F

.field private mStereoMode:Z

.field private mStereoWallpaperMode:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x4040

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 81
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    .line 82
    iput v1, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    .line 83
    iput v1, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    .line 90
    new-instance v0, Lcom/android/gallery3d/ui/CropView$AnimationController;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/CropView$AnimationController;-><init>(Lcom/android/gallery3d/ui/CropView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    .line 92
    iput v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    .line 93
    iput v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    .line 97
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 98
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/CropView;->mStereoWallpaperMode:Z

    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 108
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    .line 109
    new-instance v0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;-><init>(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/CropView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    .line 110
    new-instance v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;-><init>(Lcom/android/gallery3d/ui/CropView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setVisibility(I)V

    .line 119
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isThemeManagerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->themeMainColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->themeMainColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 130
    new-instance v0, Lcom/android/gallery3d/ui/CropView$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/CropView$1;-><init>(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    .line 137
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    const v1, -0xff7501

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/CropView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/CropView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/CropView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$FaceHighlightView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/CropView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/CropView;->mStereoWallpaperMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/CropView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/CropView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/CropView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    return v0
.end method

.method private setImageViewPosition(IIF)Z
    .locals 6
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"

    .prologue
    .line 166
    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    sub-int v0, v4, p1

    .line 167
    .local v0, inverseX:I
    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    sub-int v1, v4, p2

    .line 168
    .local v1, inverseY:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    .line 169
    .local v3, t:Lcom/android/gallery3d/ui/TileImageView;
    iget v2, p0, Lcom/android/gallery3d/ui/CropView;->mImageRotation:I

    .line 170
    .local v2, rotation:I
    sparse-switch v2, :sswitch_data_0

    .line 175
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    .line 174
    :goto_0
    return v4

    .line 172
    :sswitch_1
    const/16 v4, 0x5a

    invoke-virtual {v3, p2, v0, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 173
    :sswitch_2
    const/16 v4, 0xb4

    invoke-virtual {v3, v0, v1, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 174
    :sswitch_3
    const/16 v4, 0x10e

    invoke-virtual {v3, v1, p1, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 170
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public detectFaces(Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "bitmap"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 801
    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageRotation:I

    .line 802
    .local v4, rotation:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 803
    .local v7, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 804
    .local v3, height:I
    const v8, 0x47ea6000

    mul-int v9, v7, v3

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    .line 808
    .local v5, scale:F
    div-int/lit8 v8, v4, 0x5a

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    .line 809
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    .line 810
    .local v6, w:I
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 811
    .local v2, h:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 812
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 813
    .local v0, canvas:Landroid/graphics/Canvas;
    int-to-float v8, v4

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v2, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 814
    int-to-float v8, v6

    int-to-float v9, v7

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v3

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 815
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 827
    :goto_0
    new-instance v8, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;-><init>(Lcom/android/gallery3d/ui/CropView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 828
    return-void

    .line 817
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #faceBitmap:Landroid/graphics/Bitmap;
    .end local v2           #h:I
    .end local v6           #w:I
    :cond_0
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    .line 818
    .restart local v6       #w:I
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 819
    .restart local v2       #h:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 820
    .restart local v1       #faceBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 821
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 822
    int-to-float v8, v4

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 823
    neg-int v8, v2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    neg-int v9, v6

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 824
    int-to-float v8, v6

    int-to-float v9, v3

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v7

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 825
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getCropRectangle()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v0

    .line 195
    .local v0, rect:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    .local v1, result:Landroid/graphics/RectF;
    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    return v0
.end method

.method public getStereoMode()Z
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/CropView;->mStereoMode:Z

    return v0
.end method

.method public initializeHighlightRectangle()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setInitRectangle()V

    .line 832
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setVisibility(I)V

    .line 833
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 150
    sub-int v1, p4, p2

    .line 151
    .local v1, width:I
    sub-int v0, p5, p3

    .line 153
    .local v0, height:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 154
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 155
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 156
    iget v2, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView$AnimationController;->initialize()V

    .line 158
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/CropView$AnimationController;->parkNow(Landroid/graphics/RectF;)V

    .line 163
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 841
    return-void
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    .line 182
    .local v0, a:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getCenterX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getCenterY()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getScale()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/gallery3d/ui/CropView;->setImageViewPosition(IIF)Z

    .line 184
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 185
    return-void
.end method

.method public renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 189
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 190
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 837
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 140
    iput p1, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    .line 141
    return-void
.end method

.method public setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V
    .locals 1
    .parameter "dataModel"
    .parameter "rotation"

    .prologue
    .line 786
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 787
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    .line 788
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    .line 794
    :goto_0
    iput p2, p0, Lcom/android/gallery3d/ui/CropView;->mImageRotation:I

    .line 796
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 797
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->initialize()V

    .line 798
    return-void

    .line 790
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    .line 791
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    goto :goto_0
.end method

.method public setSpotlightRatio(FF)V
    .locals 0
    .parameter "ratioX"
    .parameter "ratioY"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    .line 145
    iput p2, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    .line 146
    return-void
.end method

.method public setStereoMode(Z)V
    .locals 3
    .parameter "stereoMode"

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/CropView;->mStereoMode:Z

    if-ne v0, p1, :cond_0

    .line 856
    :goto_0
    return-void

    .line 852
    :cond_0
    const-string v0, "CropView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStereoMode(stereoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/CropView;->mStereoMode:Z

    .line 855
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/CropView;->mStereoMode:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->setStereoMode(ZZ)V

    goto :goto_0
.end method

.method public setStereoWallpaperMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 844
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/CropView;->mStereoWallpaperMode:Z

    .line 845
    return-void
.end method
