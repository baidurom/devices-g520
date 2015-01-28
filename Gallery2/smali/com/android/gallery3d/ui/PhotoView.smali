.class public Lcom/android/gallery3d/ui/PhotoView;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcom/android/gallery3d/ui/PhotoView$FullPicture;,
        Lcom/android/gallery3d/ui/PhotoView$Picture;,
        Lcom/android/gallery3d/ui/PhotoView$MyHandler;,
        Lcom/android/gallery3d/ui/PhotoView$Listener;,
        Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;,
        Lcom/android/gallery3d/ui/PhotoView$Model;,
        Lcom/android/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static final CARD_EFFECT:Z = true

.field private static final DEFAULT_TEXT_SIZE:F = 20.0f

.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2

.field private static final HOLD_DELETE:I = 0x4

.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final ICON_RATIO:I = 0x6

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final INVALID_SIZE:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field private static final MAX_DISMISS_VELOCITY:I = 0x7d0

.field private static final MOVE_THRESHOLD:I = 0x100

.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2

.field private static final MSG_CAPTURE_ANIMATION_DONE:I = 0x4

.field private static final MSG_DELETE_ANIMATION_DONE:I = 0x5

.field private static final MSG_DELETE_DONE:I = 0x6

.field private static final MSG_SWITCH_FOCUS:I = 0x3

.field private static final MSG_UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final MSG_UNDO_BAR_TIMEOUT:I = 0x7

.field private static final OFFSET_EFFECT:Z = true

.field private static final PLACEHOLDER_COLOR:I = -0xddddde

.field public static final SCREEN_NAIL_MAX:I = 0x3

.field private static final SWIPE_ESCAPE_VELOCITY:I = 0x1f4

.field private static final SWIPE_THRESHOLD:F = 300.0f

.field private static final TAG:Ljava/lang/String; = "PhotoView"

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field private static final UNDO_BAR_DELETE_LAST:I = 0x10

.field private static final UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final UNDO_BAR_SHOW:I = 0x1

.field private static final UNDO_BAR_TIMEOUT:I = 0x2

.field private static final UNDO_BAR_TOUCHED:I = 0x4


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mDisplayRotation:I

.field private mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

.field private mFilmMode:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mHolding:I

.field private mImageCenter:Landroid/graphics/Point;

.field private mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

.field private mLoadingText:Lcom/android/gallery3d/ui/StringTexture;

.field private mMavOverlay:Lcom/android/gallery3d/ui/Texture;

.field private mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

.field private final mPictures:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositionController:Lcom/android/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private mRenderFullPictureOnly:Z

.field private mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

.field private mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

.field private mStereoMode:Z

.field private mStereoModeAllowed:Z

.field private mStereoModeChangeListener:Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;

.field private mTileView:Lcom/android/gallery3d/ui/TileImageView;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mTypes:[I

.field private mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mValidPositionForStereoMode:Z

.field private mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/PhotoView;->IS_DRM_SUPPORTED:Z

    .line 121
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/PhotoView;->IS_STEREO_DISPLAY_SUPPORTED:Z

    .line 179
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    .line 264
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 52
    new-array v2, v8, [I

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTypes:[I

    .line 189
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    .line 192
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 204
    new-instance v2, Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, -0x3

    invoke-direct {v2, v3, v7}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    .line 206
    new-array v2, v8, [Lcom/android/gallery3d/ui/PhotoView$Size;

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 223
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mImageCenter:Landroid/graphics/Point;

    .line 225
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 226
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 227
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 229
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 230
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 255
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 262
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 2013
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mRenderFullPictureOnly:Z

    .line 265
    new-instance v2, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    .line 266
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 267
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/android/gallery3d/ui/EdgeView;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    .line 269
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 270
    new-instance v2, Lcom/android/gallery3d/ui/UndoBarView;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/UndoBarView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    .line 271
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 272
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/UndoBarView;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$1;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/UndoBarView;->setOnClickListener(Lcom/android/gallery3d/ui/GLView$OnClickListener;)V

    .line 280
    const v2, 0x7f0c01e9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingText:Lcom/android/gallery3d/ui/StringTexture;

    .line 283
    const v2, 0x7f0c01ec

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 287
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$MyHandler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 289
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    .line 290
    new-instance v2, Lcom/android/gallery3d/ui/GestureRecognizer;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    .line 292
    new-instance v2, Lcom/android/gallery3d/ui/PositionController;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$2;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/PositionController;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 313
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f02006b

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    .line 314
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-gt v1, v7, :cond_1

    .line 315
    if-nez v1, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$FullPicture;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 314
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v3, p0, v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 323
    :cond_1
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    const v3, 0x7f02008e

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mMavOverlay:Lcom/android/gallery3d/ui/Texture;

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->canUndoLastPicture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$2500(III)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2800(FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawMavOverlay(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/ui/PhotoView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/ui/PhotoView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$372(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$376(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/GestureRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4
    .parameter "left"
    .parameter "right"
    .parameter "viewWidth"

    .prologue
    .line 1789
    sub-int v0, p1, p0

    .line 1796
    .local v0, w:I
    if-ge v0, p2, :cond_1

    .line 1797
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 1798
    .local v1, zx:I
    if-le p0, v1, :cond_0

    .line 1799
    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1819
    .end local v1           #zx:I
    :goto_0
    return v2

    .line 1801
    .restart local v1       #zx:I
    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 1811
    .end local v1           #zx:I
    :cond_1
    if-lez p0, :cond_2

    .line 1812
    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1815
    :cond_2
    if-ge p1, p2, :cond_3

    .line 1816
    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1819
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private canUndoLastPicture()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1449
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    .line 1763
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1764
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1767
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 1769
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    .line 1770
    return-void
.end method

.method private checkFocusSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1532
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1534
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkHideUndoBar(I)V
    .locals 7
    .parameter "addition"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1433
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1434
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v4

    .line 1436
    .local v2, timeout:Z
    :goto_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v3, v4

    .line 1437
    .local v3, touched:Z
    :goto_2
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    move v1, v4

    .line 1438
    .local v1, fullCamera:Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v0, v4

    .line 1439
    .local v0, deleteLast:Z
    :goto_4
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    .line 1440
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    goto :goto_0

    .end local v0           #deleteLast:Z
    .end local v1           #fullCamera:Z
    .end local v2           #timeout:Z
    .end local v3           #touched:Z
    :cond_4
    move v2, v5

    .line 1435
    goto :goto_1

    .restart local v2       #timeout:Z
    :cond_5
    move v3, v5

    .line 1436
    goto :goto_2

    .restart local v3       #touched:Z
    :cond_6
    move v1, v5

    .line 1437
    goto :goto_3

    .restart local v1       #fullCamera:Z
    :cond_7
    move v0, v5

    .line 1438
    goto :goto_4
.end method

.method private drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 1000
    .local v0, m:Lcom/android/gallery3d/ui/StringTexture;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 1001
    return-void
.end method

.method private drawMavOverlay(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 1976
    div-int/lit8 v4, p2, 0x6

    .line 1978
    .local v4, s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mMavOverlay:Lcom/android/gallery3d/ui/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 1979
    return-void
.end method

.method private drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 987
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    const v5, -0xddddde

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 988
    return-void
.end method

.method private drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 992
    div-int/lit8 v4, p2, 0x6

    .line 994
    .local v4, s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 995
    return-void
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 1684
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 571
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOffsetAlpha(F)F
    .locals 3
    .parameter "offset"

    .prologue
    const/high16 v2, 0x3f80

    .line 1867
    const/high16 v1, 0x3f00

    div-float/2addr p1, v1

    .line 1868
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    .line 1869
    .local v0, alpha:F
    :goto_0
    const v1, 0x3cf5c28f

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    .line 1868
    .end local v0           #alpha:F
    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    return v0
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 1004
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3
    .parameter "scrollProgress"

    .prologue
    const/high16 v0, 0x3f80

    .line 1825
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getScrollScale(F)F
    .locals 4
    .parameter "scrollProgress"

    .prologue
    .line 1832
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1834
    .local v0, interpolatedProgress:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    sget v3, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 1836
    .local v1, scale:F
    return v1
.end method

.method private hideUndoBar()V
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1418
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1419
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1420
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1421
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 1422
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 1
    .parameter "ratio"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1861
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private mtkPostRender()V
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getStereoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mValidPositionForStereoMode:Z

    .line 1959
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mValidPositionForStereoMode:Z

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 1960
    return-void
.end method

.method private setFilmMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1354
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-ne v0, p1, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 1356
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->setFilmMode(Z)V

    .line 1357
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1358
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1360
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-nez p1, :cond_4

    :goto_3
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1363
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->lockOrientation()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1357
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1358
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1360
    goto :goto_3
.end method

.method private setPictureSize(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 479
    .local v0, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSubType()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/gallery3d/ui/PositionController;->setImageSubType(II)V

    .line 481
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/gallery3d/ui/PositionController;->setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    .line 483
    return-void

    .line 481
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUndoBar(Z)V
    .locals 4
    .parameter "deleteLast"

    .prologue
    const/4 v3, 0x7

    .line 1409
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1410
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1411
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1413
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1414
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 1

    .prologue
    .line 1670
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 1673
    :goto_0
    return v0

    .line 1671
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1672
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1673
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 1

    .prologue
    .line 1677
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 1680
    :goto_0
    return v0

    .line 1678
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    .line 1679
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1680
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1653
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 1666
    :cond_0
    :goto_0
    return v3

    .line 1655
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1656
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    .line 1657
    .local v2, viewW:I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v2}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v4

    add-int/lit16 v1, v4, 0x100

    .line 1660
    .local v1, threshold:I
    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v4

    if-le v4, v1, :cond_2

    .line 1661
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 1662
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-le v4, v1, :cond_0

    .line 1663
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private snapback()V
    .locals 1

    .prologue
    .line 1646
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1647
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->snapback()V

    goto :goto_0
.end method

.method private swipeImages(FF)Z
    .locals 6
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1620
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return v3

    .line 1624
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 1625
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 1626
    .local v2, isMinimal:Z
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    .line 1627
    .local v1, edges:I
    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1628
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 1634
    :cond_2
    const/high16 v4, -0x3c6a

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    if-nez v2, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 1636
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 1637
    :cond_4
    const/high16 v4, 0x4396

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    if-nez v2, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 1639
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 1

    .prologue
    .line 1541
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    .line 1550
    :goto_0
    return-void

    .line 1542
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1544
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 1547
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 1542
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1555
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1556
    .local v1, curr:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 1558
    .local v0, center:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_0

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_0

    .line 1559
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1560
    .local v5, prev:Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    .line 1561
    .local v2, currDist:I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    .line 1562
    .local v6, prevDist:I
    if-ge v6, v2, :cond_1

    .line 1574
    .end local v2           #currDist:I
    .end local v5           #prev:Landroid/graphics/Rect;
    .end local v6           #prevDist:I
    :goto_0
    return v7

    .line 1565
    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_1

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v7, :cond_1

    .line 1566
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1567
    .local v3, next:Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 1568
    .restart local v2       #currDist:I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    .line 1569
    .local v4, nextDist:I
    if-ge v4, v2, :cond_1

    move v7, v8

    .line 1570
    goto :goto_0

    .end local v2           #currDist:I
    .end local v3           #next:Landroid/graphics/Rect;
    .end local v4           #nextDist:I
    :cond_1
    move v7, v9

    .line 1574
    goto :goto_0
.end method

.method private switchToFirstImage()V
    .locals 2

    .prologue
    .line 1702
    const-string v0, "PhotoView"

    const-string v1, "switchToFirstImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1704
    return-void
.end method

.method private switchToHitPicture(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1580
    const-string v5, "PhotoView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchToHitPicture: x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v5, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->hitTestIgnoreVertical(II)I

    move-result v2

    .line 1598
    .local v2, hitIndex:I
    const-string v5, "PhotoView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchToHitPicture: hit test result index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const v5, 0x7fffffff

    if-ne v2, v5, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    .line 1603
    .local v1, curIndex:I
    if-gez v2, :cond_2

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v5, :cond_2

    move v0, v3

    .line 1604
    .local v0, canSwitch:Z
    :goto_1
    if-lez v2, :cond_3

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v5, :cond_3

    :goto_2
    or-int/2addr v0, v3

    .line 1605
    if-eqz v0, :cond_0

    .line 1606
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    add-int v4, v1, v2

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1607
    const-string v3, "PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchToHitPicture: move to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #canSwitch:Z
    :cond_2
    move v0, v4

    .line 1603
    goto :goto_1

    .restart local v0       #canSwitch:Z
    :cond_3
    move v3, v4

    .line 1604
    goto :goto_2
.end method

.method private switchToNextImage()V
    .locals 2

    .prologue
    .line 1692
    const-string v0, "PhotoView"

    const-string v1, "switchToNextImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1694
    return-void
.end method

.method private switchToPrevImage()V
    .locals 2

    .prologue
    .line 1697
    const-string v0, "PhotoView"

    const-string v1, "switchToPrevImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1699
    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1729
    const-string v3, "PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchWithCaptureAnimationLocked: offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", holding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const-string v3, "PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchWithCaptureAnimationLocked: prevbound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nextbound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 1759
    :goto_0
    return v1

    .line 1732
    :cond_0
    if-ne p1, v1, :cond_3

    .line 1733
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1735
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1736
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1737
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    .line 1756
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1757
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1758
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1738
    .end local v0           #m:Landroid/os/Message;
    :cond_3
    if-ne p1, v6, :cond_7

    .line 1739
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 1740
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1745
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 1746
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1747
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 1751
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1752
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 1754
    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 12

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v6

    .line 527
    .local v6, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    .line 528
    .local v1, h:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 529
    move v5, v6

    .line 530
    .local v5, tmp:I
    move v6, v1

    .line 531
    move v1, v5

    .line 533
    .end local v5           #tmp:I
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 534
    .local v2, l:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 535
    .local v4, t:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 536
    .local v3, r:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 539
    .local v0, b:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    sparse-switch v7, :sswitch_data_0

    .line 546
    :goto_0
    const-string v7, "PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compensation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CameraRelativeFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCameraRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void

    .line 540
    :sswitch_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 541
    :sswitch_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 542
    :sswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 543
    :sswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 539
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public allowStereoMode(Z)V
    .locals 4
    .parameter "stereoModeAllowed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1916
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-ne v0, p1, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1919
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    .line 1921
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1924
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0, v2}, Lcom/android/gallery3d/ui/GLRoot;->setStereoMode(ZZ)V

    .line 1925
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeChangeListener:Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;->onChangedToStereoMode(Z)V

    .line 1927
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1924
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1925
    goto :goto_2
.end method

.method public buildFallbackEffect(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 13
    .parameter "root"
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1885
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1886
    .local v10, location:Landroid/graphics/Rect;
    invoke-virtual {p1, p0, v10}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1888
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1889
    .local v7, fullRect:Landroid/graphics/Rect;
    new-instance v6, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {v6}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    .line 1890
    .local v6, effect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    const/4 v8, -0x3

    .local v8, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v8, v1, :cond_2

    .line 1891
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v8}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    .line 1892
    .local v9, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v9, :cond_1

    .line 1890
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1893
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v8}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    .line 1894
    .local v0, sc:Lcom/android/gallery3d/ui/ScreenNail;
    instance-of v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isShowingPlaceholder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1898
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/ui/PhotoView;->getPhotoRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1899
    .local v11, rect:Landroid/graphics/Rect;
    invoke-static {v7, v11}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1900
    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1902
    new-instance v12, Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v12, v1, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 1903
    .local v12, texture:Lcom/android/gallery3d/ui/RawTexture;
    invoke-interface {p2, v12}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 1904
    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v4

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v5

    move-object v1, p2

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 1905
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 1906
    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v6, v1, v11, v12}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->addEntry(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;)V

    goto :goto_1

    .line 1908
    .end local v0           #sc:Lcom/android/gallery3d/ui/ScreenNail;
    .end local v9           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v11           #rect:Landroid/graphics/Rect;
    .end local v12           #texture:Lcom/android/gallery3d/ui/RawTexture;
    :cond_2
    return-object v6
.end method

.method public enterCameraPreview()V
    .locals 2

    .prologue
    .line 1999
    const-string v0, "PhotoView"

    const-string v1, "enterCameraPreview: lights out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/PhotoView$4;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2011
    return-void
.end method

.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStereoMode()Z
    .locals 1

    .prologue
    .line 1954
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    return v0
.end method

.method public isDeleting()Z
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstBoxReady()Z
    .locals 1

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isFirstAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveCameraPreview()V
    .locals 3

    .prologue
    .line 1985
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/PhotoView$3;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1993
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(ZI)V

    .line 1996
    :cond_0
    return-void
.end method

.method public notifyDataChange([III)V
    .locals 14
    .parameter "fromIndex"
    .parameter "prevBound"
    .parameter "nextBound"

    .prologue
    .line 407
    move/from16 v0, p2

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 408
    move/from16 v0, p3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    .line 411
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 412
    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 413
    .local v10, k:I
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 414
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v8, v1, :cond_0

    .line 415
    aget v1, p1, v8

    if-ne v1, v10, :cond_2

    .line 416
    add-int/lit8 v1, v8, -0x3

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 423
    .end local v8           #i:I
    .end local v10           #k:I
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 424
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 430
    :cond_1
    const/4 v8, -0x3

    .restart local v8       #i:I
    :goto_1
    const/4 v1, 0x3

    if-gt v8, v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 432
    .local v12, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v12}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 433
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v2, v8, 0x3

    invoke-interface {v12}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    aput-object v3, v1, v2

    .line 434
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTypes:[I

    add-int/lit8 v2, v8, 0x3

    invoke-interface {v12}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSubType()I

    move-result v3

    aput v3, v1, v2

    .line 430
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 414
    .end local v12           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    .restart local v10       #k:I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 437
    .end local v10           #k:I
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v13

    .line 440
    .local v13, wasDeleting:Z
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v2, :cond_4

    const/4 v3, 0x1

    :goto_2
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v2, :cond_5

    const/4 v4, 0x1

    :goto_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTypes:[I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;[I)V

    .line 443
    const/4 v8, -0x3

    :goto_4
    const/4 v1, 0x3

    if-gt v8, v1, :cond_6

    .line 444
    invoke-direct {p0, v8}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 443
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 440
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 447
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v9

    .line 451
    .local v9, isDeleting:Z
    if-eqz v13, :cond_7

    if-nez v9, :cond_7

    .line 452
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 454
    .local v11, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v11, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 458
    .end local v11           #m:Landroid/os/Message;
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 459
    return-void
.end method

.method public notifyImageChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 467
    if-nez p1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 471
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 472
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 473
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 488
    sub-int v6, p4, p2

    .line 489
    .local v6, w:I
    sub-int v2, p5, p3

    .line 490
    .local v2, h:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 491
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 492
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v7, v9, v9}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 493
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {v7, v9, v8, v6, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 495
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    .line 496
    .local v5, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 497
    .local v1, displayRotation:I
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    .line 498
    .local v0, compensation:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-ne v7, v1, :cond_0

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    if-eq v7, v0, :cond_2

    .line 500
    :cond_0
    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 501
    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 506
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v7, 0x3

    if-gt v3, v7, :cond_2

    .line 507
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v7, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 508
    .local v4, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 509
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->forceSize()V

    .line 506
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 514
    .end local v3           #i:I
    .end local v4           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 515
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    .line 516
    if-eqz p1, :cond_3

    .line 517
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/ui/PositionController;->setViewSize(II)V

    .line 519
    :cond_3
    return-void
.end method

.method public onResetZoomedState()Z
    .locals 3

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 1967
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v1

    .line 1968
    .local v1, scale:F
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    .line 1970
    const/4 v2, 0x1

    return v2
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1014
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1377
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 1378
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 1379
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1382
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 1383
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1465
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v0

    .line 1466
    .local v0, center:Z
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v5

    .line 1467
    .local v5, minimalScale:Z
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    move v1, v10

    .line 1468
    .local v1, full:Z
    :goto_0
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v1, v9, :cond_2

    .line 1469
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    .line 1472
    const/4 v8, 0x0

    .line 1473
    .local v8, type:I
    if-eqz v0, :cond_0

    .line 1474
    or-int/lit8 v8, v8, 0x2

    .line 1476
    :cond_0
    if-eqz v5, :cond_1

    .line 1477
    or-int/lit8 v8, v8, 0x1

    .line 1479
    :cond_1
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v9, v1, v8}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(ZI)V

    .line 1481
    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1486
    .end local v8           #type:I
    :cond_2
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mRenderFullPictureOnly:Z

    if-eqz v9, :cond_4

    .line 1487
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 1488
    .local v7, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v9, p1, v7}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1524
    .end local v7           #r:Landroid/graphics/Rect;
    :goto_1
    return-void

    .end local v1           #full:Z
    :cond_3
    move v1, v11

    .line 1467
    goto :goto_0

    .line 1495
    .restart local v1       #full:Z
    :cond_4
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v9, :cond_5

    .line 1496
    const/4 v6, 0x0

    .line 1511
    .local v6, neighbors:I
    :goto_2
    move v2, v6

    .local v2, i:I
    :goto_3
    neg-int v9, v6

    if-lt v2, v9, :cond_9

    .line 1512
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 1513
    .restart local v7       #r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v9, p1, v7}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1511
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1500
    .end local v2           #i:I
    .end local v6           #neighbors:I
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v9

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-nez v9, :cond_6

    move v4, v10

    .line 1501
    .local v4, inPageMode:Z
    :goto_4
    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_7

    move v3, v10

    .line 1503
    .local v3, inCaptureAnimation:Z
    :goto_5
    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    .line 1504
    const/4 v6, 0x1

    .restart local v6       #neighbors:I
    goto :goto_2

    .end local v3           #inCaptureAnimation:Z
    .end local v4           #inPageMode:Z
    .end local v6           #neighbors:I
    :cond_6
    move v4, v11

    .line 1500
    goto :goto_4

    .restart local v4       #inPageMode:Z
    :cond_7
    move v3, v11

    .line 1501
    goto :goto_5

    .line 1506
    .restart local v3       #inCaptureAnimation:Z
    :cond_8
    const/4 v6, 0x3

    .restart local v6       #neighbors:I
    goto :goto_2

    .line 1516
    .end local v3           #inCaptureAnimation:Z
    .end local v4           #inPageMode:Z
    .restart local v2       #i:I
    :cond_9
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, p1, v9}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1517
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, p1, v9}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1519
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->advanceAnimation()V

    .line 1520
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->checkFocusSwitching()V

    .line 1523
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->mtkPostRender()V

    goto :goto_1
.end method

.method public renderFullPictureOnly(Z)V
    .locals 0
    .parameter "fullPictureOnly"

    .prologue
    .line 2016
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mRenderFullPictureOnly:Z

    .line 2017
    return-void
.end method

.method public resetToFirstPicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1391
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1392
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1393
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 1387
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 553
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 565
    return-void
.end method

.method public setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer;->setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    .line 1878
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 328
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 329
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 1712
    return-void
.end method

.method public setStereoMode(Z)V
    .locals 4
    .parameter "stereoMode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1931
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez v0, :cond_1

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1934
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mValidPositionForStereoMode:Z

    if-nez v0, :cond_3

    .line 1937
    :cond_2
    const/4 p1, 0x0

    .line 1939
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eq v0, p1, :cond_0

    .line 1942
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    .line 1944
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1947
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0, v2}, Lcom/android/gallery3d/ui/GLRoot;->setStereoMode(ZZ)V

    .line 1948
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeChangeListener:Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeAllowed:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoMode:Z

    if-eqz v3, :cond_5

    :goto_2
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;->onChangedToStereoMode(Z)V

    .line 1950
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1947
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1948
    goto :goto_2
.end method

.method public setStereoModeChangeListener(Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;)V
    .locals 0
    .parameter "stereoListener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mStereoModeChangeListener:Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;

    .line 132
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1347
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 1719
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1720
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1722
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1724
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
