.class Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;
.super Ljava/lang/Object;
.source "TimeBar.java"

# interfaces
.implements Lcom/android/gallery3d/app/ITimeBarLayoutExt;


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "TimeBarLayoutExtensionImpl"


# instance fields
.field private mTextPadding:I

.field private mVPaddingInPx:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarHeight(ILandroid/graphics/Rect;)I
    .locals 2
    .parameter "originalBarHeight"
    .parameter "timeBounds"

    .prologue
    .line 521
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;->mTextPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getInfoBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "parent"
    .parameter "timeBounds"

    .prologue
    .line 541
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;->mTextPadding:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 544
    .local v0, bounds:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getPreferredHeight(ILandroid/graphics/Rect;)I
    .locals 2
    .parameter "originalPreferredHeight"
    .parameter "timeBounds"

    .prologue
    .line 516
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;->mTextPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getProgressMargin(I)I
    .locals 1
    .parameter "originalMargin"

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public getProgressOffset(Landroid/graphics/Rect;)I
    .locals 2
    .parameter "timeBounds"

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;->mTextPadding:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTimeOffset()I
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;->mTextPadding:I

    iget v1, p0, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;->mVPaddingInPx:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public init(II)V
    .locals 1
    .parameter "scrubberPadding"
    .parameter "vPaddingInPx"

    .prologue
    .line 510
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;->mTextPadding:I

    .line 511
    iput p2, p0, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;->mVPaddingInPx:I

    .line 512
    return-void
.end method
