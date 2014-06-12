.class public Lcom/android/gallery3d/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PositionController$1;,
        Lcom/android/gallery3d/ui/PositionController$FilmRatio;,
        Lcom/android/gallery3d/ui/PositionController$Gap;,
        Lcom/android/gallery3d/ui/PositionController$Box;,
        Lcom/android/gallery3d/ui/PositionController$Platform;,
        Lcom/android/gallery3d/ui/PositionController$Animatable;,
        Lcom/android/gallery3d/ui/PositionController$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_KIND_CAPTURE:I = 0x9

.field private static final ANIM_KIND_DELETE:I = 0x8

.field private static final ANIM_KIND_FLING:I = 0x6

.field private static final ANIM_KIND_FLING_X:I = 0x7

.field private static final ANIM_KIND_NONE:I = -0x1

.field private static final ANIM_KIND_OPENING:I = 0x5

.field private static final ANIM_KIND_SCALE:I = 0x1

.field private static final ANIM_KIND_SCROLL:I = 0x0

.field private static final ANIM_KIND_SLIDE:I = 0x3

.field private static final ANIM_KIND_SNAPBACK:I = 0x2

.field private static final ANIM_KIND_ZOOM:I = 0x4

.field private static final ANIM_TIME:[I = null

.field private static final BOX_MAX:I = 0x3

.field public static final CAPTURE_ANIMATION_TIME:I = 0x2bc

.field private static final CENTER_OUT_INDEX:[I = null

.field private static final DEFAULT_DELETE_ANIMATION_DURATION:I = 0xc8

.field private static final FILM_MODE_LANDSCAPE_HEIGHT:F = 0.7f

.field private static final FILM_MODE_LANDSCAPE_WIDTH:F = 0.7f

.field private static final FILM_MODE_PORTRAIT_HEIGHT:F = 0.48f

.field private static final FILM_MODE_PORTRAIT_WIDTH:F = 0.7f

#the value of this static final field might be set in the static constructor
.field private static final HORIZONTAL_SLACK:I = 0x0

.field public static final IMAGE_AT_BOTTOM_EDGE:I = 0x8

.field public static final IMAGE_AT_LEFT_EDGE:I = 0x1

.field public static final IMAGE_AT_RIGHT_EDGE:I = 0x2

.field public static final IMAGE_AT_TOP_EDGE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_GAP:I = 0x0

.field private static final LAST_ANIMATION:J = -0x2L

.field private static final MAX_DELETE_ANIMATION_DURATION:I = 0x190

.field private static final NO_ANIMATION:J = -0x1L

.field private static final SCALE_LIMIT:F = 4.0f

.field private static final SCALE_MAX_EXTRA:F = 1.4f

.field private static final SCALE_MIN_EXTRA:F = 0.7f

.field public static final SNAPBACK_ANIMATION_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "PositionController"

.field public static sLastBoxAnimationTime:J


# instance fields
.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private mConstrainedFrame:Landroid/graphics/Rect;

.field private mExtraScalingRange:Z

.field private mFilmMode:Z

.field private mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

.field private mFilmScroller:Landroid/widget/OverScroller;

.field private mFocusX:F

.field private mFocusY:F

.field private mGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mInScale:Z

.field private mLastScale:F

.field private mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;

.field private mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

.field private mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

.field mPopFromTop:Z

.field private mRects:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mStereoMode:Z

.field private mTempBoxes:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mTempGaps:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 66
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    .line 104
    const/4 v2, 0x7

    new-array v2, v2, [I

    sput-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    .line 106
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 107
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 211
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v1, v2, 0x2

    .line 212
    .local v1, j:I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    neg-int v1, v1

    .line 213
    :cond_0
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aput v1, v2, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1941
    .end local v1           #j:I
    :cond_1
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/gallery3d/ui/PositionController;->sLastBoxAnimationTime:J

    return-void

    .line 66
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, -0x3

    .line 217
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 93
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 117
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 118
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 172
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Platform;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 173
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 176
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 177
    new-instance v1, Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    .line 180
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 181
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    .line 185
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    .line 1934
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    .line 218
    iput-object p2, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    .line 219
    new-instance v1, Lcom/android/gallery3d/ui/FlingScroller;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/FlingScroller;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    .line 220
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1, v4, v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    .line 224
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 225
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Box;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 227
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 228
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v3, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/ui/PositionController$Gap;-><init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 232
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/android/gallery3d/ui/PositionController;->HORIZONTAL_SLACK:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PositionController;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    return v0
.end method

.method static synthetic access$2400()[I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/ui/PositionController;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PositionController;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PositionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PositionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PositionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method private calculateStableBound(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1433
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V

    .line 1434
    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 6
    .parameter "scale"
    .parameter "horizontalSlack"

    .prologue
    const/4 v5, 0x0

    .line 1408
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1411
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v2

    .line 1412
    .local v2, w:I
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v1

    .line 1415
    .local v1, h:I
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1416
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 1417
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1418
    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    .line 1422
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1423
    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    iput v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    .line 1427
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1428
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    .line 1430
    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 589
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 590
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 597
    :goto_0
    :sswitch_0
    return v1

    .line 591
    :cond_0
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 597
    goto :goto_0

    .line 591
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private convertBoxToRect(I)V
    .locals 11
    .parameter "i"

    .prologue
    const/high16 v10, 0x4000

    .line 929
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 930
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 931
    .local v4, r:Landroid/graphics/Rect;
    iget v8, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v9, v9, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 932
    .local v7, y:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v5

    .line 933
    .local v5, w:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 934
    .local v3, h:I
    if-nez p1, :cond_0

    .line 935
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v8, v8, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 938
    .local v6, x:I
    int-to-float v8, v5

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int v8, v6, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 940
    mul-int/lit8 v8, v6, 0x2

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 955
    .end local v6           #x:I
    :goto_0
    int-to-float v8, v3

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int v8, v7, v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 956
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 957
    return-void

    .line 942
    :cond_0
    if-lez p1, :cond_1

    .line 943
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 944
    .local v0, a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 945
    .local v2, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 946
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 948
    .end local v0           #a:Landroid/graphics/Rect;
    .end local v2           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 949
    .restart local v0       #a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 950
    .restart local v2       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 951
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private debugMoveBox([I)V
    .locals 5
    .parameter "fromIndex"

    .prologue
    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveBox:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1027
    aget v1, p1, v0

    .line 1028
    .local v1, j:I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 1029
    const-string v3, " N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1031
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1035
    .end local v1           #j:I
    :cond_1
    const-string v3, "PositionController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return-void
.end method

.method private dumpRect(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 915
    .local v0, r:Landroid/graphics/Rect;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 918
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 920
    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 924
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    const-string v2, "PositionController"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 895
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 896
    const-string v3, "PositionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gap "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Gap;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 900
    sget-object v2, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PositionController;->dumpRect(I)V

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 903
    :cond_1
    const/4 v0, -0x3

    :goto_2
    if-gt v0, v5, :cond_4

    .line 904
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_3
    if-gt v1, v5, :cond_3

    .line 905
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 906
    const-string v2, "PositionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "intersects!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 903
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 910
    .end local v1           #j:I
    :cond_4
    return-void
.end method

.method private gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 3
    .parameter "b"

    .prologue
    .line 448
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iget v2, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDefaultGapSize(I)I
    .locals 5
    .parameter "i"

    .prologue
    .line 429
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    .line 432
    :goto_0
    return v2

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 431
    .local v0, a:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 432
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    sget v2, Lcom/android/gallery3d/ui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->gapToSide(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 1
    .parameter "b"

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    .line 1383
    :goto_0
    return v0

    .line 1379
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    goto :goto_0

    .line 1380
    :cond_1
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->doesMaxEqualMin(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1381
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v0

    goto :goto_0

    .line 1383
    :cond_2
    const/high16 v0, 0x4080

    goto :goto_0
.end method

.method private getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 13
    .parameter "b"

    .prologue
    const/high16 v3, 0x4080

    .line 1338
    const/high16 v7, 0x3f80

    .line 1339
    .local v7, wFactor:F
    const/high16 v0, 0x3f80

    .line 1342
    .local v0, hFactor:F
    iget-boolean v8, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 1344
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1345
    .local v6, viewW:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1351
    .local v5, viewH:I
    :goto_0
    iget-boolean v8, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v8, :cond_0

    .line 1352
    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget v9, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-le v8, v9, :cond_3

    .line 1353
    const v7, 0x3f333333

    .line 1354
    const v0, 0x3ef5c28f

    .line 1361
    :cond_0
    :goto_1
    iget v8, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    if-eqz v8, :cond_4

    .line 1363
    int-to-float v8, v6

    mul-float/2addr v8, v7

    int-to-float v9, v5

    mul-float/2addr v9, v0

    iget v10, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    iget v11, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    iget v12, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    invoke-static {v8, v9, v10, v11, v12}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMinimalScale(FFIII)F

    move-result v2

    .line 1365
    .local v2, scale:F
    iget v8, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    invoke-static {v8}, Lcom/mediatek/gallery3d/util/MediatekFeature;->minScaleLimit(I)F

    move-result v4

    .line 1366
    .local v4, tempScaleLimit:F
    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    move v3, v4

    .line 1368
    .local v3, scaleLimit:F
    :cond_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1374
    .end local v2           #scale:F
    .end local v3           #scaleLimit:F
    .end local v4           #tempScaleLimit:F
    :goto_2
    return v8

    .line 1347
    .end local v5           #viewH:I
    .end local v6           #viewW:I
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 1348
    .restart local v6       #viewW:I
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .restart local v5       #viewH:I
    goto :goto_0

    .line 1356
    :cond_3
    const v7, 0x3f333333

    .line 1357
    const v0, 0x3f333333

    goto :goto_1

    .line 1371
    :cond_4
    int-to-float v8, v6

    mul-float/2addr v8, v7

    iget v9, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v9, v0

    iget v10, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1374
    .local v1, s:F
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    goto :goto_2
.end method

.method private getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F
    .locals 4
    .parameter "b"

    .prologue
    .line 1445
    iget-wide v0, p1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 869
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 879
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBox(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 978
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 979
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 980
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 981
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 982
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 983
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 984
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 985
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 986
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 987
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    .line 988
    return-void
.end method

.method private initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 992
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 993
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->initBox(I)V

    .line 1006
    :goto_0
    return-void

    .line 996
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 997
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 998
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 999
    iput-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 1000
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 1001
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 1002
    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 1003
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 1004
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1005
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    goto :goto_0
.end method

.method private initGap(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1012
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1013
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1014
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1015
    return-void
.end method

.method private initGap(II)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1019
    .local v0, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 1020
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 1021
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1022
    return-void
.end method

.method private initPlatform()V
    .locals 3

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 971
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 972
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 973
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 974
    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1387
    sub-float v0, p0, p1

    .line 1388
    .local v0, diff:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    .end local v0           #diff:F
    :cond_0
    const v1, 0x3ca3d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutAndSetPosition()V
    .locals 2

    .prologue
    .line 888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 889
    sget-object v1, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->convertBoxToRect(I)V

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    :cond_0
    return-void
.end method

.method private mtkPostAdvanceAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1951
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1952
    .local v0, currentBox:Lcom/android/gallery3d/ui/PositionController$Box;
    if-nez v0, :cond_1

    .line 1953
    const-string v1, "PositionController"

    const-string v2, "mtkPostAdvanceAnimation:why we got a null current box!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_0
    :goto_0
    return-void

    .line 1956
    :cond_1
    iget-wide v1, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1958
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/gallery3d/ui/PositionController;->sLastBoxAnimationTime:J

    .line 1963
    :cond_2
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    .line 1964
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    invoke-static {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->doesMaxEqualMin(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1965
    :cond_3
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    goto :goto_0

    .line 1967
    :cond_4
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    goto :goto_0

    .line 1969
    :cond_5
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 1970
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3f847ae147ae147bL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1972
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    goto :goto_0

    .line 1975
    :cond_6
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    goto :goto_0
.end method

.method private mtkPostStartAnimation(IIFI)V
    .locals 2
    .parameter "targetX"
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 1945
    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    .line 1946
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/gallery3d/ui/PositionController;->sLastBoxAnimationTime:J

    .line 1948
    :cond_0
    return-void
.end method

.method private redraw()V
    .locals 1

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 802
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PositionController$Listener;->invalidate()V

    .line 803
    return-void
.end method

.method private setBoxSize(IIIZ)Z
    .locals 5
    .parameter "i"
    .parameter "width"
    .parameter "height"
    .parameter "isViewSize"

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 316
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 319
    .local v2, wasViewSize:Z
    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v3

    .line 321
    :cond_1
    iput-boolean p4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    .line 323
    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    if-ne p2, v4, :cond_2

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    if-ne p3, v4, :cond_2

    .line 324
    iget-boolean v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubTypeChanged:Z

    if-eqz v4, :cond_0

    .line 327
    iput-boolean v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubTypeChanged:Z

    .line 338
    :cond_2
    if-le p2, p3, :cond_4

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float v1, v3, v4

    .line 342
    .local v1, ratio:F
    :goto_1
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 343
    iput p3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    .line 348
    if-eqz v2, :cond_5

    if-nez p4, :cond_5

    .line 349
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 350
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 357
    :goto_2
    if-nez p1, :cond_3

    .line 358
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 359
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 362
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 338
    .end local v1           #ratio:F
    :cond_4
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float v1, v3, v4

    goto :goto_1

    .line 352
    .restart local v1       #ratio:F
    :cond_5
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 353
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    .line 354
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    goto :goto_2
.end method

.method private snapAndRedraw()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 806
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Platform;->startSnapback()Z

    .line 807
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Box;->startSnapback()Z

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v2, :cond_1

    .line 811
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$Gap;->startSnapback()Z

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->startSnapback()Z

    .line 814
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 815
    return-void
.end method

.method private startAnimation(IIFI)Z
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v1, p1, v2, p4}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    move-result v1

    or-int/2addr v0, v1

    .line 821
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, p2, p3, p4}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v1

    or-int/2addr v0, v1

    .line 822
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 825
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/PositionController;->mtkPostStartAnimation(IIFI)V

    .line 827
    return v0
.end method

.method private startOpeningAnimationIfNeeded()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 366
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v4

    .line 367
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 368
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-boolean v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mUseViewSize:Z

    if-nez v6, :cond_0

    .line 371
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 372
    .local v3, r:Landroid/graphics/Rect;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 374
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 375
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 376
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 378
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v6, v6, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v6, v4, v7, v9}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 383
    const/4 v2, -0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 384
    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 385
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iput v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 386
    iget v4, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v4, v9}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_2
    move v4, v5

    .line 389
    goto :goto_0
.end method

.method private updateScaleAndGapLimit()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 414
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v4, :cond_0

    .line 415
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 416
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMinimalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    .line 417
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getMaximalScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 420
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_0
    const/4 v2, -0x3

    :goto_1
    if-ge v2, v4, :cond_1

    .line 421
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 422
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 424
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_1
    return-void
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1437
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1441
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 864
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private widthOf(Lcom/android/gallery3d/ui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 874
    iget v0, p1, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public advanceAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, changed:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    .line 834
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-gt v1, v4, :cond_0

    .line 835
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController$Box;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 837
    :cond_0
    const/4 v1, -0x3

    :goto_1
    if-ge v1, v4, :cond_1

    .line 838
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Gap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 840
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    move-result v3

    or-int/2addr v0, v3

    .line 843
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->mtkPostAdvanceAnimation()V

    .line 845
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    .end local v1           #i:I
    :cond_2
    :goto_2
    return-void

    .line 846
    :catch_0
    move-exception v2

    .line 847
    .local v2, t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public beginScale(FF)V
    .locals 5
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v4, 0x3f00

    .line 524
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 525
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 526
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 527
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 528
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 529
    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    .line 530
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    .line 531
    return-void
.end method

.method public endScale()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mInScale:Z

    .line 560
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 561
    return-void
.end method

.method public flingFilmX(I)Z
    .locals 13
    .parameter "velocityX"

    .prologue
    const/4 v2, 0x0

    .line 715
    if-nez p1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v2

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 718
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 721
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v10, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 722
    .local v10, defaultX:I
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v0, :cond_2

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ge v0, v10, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v0, :cond_3

    iget v0, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-le v0, v10, :cond_0

    .line 727
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    const/high16 v5, -0x8000

    const v6, 0x7fffffff

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 729
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v12

    .line 730
    .local v12, targetX:I
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v1, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v2, 0x7

    invoke-direct {p0, v12, v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v2

    goto :goto_0
.end method

.method public flingFilmY(II)I
    .locals 8
    .parameter "boxIndex"
    .parameter "velocityY"

    .prologue
    const/16 v7, 0x8

    .line 738
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 741
    .local v1, b:Lcom/android/gallery3d/ui/PositionController$Box;
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v3

    .line 743
    .local v3, h:I
    const/4 v0, 0x3

    .line 744
    .local v0, FUZZY:I
    if-ltz p2, :cond_0

    if-nez p2, :cond_1

    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-gtz v5, :cond_1

    .line 745
    :cond_0
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v3, 0x1

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sub-int v4, v5, v0

    .line 752
    .local v4, targetY:I
    :goto_0
    if-eqz p2, :cond_2

    .line 753
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 755
    .local v2, duration:I
    const/16 v5, 0x190

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 761
    :goto_1
    sget-object v5, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    aput v2, v5, v7

    .line 762
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, v4, v5, v7}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 763
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 766
    .end local v2           #duration:I
    :goto_2
    return v2

    .line 747
    .end local v4           #targetY:I
    :cond_1
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int v4, v5, v0

    .restart local v4       #targetY:I
    goto :goto_0

    .line 757
    :cond_2
    const/16 v2, 0xc8

    .restart local v2       #duration:I
    goto :goto_1

    .line 766
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public flingPage(II)Z
    .locals 14
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 684
    .local v9, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v11, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 687
    .local v11, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const/4 v0, 0x0

    .line 711
    :goto_0
    return v0

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v10

    .line 695
    .local v10, edges:I
    if-lez p1, :cond_1

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_3

    .line 697
    :cond_2
    const/4 p1, 0x0

    .line 699
    :cond_3
    if-lez p2, :cond_4

    and-int/lit8 v0, v10, 0x4

    if-nez v0, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_6

    .line 701
    :cond_5
    const/16 p2, 0x0

    .line 704
    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    .line 706
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    iget v1, v11, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/FlingScroller;->fling(IIIIIIII)V

    .line 708
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalX()I

    move-result v12

    .line 709
    .local v12, targetX:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FlingScroller;->getFinalY()I

    move-result v13

    .line 710
    .local v13, targetY:I
    sget-object v0, Lcom/android/gallery3d/ui/PositionController;->ANIM_TIME:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FlingScroller;->getDuration()I

    move-result v2

    aput v2, v0, v1

    .line 711
    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v1, 0x6

    invoke-direct {p0, v12, v13, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    move-result v0

    goto :goto_0
.end method

.method public forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 2
    .parameter "index"
    .parameter "s"

    .prologue
    .line 280
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 282
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    .line 283
    iget v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    goto :goto_0
.end method

.method public getFilmRatio()F
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmRatio:Lcom/android/gallery3d/ui/PositionController$FilmRatio;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    return v0
.end method

.method public getImageAtEdges()I
    .locals 5

    .prologue
    .line 1286
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1287
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 1288
    .local v2, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 1289
    const/4 v1, 0x0

    .line 1290
    .local v1, edges:I
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    .line 1291
    or-int/lit8 v1, v1, 0x2

    .line 1293
    :cond_0
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-lt v3, v4, :cond_1

    .line 1294
    or-int/lit8 v1, v1, 0x1

    .line 1296
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-gt v3, v4, :cond_2

    .line 1297
    or-int/lit8 v1, v1, 0x8

    .line 1299
    :cond_2
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-lt v3, v4, :cond_3

    .line 1300
    or-int/lit8 v1, v1, 0x4

    .line 1302
    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 3

    .prologue
    .line 1268
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1269
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageH:I

    return v1
.end method

.method public getImageScale()F
    .locals 3

    .prologue
    .line 1277
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1278
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    if-eqz v0, :cond_0

    .line 1279
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController;->mLastScale:F

    .line 1281
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController;->mLastScale:F

    return v1
.end method

.method public getImageWidth()I
    .locals 3

    .prologue
    .line 1263
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1264
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mImageW:I

    return v1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStereoMode()Z
    .locals 1

    .prologue
    .line 1937
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mStereoMode:Z

    return v0
.end method

.method public hasDeletingBox()Z
    .locals 3

    .prologue
    .line 1325
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 1326
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1327
    const/4 v1, 0x1

    .line 1330
    :goto_1
    return v1

    .line 1325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1330
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hitTest(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 774
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 775
    sget-object v3, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v3, v0

    .line 776
    .local v1, j:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 777
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 782
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :goto_1
    return v1

    .line 774
    .restart local v1       #j:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public hitTestIgnoreVertical(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1982
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 1983
    sget-object v3, Lcom/android/gallery3d/ui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v3, v0

    .line 1984
    .local v1, j:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1985
    .local v2, r:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-lt p1, v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-gt p1, v3, :cond_0

    .line 1990
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :goto_1
    return v1

    .line 1982
    .restart local v1       #j:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1990
    .end local v1           #j:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public inOpeningAnimation()Z
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 852
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    iget-wide v2, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isAtMinimalScale()Z
    .locals 3

    .prologue
    .line 1252
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1253
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    return v1
.end method

.method public isCenter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1257
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1258
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFirstAtMinimalScale()Z
    .locals 3

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1243
    .local v0, b1:Lcom/android/gallery3d/ui/PositionController$Box;
    if-eqz v0, :cond_0

    .line 1244
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    .line 1246
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 4

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;[I)V
    .locals 20
    .parameter "fromIndex"
    .parameter "hasPrev"
    .parameter "hasNext"
    .parameter "constrained"
    .parameter "sizes"
    .parameter "types"

    .prologue
    .line 1058
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    .line 1059
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    .line 1061
    new-instance v8, Lcom/android/gallery3d/util/RangeIntArray;

    const/16 v18, -0x3

    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v8, v0, v1, v2}, Lcom/android/gallery3d/util/RangeIntArray;-><init>([III)V

    .line 1063
    .local v8, from:Lcom/android/gallery3d/util/RangeIntArray;
    new-instance v5, Lcom/android/gallery3d/util/RangeArray;

    const/16 v18, -0x3

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    .line 1066
    .local v5, boxesBackup:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<Lcom/android/gallery3d/ui/PositionController$Box;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->layoutAndSetPosition()V

    .line 1067
    const/4 v10, -0x3

    .local v10, i:I
    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_0

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1069
    .local v4, b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mRects:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 1070
    .local v15, r:Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1067
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1074
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v15           #r:Landroid/graphics/Rect;
    :cond_0
    const/4 v10, -0x3

    :goto_1
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_1

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1078
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v10, v0}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1074
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1080
    :cond_1
    const/4 v10, -0x3

    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1080
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1086
    :cond_2
    const/4 v10, -0x3

    :goto_3
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_4

    .line 1087
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v11

    .line 1088
    .local v11, j:I
    const v18, 0x7fffffff

    move/from16 v0, v18

    if-ne v11, v0, :cond_3

    .line 1086
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1091
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v10, v0}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 1096
    .end local v11           #j:I
    :cond_4
    const/4 v10, -0x3

    :goto_5
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v10, v0, :cond_7

    .line 1097
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v11

    .line 1098
    .restart local v11       #j:I
    const v18, 0x7fffffff

    move/from16 v0, v18

    if-ne v11, v0, :cond_6

    .line 1096
    :cond_5
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1099
    :cond_6
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v12

    .line 1100
    .local v12, k:I
    const v18, 0x7fffffff

    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    .line 1101
    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_5

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 1108
    .end local v11           #j:I
    .end local v12           #k:I
    :cond_7
    const/4 v12, -0x3

    .line 1109
    .restart local v12       #k:I
    const/4 v10, -0x3

    :goto_7
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_a

    .line 1112
    invoke-virtual {v5, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 1109
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1113
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_9

    .line 1114
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1117
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v10, v0}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12           #k:I
    .local v13, k:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1119
    add-int/lit8 v18, v10, 0x3

    aget v18, p6, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/ui/PositionController;->setImageSubType(II)V

    .line 1120
    add-int/lit8 v18, v10, 0x3

    aget-object v18, p5, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/gallery3d/ui/PositionController;->initBox(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    move v12, v13

    .end local v13           #k:I
    .restart local v12       #k:I
    goto :goto_8

    .line 1123
    :cond_a
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    .line 1130
    const/4 v7, -0x3

    .local v7, first:I
    :goto_a
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v7, v0, :cond_b

    .line 1131
    invoke-virtual {v8, v7}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 1133
    :cond_b
    const/4 v14, 0x3

    .local v14, last:I
    :goto_b
    const/16 v18, -0x3

    move/from16 v0, v18

    if-lt v14, v0, :cond_c

    .line 1134
    invoke-virtual {v8, v14}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 1138
    :cond_c
    const/16 v18, 0x3

    move/from16 v0, v18

    if-le v7, v0, :cond_d

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1140
    const/4 v14, 0x0

    move v7, v14

    .line 1148
    :cond_d
    const/16 v18, 0x0

    add-int/lit8 v19, v7, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v10

    :goto_c
    if-ge v10, v14, :cond_12

    .line 1149
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 1148
    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 1130
    .end local v14           #last:I
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1133
    .restart local v14       #last:I
    :cond_f
    add-int/lit8 v14, v14, -0x1

    goto :goto_b

    .line 1150
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1151
    .local v3, a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1152
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1153
    .local v16, wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1154
    .local v17, wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v19, v16, v19

    add-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    add-int v18, v18, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_d

    .line 1159
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto/16 :goto_d

    .line 1164
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_12
    const/16 v18, -0x1

    add-int/lit8 v19, v14, -0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_e
    if-le v10, v7, :cond_15

    .line 1165
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/util/RangeIntArray;->get(I)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 1164
    :goto_f
    add-int/lit8 v10, v10, -0x1

    goto :goto_e

    .line 1166
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1167
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1168
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1169
    .restart local v16       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1170
    .restart local v17       #wb:I
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v17, v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/gallery3d/ui/PositionController;->getDefaultGapSize(I)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1172
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 1173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1175
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->heightOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    goto :goto_f

    .line 1180
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_15
    const/4 v12, -0x3

    .line 1181
    const/4 v10, -0x3

    :goto_10
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v10, v0, :cond_19

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_16

    .line 1181
    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 1183
    :cond_16
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_17

    .line 1184
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 1186
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mTempGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v19, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12           #k:I
    .restart local v13       #k:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1188
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1189
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1190
    .restart local v16       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1191
    .restart local v17       #wb:I
    if-lt v10, v7, :cond_18

    if-ge v10, v14, :cond_18

    .line 1192
    iget v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, v16, 0x2

    sub-int v19, v16, v19

    sub-int v9, v18, v19

    .line 1193
    .local v9, g:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/android/gallery3d/ui/PositionController;->initGap(II)V

    move v12, v13

    .line 1194
    .end local v13           #k:I
    .restart local v12       #k:I
    goto :goto_11

    .line 1195
    .end local v9           #g:I
    .end local v12           #k:I
    .restart local v13       #k:I
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/gallery3d/ui/PositionController;->initGap(I)V

    move v12, v13

    .end local v13           #k:I
    .restart local v12       #k:I
    goto :goto_11

    .line 1201
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_19
    add-int/lit8 v10, v7, -0x1

    :goto_13
    const/16 v18, -0x3

    move/from16 v0, v18

    if-lt v10, v0, :cond_1a

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1203
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1204
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1205
    .restart local v16       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1206
    .restart local v17       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1207
    .local v9, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v17, v19

    sub-int v18, v18, v19

    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1201
    add-int/lit8 v10, v10, -0x1

    goto :goto_13

    .line 1210
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v9           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_1a
    add-int/lit8 v10, v14, 0x1

    :goto_14
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v10, v0, :cond_1b

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1212
    .restart local v3       #a:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1213
    .restart local v4       #b:Lcom/android/gallery3d/ui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v16

    .line 1214
    .restart local v16       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->widthOf(Lcom/android/gallery3d/ui/PositionController$Box;)I

    move-result v17

    .line 1215
    .restart local v17       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 1216
    .restart local v9       #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget v0, v3, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    div-int/lit8 v19, v16, 0x2

    sub-int v19, v16, v19

    add-int v18, v18, v19

    div-int/lit8 v19, v17, 0x2

    add-int v18, v18, v19

    iget v0, v9, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    .line 1210
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 1220
    .end local v3           #a:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v4           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    .end local v9           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    .end local v16           #wa:I
    .end local v17           #wb:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/gallery3d/ui/PositionController$Box;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 1221
    .local v6, dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p4

    if-eq v0, v1, :cond_1c

    .line 1227
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 1229
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 1232
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 1233
    return-void
.end method

.method public resetToFullView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 519
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 520
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 521
    return-void
.end method

.method public scaleBy(FFF)I
    .locals 8
    .parameter "s"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x3f00

    .line 539
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 540
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p3, v6

    .line 541
    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 542
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 549
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController;->getTargetScale(Lcom/android/gallery3d/ui/PositionController$Box;)F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p1

    .line 550
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_1

    iget v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 551
    .local v2, x:I
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_2

    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 552
    .local v3, y:I
    :goto_1
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 553
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_3

    const/4 v4, -0x1

    .line 555
    :cond_0
    :goto_2
    return v4

    .line 550
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusX:F

    mul-float/2addr v6, p1

    sub-float v6, p2, v6

    add-float/2addr v6, v7

    float-to-int v2, v6

    goto :goto_0

    .line 551
    .restart local v2       #x:I
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mFocusY:F

    mul-float/2addr v6, p1

    sub-float v6, p3, v6

    add-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_1

    .line 554
    .restart local v3       #y:I
    :cond_3
    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_0

    move v4, v5

    .line 555
    goto :goto_2
.end method

.method public scrollFilmX(I)V
    .locals 8
    .parameter "dx"

    .prologue
    const/4 v7, 0x0

    .line 639
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v3

    if-nez v3, :cond_0

    .line 671
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 642
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 646
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 647
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 657
    :cond_1
    :sswitch_0
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v2, v3, p1

    .line 661
    .local v2, x:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    sub-int/2addr v2, v3

    .line 662
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    .line 663
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 664
    const/4 v2, 0x0

    .line 669
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v3, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    add-int/2addr v2, v3

    .line 670
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 665
    :cond_3
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v3, :cond_2

    if-gez v2, :cond_2

    .line 666
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    neg-int v4, v2

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 667
    const/4 v2, 0x0

    goto :goto_1

    .line 647
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public scrollFilmY(II)V
    .locals 4
    .parameter "boxIndex"
    .parameter "dy"

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 677
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v1, v2, p2

    .line 678
    .local v1, y:I
    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    const/4 v3, 0x0

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 679
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    goto :goto_0
.end method

.method public scrollPage(II)V
    .locals 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v8, 0x0

    .line 601
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->canScroll()Z

    move-result v5

    if-nez v5, :cond_0

    .line 636
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 604
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    .line 606
    .local v1, p:Lcom/android/gallery3d/ui/PositionController$Platform;
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v5}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 608
    iget v5, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    add-int v3, v5, p1

    .line 609
    .local v3, x:I
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    add-int v4, v5, p2

    .line 613
    .local v4, y:I
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-eq v5, v6, :cond_1

    .line 614
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    if-ge v4, v5, :cond_3

    .line 615
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    sub-int/2addr v6, v4

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 621
    :cond_1
    :goto_1
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    .line 625
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    if-le v3, v5, :cond_4

    .line 626
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    sub-int v2, v3, v5

    .line 627
    .local v2, pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 628
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    .line 635
    .end local v2           #pixels:I
    :cond_2
    :goto_2
    iget v5, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 616
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    if-le v4, v5, :cond_1

    .line 617
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    iget v6, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    sub-int v6, v4, v6

    invoke-interface {v5, v6, v8}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    goto :goto_1

    .line 629
    :cond_4
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    if-ge v3, v5, :cond_2

    .line 630
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    sub-int v2, v5, v3

    .line 631
    .restart local v2       #pixels:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onPull(II)V

    .line 632
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    goto :goto_2
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "cFrame"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 275
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 276
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setExtraScalingRange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z

    .line 405
    if-nez p1, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setFilmMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-ne p1, v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 394
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 397
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 398
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 399
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "index"
    .parameter "s"
    .parameter "cFrame"

    .prologue
    .line 288
    iget v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    if-eqz v2, :cond_0

    iget v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    if-nez v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v0, 0x0

    .line 291
    .local v0, cFrameChanged:Z
    const/4 v1, 0x0

    .line 292
    .local v1, needUpdate:Z
    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController$Platform;->updateDefaultXY()V

    .line 295
    const/4 v1, 0x1

    .line 296
    if-nez p1, :cond_2

    .line 297
    const/4 v0, 0x1

    .line 300
    :cond_2
    iget v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    iget v3, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    move-result v2

    or-int/2addr v1, v2

    .line 302
    if-eqz v1, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 304
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSubType(II)V
    .locals 2
    .parameter "index"
    .parameter "subType"

    .prologue
    .line 1924
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1926
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    if-ne p2, v1, :cond_0

    .line 1932
    :goto_0
    return-void

    .line 1930
    :cond_0
    iput p2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubType:I

    .line 1931
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mSubTypeChanged:Z

    goto :goto_0
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 238
    return-void
.end method

.method public setPopFromTop(Z)V
    .locals 0
    .parameter "top"

    .prologue
    .line 1321
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PositionController;->mPopFromTop:Z

    .line 1322
    return-void
.end method

.method public setViewSize(II)V
    .locals 6
    .parameter "viewW"
    .parameter "viewH"

    .prologue
    .line 241
    const-string v3, "PositionController"

    const-string v4, "invoke setViewSize"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v3, "PositionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the viewW is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", the viewH is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    if-ne p2, v3, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 247
    .local v2, wasMinimal:Z
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    .line 248
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    .line 249
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->initPlatform()V

    .line 251
    const/4 v1, -0x3

    .local v1, i:I
    :goto_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_2

    .line 252
    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/gallery3d/ui/PositionController;->setBoxSize(IIIZ)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->updateScaleAndGapLimit()V

    .line 259
    if-eqz v2, :cond_3

    .line 260
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 261
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 266
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->startOpeningAnimationIfNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0
.end method

.method public skipAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-wide/16 v5, -0x1

    .line 463
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v3, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 464
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 465
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v4, v3, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 466
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v5, v3, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 468
    :cond_0
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-gt v2, v7, :cond_2

    .line 469
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 470
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-wide v3, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 468
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :cond_1
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToY:I

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    .line 472
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mToScale:F

    iput v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    .line 473
    iput-wide v5, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_1

    .line 475
    .end local v0           #b:Lcom/android/gallery3d/ui/PositionController$Box;
    :cond_2
    const/4 v2, -0x3

    :goto_2
    if-ge v2, v7, :cond_4

    .line 476
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 477
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-wide v3, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 475
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 478
    :cond_3
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    .line 479
    iput-wide v5, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    goto :goto_3

    .line 481
    .end local v1           #g:Lcom/android/gallery3d/ui/PositionController$Gap;
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 482
    return-void
.end method

.method public skipToFinalPosition()V
    .locals 0

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->stopAnimation()V

    .line 490
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 491
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 492
    return-void
.end method

.method public snapback()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->snapAndRedraw()V

    .line 486
    return-void
.end method

.method public startCaptureAnimationSlide(I)V
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x9

    .line 574
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 575
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 576
    .local v2, n:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    .line 578
    .local v1, g:Lcom/android/gallery3d/ui/PositionController$Gap;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v4, v4, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v5, v5, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/ui/PositionController$Platform;->access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z

    .line 580
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 581
    iget v3, v2, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v2, v7, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Box;->access$500(Lcom/android/gallery3d/ui/PositionController$Box;IFI)Z

    .line 582
    iget v3, v1, Lcom/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v3, v6}, Lcom/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    .line 583
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController;->redraw()V

    .line 584
    return-void
.end method

.method public startHorizontalSlide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 565
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 566
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v1, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 567
    return-void
.end method

.method public stopAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v2, -0x1

    .line 453
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 454
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Box;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_0
    const/4 v0, -0x3

    :goto_1
    if-ge v0, v4, :cond_1

    .line 458
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mGaps:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PositionController$Gap;

    iput-wide v2, v1, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 460
    :cond_1
    return-void
.end method

.method public stopScrolling()V
    .locals 4

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-wide v0, v0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1314
    :goto_0
    return-void

    .line 1312
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v2, v2, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v2, v1, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v2, v0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    goto :goto_0
.end method

.method public zoomIn(FFF)V
    .locals 10
    .parameter "tapX"
    .parameter "tapY"
    .parameter "targetScale"

    .prologue
    const/high16 v9, 0x3f00

    .line 499
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p1, v7

    .line 500
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p2, v7

    .line 501
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 504
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController;->mPlatform:Lcom/android/gallery3d/ui/PositionController$Platform;

    iget v7, v7, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v3, v7, v8

    .line 505
    .local v3, tempX:F
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    div-float v4, v7, v8

    .line 507
    .local v4, tempY:F
    neg-float v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v5, v7

    .line 508
    .local v5, x:I
    neg-float v7, v4

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v6, v7

    .line 510
    .local v6, y:I
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V

    .line 511
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I

    invoke-static {v5, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 512
    .local v1, targetX:I
    iget v7, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController;->mBoundBottom:I

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 513
    .local v2, targetY:I
    iget v7, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v7, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result p3

    .line 515
    const/4 v7, 0x4

    invoke-direct {p0, v1, v2, p3, v7}, Lcom/android/gallery3d/ui/PositionController;->startAnimation(IIFI)Z

    .line 516
    return-void
.end method
