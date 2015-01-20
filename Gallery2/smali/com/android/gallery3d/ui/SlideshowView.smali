.class public Lcom/android/gallery3d/ui/SlideshowView;
.super Lcom/android/gallery3d/ui/GLView;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;
    }
.end annotation


# static fields
.field private static final MOVE_SPEED:F = 0.2f

.field private static final PLACEHOLDER_COLOR:I = -0xddddde

.field private static final SCALE_SPEED:F = 0.2f

.field private static final SLIDESHOW_DURATION:I = 0xdac

.field private static final TAG:Ljava/lang/String; = "SlideshowView"

.field private static final TRANSITION_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

.field private mCurrentRotation:I

.field private mCurrentSubType:I

.field private mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

.field private mPrevRotation:I

.field private mPrevSubType:I

.field private mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mRandom:Ljava/util/Random;

.field private final mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 56
    new-instance v0, Lcom/android/gallery3d/anim/FloatAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/anim/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    .line 59
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    .line 165
    return-void
.end method


# virtual methods
.method public next(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/ui/SlideshowView;->next(Landroid/graphics/Bitmap;II)V

    .line 63
    return-void
.end method

.method public next(Landroid/graphics/Bitmap;II)V
    .locals 4
    .parameter "bitmap"
    .parameter "rotation"
    .parameter "subType"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/Animation;->start()V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    .line 76
    iget v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevRotation:I

    .line 79
    iget v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentSubType:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevSubType:I

    .line 80
    iput p3, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentSubType:I

    .line 82
    iput p2, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    .line 83
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 84
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/android/gallery3d/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->setSubType(I)V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/Animation;->start()V

    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 100
    return-void

    .line 89
    :cond_1
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/android/gallery3d/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 105
    iput-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 109
    iput-object v1, p0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 111
    :cond_1
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 115
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v11

    .line 116
    .local v11, animTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    invoke-virtual {v3, v11, v12}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v15

    .line 117
    .local v15, requestRender:Z
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v13

    .line 118
    .local v13, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v13, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v3, :cond_3

    const/high16 v10, 0x3f80

    .line 121
    .local v10, alpha:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f80

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v3, v11, v12}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v3

    or-int/2addr v15, v3

    .line 123
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 124
    const/high16 v3, 0x3f80

    sub-float/2addr v3, v10

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 126
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v16

    .line 128
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v14

    .line 129
    .local v14, height:I
    move/from16 v0, v16

    neg-int v3, v0

    div-int/lit8 v17, v3, 0x2

    .line 130
    .local v17, x:I
    neg-int v3, v14

    div-int/lit8 v18, v3, 0x2

    .line 131
    .local v18, y:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevSubType:I

    invoke-static {v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->permitShowThumb(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 136
    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevSubType:I

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/SlideshowView;->mPrevAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->getCurrentScale()F

    move-result v4

    div-float v9, v3, v4

    move-object/from16 v3, p1

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v16

    move v7, v14

    invoke-static/range {v3 .. v9}, Lcom/mediatek/gallery3d/drm/DrmHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIIF)V

    .line 139
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 141
    .end local v14           #height:I
    .end local v16           #width:I
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v3, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v3, v11, v12}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v3

    or-int/2addr v15, v3

    .line 143
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 144
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 146
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v16

    .line 148
    .restart local v16       #width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v14

    .line 149
    .restart local v14       #height:I
    move/from16 v0, v16

    neg-int v3, v0

    div-int/lit8 v17, v3, 0x2

    .line 150
    .restart local v17       #x:I
    neg-int v3, v14

    div-int/lit8 v18, v3, 0x2

    .line 151
    .restart local v18       #y:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentSubType:I

    invoke-static {v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->permitShowThumb(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 156
    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentSubType:I

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/SlideshowView;->mCurrentAnimation:Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlideshowView$SlideshowAnimation;->getCurrentScale()F

    move-result v4

    div-float v9, v3, v4

    move-object/from16 v3, p1

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v16

    move v7, v14

    invoke-static/range {v3 .. v9}, Lcom/mediatek/gallery3d/drm/DrmHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIIF)V

    .line 159
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 161
    .end local v14           #height:I
    .end local v16           #width:I
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_1
    if-eqz v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 162
    :cond_2
    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-interface {v13, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 163
    return-void

    .line 119
    .end local v10           #alpha:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/SlideshowView;->mTransitionAnimation:Lcom/android/gallery3d/anim/FloatAnimation;

    invoke-virtual {v3}, Lcom/android/gallery3d/anim/FloatAnimation;->get()F

    move-result v10

    goto/16 :goto_0

    .line 134
    .restart local v10       #alpha:F
    .restart local v14       #height:I
    .restart local v16       #width:I
    .restart local v17       #x:I
    .restart local v18       #y:I
    :cond_4
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    int-to-float v7, v14

    const v8, -0xddddde

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    goto/16 :goto_1

    .line 154
    :cond_5
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    int-to-float v7, v14

    const v8, -0xddddde

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    goto :goto_2
.end method
