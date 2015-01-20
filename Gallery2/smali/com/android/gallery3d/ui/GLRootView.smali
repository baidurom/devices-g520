.class public Lcom/android/gallery3d/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/android/gallery3d/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLRootView$StereoPass;,
        Lcom/android/gallery3d/ui/GLRootView$IdleRunner;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAWING_STAT:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_PROFILE:Z = false

.field private static final DEBUG_PROFILE_SLOW_ONLY:Z = false

.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field private static final STEREO_DRAW_LEFT_PASS:I = 0x0

.field private static final STEREO_DRAW_RIGHT_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLRootView"


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcom/android/gallery3d/ui/GLView;

.field private mCurrSP:Lcom/android/gallery3d/ui/GLRootView$StereoPass;

.field private mDisplayRotation:I

.field private final mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

.field private mFirstDraw:Z

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

.field private mPendingCompensation:I

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mStereoMode:Z

.field private mStereoPass:[Lcom/android/gallery3d/ui/GLRootView$StereoPass;

.field private mStereoPassId:I

.field private mSurfaceStereoMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 612
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/GLRootView;->IS_STEREO_DISPLAY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 65
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInvalidateColor:I

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    .line 91
    iput v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 92
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 94
    new-instance v0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    .line 103
    new-instance v0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/GLRootView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    .line 111
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    .line 615
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoMode:Z

    .line 616
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mSurfaceStereoMode:Z

    .line 630
    new-array v0, v4, [Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoPass:[Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    .line 631
    iput-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCurrSP:Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    .line 120
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 121
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 123
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 124
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 129
    sget-boolean v0, Lcom/android/gallery3d/ui/GLRootView;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->initStereoDisplay()V

    .line 132
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/ui/GLCanvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/GLRootView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method private finishForStereo(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 1
    .parameter "gl"
    .parameter "updateStereoMode"

    .prologue
    .line 733
    sget-boolean v0, Lcom/android/gallery3d/ui/GLRootView;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-nez v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mSurfaceStereoMode:Z

    if-eqz v0, :cond_2

    .line 738
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->prepareForRightPath()V

    .line 740
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 741
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->resetStereoPath()V

    .line 744
    :cond_2
    if-eqz p2, :cond_0

    .line 745
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mSurfaceStereoMode:Z

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setSurfaceStereoMode(Z)V

    goto :goto_0
.end method

.method private initStereoDisplay()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f00

    .line 635
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoPass:[Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3}, Lcom/android/gallery3d/ui/GLRootView$StereoPass;-><init>(FF)V

    aput-object v2, v0, v1

    .line 636
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoPass:[Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    invoke-direct {v2, v4, v4}, Lcom/android/gallery3d/ui/GLRootView$StereoPass;-><init>(FF)V

    aput-object v2, v0, v1

    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoPassId:I

    .line 638
    return-void
.end method

.method private layoutContentPane()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 203
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 206
    .local v4, w:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 207
    .local v2, h:I
    const/4 v1, 0x0

    .line 208
    .local v1, displayRotation:I
    const/4 v0, 0x0

    .line 211
    .local v0, compensation:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    if-eqz v5, :cond_3

    .line 212
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v1

    .line 213
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getCompensation()I

    move-result v0

    .line 219
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    if-eq v5, v0, :cond_0

    .line 220
    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    .line 221
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_4

    .line 222
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 224
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 226
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 231
    :cond_0
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    .line 234
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_1

    .line 235
    move v3, v4

    .line 236
    .local v3, tmp:I
    move v4, v2

    .line 237
    move v2, v3

    .line 239
    .end local v3           #tmp:I
    :cond_1
    const-string v5, "GLRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "layout content pane "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (compensation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 242
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v5, v9, v9, v4, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 246
    :cond_2
    return-void

    .line 215
    :cond_3
    const/4 v1, 0x0

    .line 216
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 375
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLCanvas;->deleteRecycledResources()V

    .line 378
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    .line 380
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 382
    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->layoutContentPane()V

    .line 384
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 385
    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    neg-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/GLRootView;->rotateCanvas(I)V

    .line 386
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v4, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->transformForStereo()V

    .line 390
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 392
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 394
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 395
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 396
    .local v2, now:J
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 397
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v4, v2, v3}, Lcom/android/gallery3d/anim/Animation;->setStartTime(J)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 402
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #now:J
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 403
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 406
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v5

    .line 407
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 408
    :cond_5
    monitor-exit v5

    .line 418
    return-void

    .line 408
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private outputFps()V
    .locals 8

    .prologue
    .line 303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 304
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 305
    iput-wide v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 312
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 313
    return-void

    .line 306
    :cond_1
    iget-wide v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 307
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-wide v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 310
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    goto :goto_0
.end method

.method private prepareForLeftPath()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 680
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(IIII)V

    .line 683
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoPass:[Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCurrSP:Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    .line 685
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoPassId:I

    .line 687
    return-void
.end method

.method private prepareForRightPath()V
    .locals 5

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(IIII)V

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoPass:[Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCurrSP:Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    .line 696
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoPassId:I

    .line 698
    return-void
.end method

.method private prepareForStereo()Z
    .locals 3

    .prologue
    .line 708
    sget-boolean v1, Lcom/android/gallery3d/ui/GLRootView;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-nez v1, :cond_1

    .line 709
    const/4 v0, 0x0

    .line 729
    :cond_0
    :goto_0
    return v0

    .line 713
    :cond_1
    const/4 v0, 0x0

    .line 715
    .local v0, updateStereoMode:Z
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mSurfaceStereoMode:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoMode:Z

    if-eq v1, v2, :cond_2

    .line 716
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoMode:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mSurfaceStereoMode:Z

    .line 718
    const/4 v0, 0x1

    .line 726
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mSurfaceStereoMode:Z

    if-eqz v1, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->prepareForLeftPath()V

    goto :goto_0
.end method

.method private resetStereoPath()V
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 705
    return-void
.end method

.method private rotateCanvas(I)V
    .locals 8
    .parameter "degrees"

    .prologue
    const/4 v7, 0x0

    .line 421
    if-nez p1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 423
    .local v3, w:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 424
    .local v2, h:I
    div-int/lit8 v0, v3, 0x2

    .line 425
    .local v0, cx:I
    div-int/lit8 v1, v2, 0x2

    .line 426
    .local v1, cy:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 427
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    int-to-float v5, p1

    const/high16 v6, 0x3f80

    invoke-interface {v4, v5, v7, v7, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 428
    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_1

    .line 429
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private setSurfaceStereoMode(Z)V
    .locals 4
    .parameter "surfaceStereoMode"

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, stereoLayout:I
    if-eqz p1, :cond_0

    .line 669
    const/16 v0, 0x20

    .line 674
    :goto_0
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSurfaceStereoMode:call set3DLayout(stereoLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->set3DLayout(I)V

    .line 676
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private transformForStereo()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 750
    sget-boolean v0, Lcom/android/gallery3d/ui/GLRootView;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mSurfaceStereoMode:Z

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mCurrSP:Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    iget v2, v2, Lcom/android/gallery3d/ui/GLRootView$StereoPass;->transf:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1, v3, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 753
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mCurrSP:Lcom/android/gallery3d/ui/GLRootView$StereoPass;

    iget v1, v1, Lcom/android/gallery3d/ui/GLRootView$StereoPass;->scale:F

    invoke-interface {v0, v1, v4, v4}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 755
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 148
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 437
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 461
    :goto_0
    return v1

    .line 439
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 440
    .local v0, action:I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_6

    .line 442
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 447
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    if-eqz v3, :cond_3

    .line 448
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 451
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 454
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 456
    .local v1, handled:Z
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 457
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 443
    .end local v1           #handled:Z
    :cond_6
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 601
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 605
    return-void

    .line 603
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    throw v0
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 543
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 544
    return-void
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    return v0
.end method

.method public getStereoMode()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mSurfaceStereoMode:Z

    return v0
.end method

.method public getStereoPassId()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoPassId:I

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 500
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 595
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 596
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 317
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->update()V

    .line 323
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 325
    :goto_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 331
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->prepareForStereo()Z

    move-result v0

    .line 333
    .local v0, updateStereoMode:Z
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 336
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/GLRootView;->finishForStereo(Ljavax/microedition/khronos/opengles/GL10;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 344
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    if-eqz v1, :cond_1

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    .line 346
    new-instance v1, Lcom/android/gallery3d/ui/GLRootView$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/GLRootView$1;-><init>(Lcom/android/gallery3d/ui/GLRootView;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 369
    :cond_1
    return-void

    .line 338
    .end local v0           #updateStereoMode:Z
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    .line 252
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 510
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 517
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 288
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gl10: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 291
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->setRenderThread()V

    move-object v0, p1

    .line 296
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 297
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 300
    return-void

    .line 297
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "gl1"
    .parameter "config"

    .prologue
    .line 260
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 261
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLObject has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 267
    :try_start_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 268
    new-instance v1, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 269
    invoke-static {}, Lcom/android/gallery3d/ui/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 277
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 279
    return-void

    .line 271
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public registerLaunchedAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 195
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 182
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 9
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 153
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_3

    .line 155
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-eqz v2, :cond_2

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 159
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 160
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 161
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 163
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->detachFromRoot()V

    .line 164
    invoke-static {}, Lcom/android/gallery3d/ui/BasicTexture;->yieldAllTextures()V

    .line 166
    :cond_3
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/GLView;->attachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setLightsOutMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 556
    if-eqz p1, :cond_0

    const/16 v0, 0x105

    .line 561
    .local v0, flags:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 562
    return-void

    .line 556
    .end local v0           #flags:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    .line 522
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .parameter "preserveOnPause"

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 567
    return-void
.end method

.method public setStereoMode(ZZ)V
    .locals 1
    .parameter "mode"
    .parameter "force"

    .prologue
    .line 642
    sget-boolean v0, Lcom/android/gallery3d/ui/GLRootView;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 643
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoMode:Z

    if-ne v0, p1, :cond_0

    .line 654
    :goto_0
    return-void

    .line 646
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoMode:Z

    goto :goto_0

    .line 652
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mStereoMode:Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 577
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 578
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 583
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 584
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 589
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 590
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 550
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 551
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    return-void
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 505
    return-void
.end method
