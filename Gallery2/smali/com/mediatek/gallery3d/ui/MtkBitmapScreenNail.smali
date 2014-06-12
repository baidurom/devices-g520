.class public Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
.super Lcom/android/gallery3d/ui/BitmapScreenNail;
.source "MtkBitmapScreenNail.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkBitmapScreenNail"


# instance fields
.field protected mOriginHeight:I

.field protected mOriginWidth:I

.field protected mSubType:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(II)V

    .line 29
    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mSubType:I

    .line 30
    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginWidth:I

    .line 31
    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginHeight:I

    .line 47
    iput p1, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginWidth:I

    .line 48
    iput p2, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginHeight:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mSubType:I

    .line 30
    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginWidth:I

    .line 31
    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginHeight:I

    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginWidth:I

    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginHeight:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mSubType:I

    .line 30
    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginWidth:I

    .line 31
    iput v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginHeight:I

    .line 41
    iput p2, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginWidth:I

    .line 42
    iput p3, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginHeight:I

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mSubType:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->permitShowThumb(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/BitmapScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 76
    :goto_0
    iget v5, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mSubType:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/mediatek/gallery3d/drm/DrmHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIII)V

    .line 77
    return-void

    .line 73
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    const v5, -0xddddde

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    goto :goto_0
.end method

.method public getOriginHeight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginHeight:I

    return v0
.end method

.method public getOriginWidth()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mOriginWidth:I

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mSubType:I

    return v0
.end method

.method public setSubType(I)V
    .locals 0
    .parameter "subType"

    .prologue
    .line 52
    iput p1, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->mSubType:I

    .line 53
    return-void
.end method
