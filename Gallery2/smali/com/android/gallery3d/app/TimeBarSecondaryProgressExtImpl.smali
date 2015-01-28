.class Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;
.super Ljava/lang/Object;
.source "TimeBar.java"

# interfaces
.implements Lcom/android/gallery3d/app/ITimeBarSecondaryProgressExt;


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "TimeBarSecondaryProgressExtensionImpl"


# instance fields
.field private mBufferPercent:I

.field private mSecondaryBar:Landroid/graphics/Rect;

.field private mSecondaryPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "progressBounds"

    .prologue
    .line 486
    iget v0, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mBufferPercent:I

    if-ltz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mSecondaryBar:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 488
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mSecondaryBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mSecondaryBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mBufferPercent:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 489
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mSecondaryBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mSecondaryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 492
    :cond_0
    const-string v0, "TimeBarSecondaryProgressExtensionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "draw() bufferPercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mBufferPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", secondaryBar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mSecondaryBar:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mSecondaryBar:Landroid/graphics/Rect;

    .line 480
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mSecondaryPaint:Landroid/graphics/Paint;

    .line 481
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mSecondaryPaint:Landroid/graphics/Paint;

    const v1, -0xa35f3b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    return-void
.end method

.method public setSecondaryProgress(Landroid/graphics/Rect;I)V
    .locals 0
    .parameter "progressBar"
    .parameter "percent"

    .prologue
    .line 497
    iput p2, p0, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;->mBufferPercent:I

    .line 498
    return-void
.end method
