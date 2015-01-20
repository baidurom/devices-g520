.class public Lcom/android/camera/ui/RotateTextView;
.super Landroid/widget/TextView;
.source "RotateTextView.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;


# static fields
.field private static final ANIMATION_SPEED:I = 0xb4


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "paramContext"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 24
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 25
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 26
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 27
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 28
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 24
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 25
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 26
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 27
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 28
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 37
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "paramContext"
    .parameter "paramAttributeSet"
    .parameter "paramInt"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 24
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 25
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 26
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 27
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 28
    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 43
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 81
    iget v10, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iget v11, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    if-eq v10, v11, :cond_0

    .line 82
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 83
    .local v6, time:J
    iget-wide v10, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_3

    .line 84
    iget-wide v10, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    sub-long v10, v6, v10

    long-to-int v2, v10

    .line 85
    .local v2, deltaTime:I
    iget v10, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    iget-boolean v11, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    if-eqz v11, :cond_1

    .end local v2           #deltaTime:I
    :goto_0
    mul-int/lit16 v11, v2, 0xb4

    div-int/lit16 v11, v11, 0x3e8

    add-int v1, v10, v11

    .line 87
    .local v1, degree:I
    if-ltz v1, :cond_2

    .line 88
    rem-int/lit16 v10, v1, 0x168

    iput v10, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 93
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 99
    .end local v1           #degree:I
    .end local v6           #time:J
    :cond_0
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 100
    .local v4, left:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 101
    .local v8, top:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 102
    .local v5, right:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 103
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v10, v4

    sub-int v9, v10, v5

    .line 104
    .local v9, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v10, v8

    sub-int v3, v10, v0

    .line 106
    .local v3, height:I
    div-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v4

    int-to-float v10, v10

    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v8

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    iget v10, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 108
    neg-int v10, v9

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    neg-int v11, v3

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    return-void

    .line 85
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v8           #top:I
    .end local v9           #width:I
    .restart local v2       #deltaTime:I
    .restart local v6       #time:J
    :cond_1
    neg-int v2, v2

    goto :goto_0

    .line 90
    .end local v2           #deltaTime:I
    .restart local v1       #degree:I
    :cond_2
    rem-int/lit16 v10, v1, 0x168

    add-int/lit16 v10, v10, 0x168

    iput v10, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    goto :goto_1

    .line 95
    .end local v1           #degree:I
    :cond_3
    iget v10, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iput v10, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    goto :goto_2
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RotateTextView;->setDegree(I)V

    .line 117
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 121
    return-void
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 47
    if-ltz p1, :cond_0

    .line 48
    rem-int/lit16 p1, p1, 0x168

    .line 53
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 78
    :goto_1
    return-void

    .line 50
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 57
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 58
    iget v1, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 59
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 61
    iget v1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iget v2, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 64
    .local v0, diff:I
    if-gtz v0, :cond_2

    .line 65
    add-int/lit16 v0, v0, 0x168

    .line 70
    :cond_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_3

    .line 71
    add-int/lit16 v0, v0, -0x168

    .line 74
    :cond_3
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 75
    iget-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xb4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 74
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method
