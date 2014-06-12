.class public Lcom/android/camera/ui/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "PreviewFrameLayout"


# instance fields
.field private mAspectRatio:D

.field private mBorder:Landroid/view/View;

.field private mListener:Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/PreviewFrameLayout;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const-wide v0, 0x3ff5555555555555L

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PreviewFrameLayout;->setAspectRatio(D)V

    .line 46
    return-void
.end method


# virtual methods
.method public fadeOutBorder()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mBorder:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mBorder:Landroid/view/View;

    .line 51
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v11, 0x4000

    const/high16 v10, 0x4000

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 88
    .local v2, previewWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 91
    .local v1, previewHeight:I
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewFrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewFrameLayout;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 92
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewFrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewFrameLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 95
    .local v3, vPadding:I
    sub-int/2addr v2, v0

    .line 96
    sub-int/2addr v1, v3

    .line 97
    int-to-double v4, v2

    int-to-double v6, v1

    iget-wide v8, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 100
    int-to-double v4, v1

    iget-wide v6, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v4, v6

    double-to-float v4, v4

    div-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 108
    :goto_0
    add-int/2addr v2, v0

    .line 109
    add-int/2addr v1, v3

    .line 112
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 114
    sget-boolean v4, Lcom/android/camera/ui/PreviewFrameLayout;->LOG:Z

    if-eqz v4, :cond_0

    .line 115
    const-string v4, "PreviewFrameLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure() width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void

    .line 103
    :cond_1
    int-to-double v4, v2

    iget-wide v6, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v4, v6

    double-to-float v4, v4

    div-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/lit8 v1, v4, 0x2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/camera/ui/PreviewFrameLayout;->LOG:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "PreviewFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mListener:Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mListener:Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 131
    :cond_1
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 4
    .parameter "ratio"

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/camera/ui/PreviewFrameLayout;->LOG:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "PreviewFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mAspectRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mAspectRatio:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/PreviewFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 63
    const-wide/high16 v0, 0x3ff0

    div-double p1, v0, p1

    .line 66
    :cond_2
    iget-wide v0, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_3

    .line 67
    iput-wide p1, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mAspectRatio:D

    .line 68
    new-instance v0, Lcom/android/camera/ui/PreviewFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PreviewFrameLayout$1;-><init>(Lcom/android/camera/ui/PreviewFrameLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PreviewFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_3
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mListener:Lcom/android/camera/ui/PreviewFrameLayout$OnSizeChangedListener;

    .line 121
    return-void
.end method

.method public showBorder(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/camera/ui/PreviewFrameLayout;->mBorder:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
