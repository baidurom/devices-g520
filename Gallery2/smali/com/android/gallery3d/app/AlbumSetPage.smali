.class public Lcom/android/gallery3d/app/AlbumSetPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/android/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final DATA_CACHE_SIZE:I = 0x100

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_SELECTED_CLUSTER_TYPE:Ljava/lang/String; = "selected-cluster"

.field public static final KEY_SET_SUBTITLE:Ljava/lang/String; = "set-subtitle"

.field public static final KEY_SET_TITLE:Ljava/lang/String; = "set-title"

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetPage"


# instance fields
.field private emptySetTxt:Landroid/widget/TextView;

.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

.field private mEyePosition:Lcom/android/gallery3d/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field public mInitialized:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field public mLoadingFinished:Z

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMtkInclusion:I

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSelectedAction:I

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mSubtitle:Ljava/lang/String;

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

.field private mTitle:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/AlbumSetPage;->IS_DRM_SUPPORTED:Z

    .line 88
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/AlbumSetPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 91
    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMtkInclusion:I

    .line 94
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 125
    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 127
    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 128
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    .line 130
    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->emptySetTxt:Landroid/widget/TextView;

    .line 132
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 758
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingFinished:Z

    .line 759
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumSetPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    return v0
.end method

.method private clearLoadingBit(I)V
    .locals 5
    .parameter "loadingBit"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 335
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 336
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-eqz v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    .line 344
    .local v0, stateCount:I
    const-string v1, "AlbumSetPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearLoadingBit: size=0, statecount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0c0225

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 348
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 359
    .end local v0           #stateCount:I
    :cond_0
    :goto_0
    return-void

    .line 351
    .restart local v0       #stateCount:I
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->emptyAlbumSet(I)V

    goto :goto_0

    .line 354
    .end local v0           #stateCount:I
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage;->emptyAlbumSet(I)V

    goto :goto_0

    .line 356
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 357
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage;->emptyAlbumSet(I)V

    goto :goto_0
.end method

.method private emptyAlbumSet(I)V
    .locals 4
    .parameter "mVisible"

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->emptySetTxt:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 765
    .local v0, activity:Landroid/app/Activity;
    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->emptySetTxt:Landroid/widget/TextView;

    .line 767
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->emptySetTxt:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->emptySetTxt:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    const-string v1, "AlbumSetPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emptyAlbumSet:  empty hint is==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_1
    return-void
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 583
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    .line 584
    .local v1, count:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v0

    .line 585
    .local v0, action:I
    if-ne v0, v5, :cond_0

    const v3, 0x7f100002

    .line 588
    .local v3, string:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, format:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 585
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #string:I
    :cond_0
    const v3, 0x7f100003

    goto :goto_0
.end method

.method private getSlotCenter(I[I)V
    .locals 8
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 192
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 193
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 194
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v2

    .line 195
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v3

    .line 196
    .local v3, scrollY:I
    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    aput v5, p2, v4

    .line 197
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 198
    return-void
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 628
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 629
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 630
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 631
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 411
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, mediaPath:Ljava/lang/String;
    sget-boolean v1, Lcom/android/gallery3d/app/AlbumSetPage;->IS_DRM_SUPPORTED:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/app/AlbumSetPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    invoke-static {p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getInclusionFromData(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMtkInclusion:I

    .line 415
    const-string v1, "AlbumSetPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeDAta:mMtkInclusion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMtkInclusion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMtkInclusion:I

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 422
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 424
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 425
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    .line 426
    return-void

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    .line 429
    new-instance v1, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 430
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 432
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/android/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v0

    .line 433
    .local v0, config:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    new-instance v1, Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 434
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v5, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    .line 436
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 437
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$3;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumSetPage$3;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 459
    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 460
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumSetPage$4;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 466
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 467
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 264
    return-void
.end method

.method private onUp(Z)V
    .locals 2
    .parameter "followedByLongPress"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private pickAlbum(I)V
    .locals 10
    .parameter "slotIndex"

    .prologue
    const/4 v8, 0x1

    .line 218
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v7, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v7, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    .line 222
    .local v6, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v6, :cond_0

    .line 223
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, mediaPath:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 226
    .local v2, data:Landroid/os/Bundle;
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 227
    .local v1, center:[I
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->getSlotCenter(I[I)V

    .line 228
    const-string v7, "set-center"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 229
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 231
    .local v0, activity:Landroid/app/Activity;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "album-path"

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 233
    .local v5, result:Landroid/content/Intent;
    invoke-static {v6, v5}, Lcom/mediatek/gallery3d/util/MediatekFeature;->insertBucketIdForPickActions(Lcom/android/gallery3d/data/MediaSet;Landroid/content/Intent;)V

    .line 234
    const/4 v7, -0x1

    invoke-virtual {v0, v7, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 235
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 236
    .end local v0           #activity:Landroid/app/Activity;
    .end local v5           #result:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 237
    const-string v7, "media-path"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-boolean v7, Lcom/android/gallery3d/app/AlbumSetPage;->IS_DRM_SUPPORTED:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/gallery3d/app/AlbumSetPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v7, :cond_4

    .line 240
    :cond_3
    const-string v7, "GalleryDrmInclusion"

    iget v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMtkInclusion:I

    invoke-virtual {v2, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    :cond_4
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    const-class v9, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v7, v9, v8, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 245
    :cond_5
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v7

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_6

    .line 247
    const-string v7, "auto-select-all"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    :cond_6
    const-string v7, "media-path"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    const-class v9, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v7, v9}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    .line 252
    .local v3, inAlbum:Z
    const-string v9, "cluster-menu"

    if-nez v3, :cond_9

    move v7, v8

    :goto_1
    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    sget-boolean v7, Lcom/android/gallery3d/app/AlbumSetPage;->IS_DRM_SUPPORTED:Z

    if-nez v7, :cond_7

    sget-boolean v7, Lcom/android/gallery3d/app/AlbumSetPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v7, :cond_8

    .line 255
    :cond_7
    const-string v7, "GalleryDrmInclusion"

    iget v9, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMtkInclusion:I

    invoke-virtual {v2, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    :cond_8
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    const-class v9, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v7, v9, v8, v2}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 252
    :cond_9
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private setLoadingBit(I)V
    .locals 1
    .parameter "loadingBit"

    .prologue
    .line 362
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 363
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 635
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 637
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$5;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 645
    return-void
.end method


# virtual methods
.method public doCluster(I)V
    .locals 6
    .parameter "clusterType"

    .prologue
    .line 287
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, basePath:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, newPath:Ljava/lang/String;
    const-string v3, "AlbumSetPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doCluster, the new path is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 291
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "media-path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v3, "selected-cluster"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    sget-boolean v3, Lcom/android/gallery3d/app/AlbumSetPage;->IS_DRM_SUPPORTED:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/gallery3d/app/AlbumSetPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v3, :cond_1

    .line 295
    :cond_0
    const-string v3, "GalleryDrmInclusion"

    iget v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMtkInclusion:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3, p0, v4, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 298
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 186
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeViews()V

    .line 303
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 306
    iput-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialized:Z

    .line 308
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    .local v0, context:Landroid/content/Context;
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    .line 310
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    .line 311
    const-string v1, "set-title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    .line 312
    const-string v1, "set-subtitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSubtitle:Ljava/lang/String;

    .line 313
    new-instance v1, Lcom/android/gallery3d/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/android/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    .line 314
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    .line 315
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    .line 316
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 317
    const-string v1, "selected-cluster"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    .line 320
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$2;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage$2;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    .line 332
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 472
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    .line 474
    .local v5, inflater:Landroid/view/MenuInflater;
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v4

    .line 477
    .local v4, inAlbum:Z
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v10, :cond_2

    .line 478
    const v10, 0x7f110008

    invoke-virtual {v5, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 479
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v11, "type-bits"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 481
    .local v9, typeBits:I
    const v3, 0x7f0c01f4

    .line 482
    .local v3, id:I
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_0

    .line 483
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_1

    const v3, 0x7f0c01f5

    .line 487
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v10, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 519
    .end local v3           #id:I
    .end local v9           #typeBits:I
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 483
    .restart local v3       #id:I
    .restart local v9       #typeBits:I
    :cond_1
    const v3, 0x7f0c01f6

    goto :goto_0

    .line 488
    .end local v3           #id:I
    .end local v9           #typeBits:I
    :cond_2
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v10, :cond_3

    .line 489
    const v10, 0x7f110008

    invoke-virtual {v5, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 490
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v11, 0x7f0c01f7

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    goto :goto_1

    .line 492
    :cond_3
    if-nez v4, :cond_6

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    .line 493
    const v10, 0x7f110001

    invoke-virtual {v5, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 494
    const v10, 0x7f0b00f4

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 496
    .local v7, selectItem:Landroid/view/MenuItem;
    if-eqz v7, :cond_4

    .line 497
    iget v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    if-eqz v10, :cond_7

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    .line 498
    .local v1, clusterType:I
    :goto_3
    if-nez v4, :cond_8

    const/4 v10, 0x1

    if-ne v1, v10, :cond_8

    const/4 v6, 0x1

    .line 500
    .local v6, selectAlbums:Z
    :goto_4
    if-eqz v6, :cond_9

    .line 501
    const v10, 0x7f0c01f7

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 507
    .end local v1           #clusterType:I
    .end local v6           #selectAlbums:Z
    :cond_4
    :goto_5
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/data/Path;Z)V

    .line 508
    const v10, 0x7f0b00f2

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 509
    .local v8, switchCamera:Landroid/view/MenuItem;
    if-eqz v8, :cond_5

    .line 510
    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v10

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 512
    :cond_5
    const v10, 0x7f0b00f6

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 513
    .local v2, helpMenu:Landroid/view/MenuItem;
    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c0263

    invoke-static {v10, v2, v11}, Lcom/android/gallery3d/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    .line 516
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 517
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    goto :goto_1

    .line 492
    .end local v2           #helpMenu:Landroid/view/MenuItem;
    .end local v7           #selectItem:Landroid/view/MenuItem;
    .end local v8           #switchCamera:Landroid/view/MenuItem;
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 497
    .restart local v7       #selectItem:Landroid/view/MenuItem;
    :cond_7
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v1

    goto :goto_3

    .line 498
    .restart local v1       #clusterType:I
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 503
    .restart local v6       #selectAlbums:Z
    :cond_9
    const v10, 0x7f0c01f8

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 172
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    .line 173
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    .line 174
    iput p3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 177
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 525
    .local v0, activity:Landroid/app/Activity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 569
    :goto_0
    return v1

    .line 527
    :sswitch_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 528
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 531
    :sswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 532
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 535
    :sswitch_2
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v2, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    goto :goto_0

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showDetails()V

    goto :goto_0

    .line 542
    :cond_1
    const v3, 0x7f0c0224

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 548
    :sswitch_3
    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x7f0b00f2 -> :sswitch_3
        0x7f0b00f4 -> :sswitch_1
        0x7f0b010a -> :sswitch_2
        0x7f0b010f -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 276
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 278
    .local v0, set:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 281
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->findIndex(I)I

    .line 282
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 368
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->pause()V

    .line 372
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->pause()V

    .line 373
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 381
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    .line 384
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->emptyAlbumSet(I)V

    .line 386
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 390
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 391
    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 395
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 398
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 399
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->resume()V

    .line 400
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->resume()V

    .line 401
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    .line 404
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    if-nez v0, :cond_1

    .line 405
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 408
    :cond_1
    return-void
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 622
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V

    .line 624
    return-void

    .line 621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionModeChange(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 594
    packed-switch p1, :pswitch_data_0

    .line 617
    :goto_0
    return-void

    .line 596
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    .line 598
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 602
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 603
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/android/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 612
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 613
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 201
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 205
    .local v0, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 207
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 210
    .end local v0           #targetSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 211
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    .line 212
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 575
    packed-switch p1, :pswitch_data_0

    .line 580
    :goto_0
    return-void

    .line 577
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 649
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 650
    const-string v0, "AlbumSetPage"

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

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$6;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/AlbumSetPage$6;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method
