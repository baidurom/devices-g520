.class public Lcom/android/gallery3d/app/AlbumPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field public static final KEY_SHOW_CLUSTER_MENU:Ljava/lang/String; = "cluster-menu"

.field private static final MSG_PICK_PHOTO:I = 0x1

.field private static final REQUEST_CROP:I = 0x64

.field private static final REQUEST_CROP_WALLPAPER:I = 0x65

.field private static final REQUEST_DO_ANIMATION:I = 0x3

.field private static final REQUEST_PHOTO:I = 0x2

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumPage"

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

.field private mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

.field private mConvertUriTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcom/android/gallery3d/data/Path;

.field private mMtkInclusion:I

.field private mNeedUpdateSelection:Z

.field private mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPickedItem:Lcom/android/gallery3d/data/MediaItem;

.field private mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mSyncTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDistance:F

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/AlbumPage;->IS_DRM_SUPPORTED:Z

    .line 105
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/AlbumPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 107
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMtkInclusion:I

    .line 111
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 127
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 137
    iput v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 138
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    .line 139
    new-instance v0, Lcom/android/gallery3d/ui/RelativePosition;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    .line 143
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    .line 144
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$1;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 167
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$2;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 882
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumPage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/RelativePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->convertAndPick(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mConvertUriTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method private clearLoadingBit(I)V
    .locals 3
    .parameter "loadTaskBit"

    .prologue
    .line 845
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 846
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0c0225

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 850
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 853
    :cond_0
    return-void
.end method

.method private convertAndPick(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 408
    const-string v1, "AlbumPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAndPick(item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mConvertUriTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mConvertUriTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 413
    :cond_0
    const v0, 0x7f0c0091

    .line 414
    .local v0, messageId:I
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 418
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$4;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery3d/app/AlbumPage$4;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mConvertUriTask:Lcom/android/gallery3d/util/Future;

    .line 446
    return-void
.end method

.method private getSlotRect(I)Landroid/graphics/Rect;
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 311
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 312
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 313
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 314
    .local v1, r:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 316
    return-object v1
.end method

.method private handleMtkCropResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 969
    const-string v2, "AlbumPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMtkCropFlow: request="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataString="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    packed-switch p1, :pswitch_data_0

    .line 988
    const-string v1, "AlbumPage"

    const-string v2, "unknown MTK crop request!!"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_0
    :goto_1
    return-void

    .line 969
    :cond_1
    const-string v1, "null"

    goto :goto_0

    .line 975
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 980
    .local v0, activity:Landroid/app/Activity;
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPickedItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_2

    .line 981
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPickedItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    :cond_2
    invoke-virtual {v0, v4, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 984
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 660
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 661
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 662
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 663
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 623
    sget-boolean v0, Lcom/android/gallery3d/app/AlbumPage;->IS_DRM_SUPPORTED:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/gallery3d/app/AlbumPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_2

    .line 624
    :cond_0
    const-string v0, "GalleryDrmInclusion"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMtkInclusion:I

    .line 626
    const-string v0, "AlbumPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeData:mMtkInclusion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMtkInclusion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMtkInclusion:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    .line 629
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMtkInclusion:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/Path;->setMtkInclusion(I)V

    .line 633
    :goto_0
    const-string v0, "parent-media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 636
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_1

    .line 637
    const-string v0, "MediaSet is null. Path = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 640
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    .line 641
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 642
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V

    .line 643
    return-void

    .line 631
    :cond_2
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 5

    .prologue
    .line 585
    new-instance v1, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 586
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 587
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/android/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumPage;

    move-result-object v0

    .line 588
    .local v0, config:Lcom/android/gallery3d/app/Config$AlbumPage;
    new-instance v1, Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, v0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 589
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    .line 590
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 591
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 592
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$6;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$6;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 613
    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 614
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$7;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$7;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 619
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 253
    return-void
.end method

.method private onGetContent(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    .line 320
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 321
    .local v2, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 322
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v8, "crop"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 324
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->startMtkCropFlow(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 326
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v6

    .line 327
    .local v6, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    invoke-direct {v7, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v8, 0x200

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 330
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v8, "output"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    if-nez v7, :cond_0

    .line 331
    const-string v7, "return-data"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 334
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 358
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    sget-boolean v7, Lcom/android/gallery3d/app/AlbumPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v7, :cond_4

    .line 338
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v8, "attachWithoutConversion"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 340
    .local v1, attachWithoutConversion:Z
    const-string v7, "AlbumPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetContent:attachWithoutConversion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v5

    .line 343
    .local v5, subtype:I
    if-nez v1, :cond_4

    and-int/lit8 v7, v5, 0x10

    if-nez v7, :cond_3

    and-int/lit8 v7, v5, 0x20

    if-nez v7, :cond_3

    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_4

    .line 347
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v8, "get_no_stereo_image"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 349
    .local v4, pickAs2D:Z
    const-string v7, "AlbumPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetContent:pickAs2D="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/app/AlbumPage;->showStereoPickDialog(Lcom/android/gallery3d/data/MediaItem;Z)V

    goto :goto_0

    .line 354
    .end local v1           #attachWithoutConversion:Z
    .end local v4           #pickAs2D:Z
    .end local v5           #subtype:I
    :cond_4
    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 356
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onSingleTapUp(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 265
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 269
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 271
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->findIndex(I)I

    .line 272
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 275
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 276
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 277
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private onUpPressed()V
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 242
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 245
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private pickPhoto(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 283
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 286
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 287
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v2, :cond_2

    .line 288
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumPage;->onGetContent(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 292
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "index-hint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string v2, "open-animation-rect"

    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "media-item-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-boolean v2, Lcom/android/gallery3d/app/AlbumPage;->IS_DRM_SUPPORTED:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/gallery3d/app/AlbumPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v2, :cond_4

    .line 302
    :cond_3
    const-string v2, "GalleryDrmInclusion"

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMtkInclusion:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/PhotoPage;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadTaskBit"

    .prologue
    .line 841
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 842
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 647
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 649
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$8;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$8;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 656
    return-void
.end method

.method private showStereoPickDialog(Lcom/android/gallery3d/data/MediaItem;Z)V
    .locals 12
    .parameter "item"
    .parameter "pickAs2D"

    .prologue
    .line 361
    const/4 v7, 0x0

    .line 362
    .local v7, positiveCap:I
    const/4 v5, 0x0

    .line 363
    .local v5, negativeCap:I
    const/4 v8, 0x0

    .line 364
    .local v8, title:I
    const/4 v4, 0x0

    .line 365
    .local v4, message:I
    if-eqz p2, :cond_0

    .line 366
    const v7, 0x104000a

    .line 367
    const/high16 v5, 0x104

    .line 368
    const v8, 0x7f0c0090

    .line 369
    const v4, 0x7f0c019c

    .line 376
    :goto_0
    move-object v3, p1

    .line 377
    .local v3, fItem:Lcom/android/gallery3d/data/MediaItem;
    move v6, p2

    .line 378
    .local v6, onlyPickAs2D:Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v9, Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v9, "AlbumPage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showStereoPickDialog:fItem.getContentUri()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$3;

    invoke-direct {v1, p0, v3, v6}, Lcom/android/gallery3d/app/AlbumPage$3;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/data/MediaItem;Z)V

    .line 399
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 404
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 405
    return-void

    .line 371
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #fItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #onlyPickAs2D:Z
    :cond_0
    const v7, 0x7f0c0095

    .line 372
    const v5, 0x7f0c0096

    .line 373
    const v8, 0x7f0c0094

    .line 374
    const v4, 0x7f0c019e

    goto :goto_0
.end method

.method private startMtkCropFlow(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 938
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage;->mPickedItem:Lcom/android/gallery3d/data/MediaItem;

    .line 939
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 940
    .local v2, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 941
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    .line 944
    .local v5, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    invoke-direct {v7, v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 946
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "AlbumPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startMtkCropFlow: EXTRA_OUTPUT="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v10, "output"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v7, "crop-for-wallpaper"

    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v9, "crop"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 949
    .local v1, cropForWallpaper:Z
    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v8, "output"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    if-nez v7, :cond_1

    move v4, v6

    .line 951
    .local v4, shouldReturnData:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 952
    const-string v7, "return-data"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 953
    const-string v7, "AlbumPage"

    const-string v8, "startMtkCropFlow: KEY_RETURN_DATA"

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    if-eqz v1, :cond_2

    .line 957
    const/16 v7, 0x65

    invoke-virtual {v0, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 958
    const-string v7, "AlbumPage"

    const-string v8, "startMtkCropFlow: start for result: REQUEST_CROP_WALLPAPER"

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :goto_1
    return v6

    .line 949
    .end local v4           #shouldReturnData:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 960
    .restart local v4       #shouldReturnData:Z
    :cond_2
    const/16 v7, 0x64

    invoke-virtual {v0, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 961
    const-string v7, "AlbumPage"

    const-string v8, "startMtkCropFlow: start for result: REQUEST_CROP"

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public doCluster(I)V
    .locals 7
    .parameter "clusterType"

    .prologue
    .line 460
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, basePath:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, newPath:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 463
    .local v2, data:Landroid/os/Bundle;
    const-string v4, "media-path"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-boolean v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    if-eqz v4, :cond_0

    .line 465
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 466
    .local v1, context:Landroid/content/Context;
    const-string v4, "set-title"

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v4, "set-subtitle"

    invoke-static {v1, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    sget-boolean v4, Lcom/android/gallery3d/app/AlbumPage;->IS_DRM_SUPPORTED:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/gallery3d/app/AlbumPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v4, :cond_2

    .line 472
    :cond_1
    const-string v4, "GalleryDrmInclusion"

    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mMtkInclusion:I

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 478
    return-void
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v4, 0x0

    .line 482
    const v2, 0x3e99999a

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    .line 483
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V

    .line 484
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 485
    const-string v2, "get-content"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    .line 486
    const-string v2, "cluster-menu"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    .line 487
    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    .line 488
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 489
    .local v1, context:Landroid/content/Context;
    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    .line 492
    const-string v2, "auto-select-all"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 497
    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 498
    const-string v2, "set-center"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 499
    .local v0, center:[I
    if-eqz v0, :cond_1

    .line 500
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    aget v3, v0, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/ui/RelativePosition;->setAbsolutePosition(II)V

    .line 501
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SlotView;->startScatteringAnimation(Lcom/android/gallery3d/ui/RelativePosition;)V

    .line 505
    .end local v0           #center:[I
    :cond_1
    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$5;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/AlbumPage$5;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    .line 517
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const v9, 0x7f0b00f3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 667
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 668
    .local v1, activity:Landroid/app/Activity;
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 669
    .local v0, actionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 671
    .local v3, inflater:Landroid/view/MenuInflater;
    iget-boolean v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v8, :cond_0

    .line 672
    const v6, 0x7f110008

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 673
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v8, "type-bits"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 676
    .local v5, typeBits:I
    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 702
    .end local v5           #typeBits:I
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 704
    return v7

    .line 678
    :cond_0
    const/high16 v8, 0x7f11

    invoke-virtual {v3, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 679
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 680
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/android/gallery3d/data/MtpDevice;

    if-eqz v8, :cond_4

    .line 681
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 686
    :goto_1
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v0, v8, v7}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/data/Path;Z)V

    .line 688
    const v8, 0x7f0b00f5

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 689
    .local v2, groupBy:Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 690
    iget-boolean v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 693
    :cond_1
    const v8, 0x7f0b00f2

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 694
    .local v4, switchCamera:Landroid/view/MenuItem;
    if-eqz v4, :cond_3

    .line 695
    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v8}, Lcom/android/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/android/gallery3d/data/Path;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    :cond_2
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 700
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    .end local v2           #groupBy:Landroid/view/MenuItem;
    .end local v4           #switchCamera:Landroid/view/MenuItem;
    :cond_4
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 578
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 579
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 582
    :cond_0
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 709
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 751
    :goto_0
    return v1

    .line 711
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->onUpPressed()V

    move v1, v2

    .line 712
    goto :goto_0

    .line 715
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    move v1, v2

    .line 716
    goto :goto_0

    .line 718
    :sswitch_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 719
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    move v1, v2

    .line 720
    goto :goto_0

    .line 722
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->showClusterDialog(Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    move v1, v2

    .line 723
    goto :goto_0

    .line 726
    :sswitch_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 727
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v1, "repeat"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    sget-boolean v1, Lcom/android/gallery3d/app/AlbumPage;->IS_DRM_SUPPORTED:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/app/AlbumPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_1

    .line 732
    :cond_0
    const-string v1, "GalleryDrmInclusion"

    iget v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMtkInclusion:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v3, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    move v1, v2

    .line 736
    goto :goto_0

    .line 739
    .end local v0           #data:Landroid/os/Bundle;
    :sswitch_5
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 740
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    :goto_1
    move v1, v2

    .line 744
    goto :goto_0

    .line 742
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->showDetails()V

    goto :goto_1

    .line 747
    :sswitch_6
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    move v1, v2

    .line 748
    goto :goto_0

    .line 709
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b00f2 -> :sswitch_6
        0x7f0b00f3 -> :sswitch_4
        0x7f0b00f4 -> :sswitch_2
        0x7f0b00f5 -> :sswitch_3
        0x7f0b010a -> :sswitch_5
        0x7f0b010f -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 449
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 451
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 453
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 454
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->findIndex(I)I

    .line 455
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 555
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 556
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 560
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->pause()V

    .line 561
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 562
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 564
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 566
    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 567
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 570
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->saveSelection()V

    .line 572
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    .line 574
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 521
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 522
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 524
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    const-string v5, "resume_animation"

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 525
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 527
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 528
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->start()V

    .line 531
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 533
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 534
    .local v1, path:Lcom/android/gallery3d/data/Path;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v3, :cond_4

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    or-int v0, v2, v4

    .line 536
    .local v0, enableHomeButton:Z
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 539
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 540
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    .line 543
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AlbumDataLoader;->resume()V

    .line 545
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 546
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 547
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mInitialSynced:Z

    if-nez v2, :cond_3

    .line 548
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 549
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 551
    :cond_3
    return-void

    .end local v0           #enableHomeButton:Z
    :cond_4
    move v2, v4

    .line 534
    goto :goto_0
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 6
    .parameter "path"
    .parameter "selected"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 805
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 806
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 807
    .local v0, count:I
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100001

    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 810
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V

    .line 811
    return-void

    .end local v0           #count:I
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 805
    goto :goto_0
.end method

.method public onSelectionModeChange(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 783
    packed-switch p1, :pswitch_data_0

    .line 802
    :goto_0
    return-void

    .line 785
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionMode:Landroid/view/ActionMode;

    .line 786
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 790
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 791
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 797
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 798
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 757
    packed-switch p1, :pswitch_data_0

    .line 778
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/AlbumPage;->handleMtkCropResult(IILandroid/content/Intent;)V

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 760
    :pswitch_0
    if-eqz p3, :cond_0

    .line 761
    const-string v0, "photo-index"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 762
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    goto :goto_0

    .line 766
    :pswitch_1
    if-eqz p3, :cond_0

    .line 767
    const-string v0, "return-index-hint"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 768
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    .line 772
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 815
    const-string v0, "AlbumPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$9;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumPage$9;-><init>(Lcom/android/gallery3d/app/AlbumPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 838
    return-void
.end method
