.class public Lcom/android/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/Camera$OnOrientationListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "FaceView"


# instance fields
.field private mDisplayOrientation:I

.field private final mDrawableBeautyFace:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocused:Landroid/graphics/drawable/Drawable;

.field private final mDrawableFocusing:Landroid/graphics/drawable/Drawable;

.field private mEnableBeauty:Z

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

.field private mLastFaceNum:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPause:Z

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableBeautyFace:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 63
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 123
    return-void
.end method

.method public enableFaceBeauty(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mEnableBeauty:Z

    .line 135
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mEnableBeauty:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_0
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 143
    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mEnableBeauty:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mDrawableBeautyFace:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 153
    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 157
    sget-boolean v1, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    const-string v2, "Original rect"

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 161
    sget-boolean v1, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    const-string v2, "Transformed rect"

    invoke-static {v1, v2}, Lcom/android/camera/Util;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    .end local v0           #i:I
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 180
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 182
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 127
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 186
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    .line 131
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 80
    sget-boolean v0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method public setFaces([Landroid/hardware/Camera$Face;)V
    .locals 2
    .parameter "faces"

    .prologue
    .line 67
    array-length v0, p1

    .line 68
    .local v0, num:I
    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mLastFaceNum:I

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Landroid/hardware/Camera$Face;

    .line 70
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mLastFaceNum:I

    .line 71
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->isFocusing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->clear()V

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setFocusIndicatorRotateLayout(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V
    .locals 0
    .parameter "indicator"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFocusIndicatorRotateLayout:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    .line 176
    return-void
.end method

.method public setMirror(Z)V
    .locals 3
    .parameter "mirror"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 87
    sget-boolean v0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method

.method public showFail(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusFailed:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 114
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocusing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 100
    return-void
.end method

.method public showSuccess(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawableFocused:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 107
    return-void
.end method
