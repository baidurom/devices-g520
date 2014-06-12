.class public Lcom/android/gallery3d/app/PhotoPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoView$Listener;
.implements Lcom/android/gallery3d/app/OrientationManager$Listener;
.implements Lcom/android/gallery3d/app/AppBridge$Server;
.implements Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;,
        Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/android/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# static fields
.field private static final HIDE_BARS_TIMEOUT:I = 0xdac

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field public static final KEY_APP_BRIDGE:Ljava/lang/String; = "app-bridge"

.field public static final KEY_INDEX_HINT:Ljava/lang/String; = "index-hint"

.field public static final KEY_MEDIA_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_MEDIA_SET_PATH:Ljava/lang/String; = "media-set-path"

.field public static final KEY_OPEN_ANIMATION_RECT:Ljava/lang/String; = "open-animation-rect"

.field public static final KEY_RETURN_INDEX_HINT:Ljava/lang/String; = "return-index-hint"

.field public static final KEY_TREAT_BACK_AS_UP:Ljava/lang/String; = "treat-back-as-up"

.field private static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_LOCK_ORIENTATION:I = 0x2

.field private static final MSG_ON_FULL_SCREEN_CHANGED:I = 0x4

.field private static final MSG_UNFREEZE_GLROOT:I = 0x6

.field private static final MSG_UNLOCK_ORIENTATION:I = 0x3

.field private static final MSG_UPDATE_ACTION_BAR:I = 0x5

.field private static final MSG_UPDATE_MENU:I = 0x81

.field private static final MSG_WANT_BARS:I = 0x7

.field private static final REQUEST_CROP:I = 0x2

.field private static final REQUEST_CROP_PICASA:I = 0x3

.field private static final REQUEST_EDIT:I = 0x4

.field private static final REQUEST_PLAY_VIDEO:I = 0x5

.field private static final REQUEST_PQ:I = 0x6

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final STEREO_MODE_2D:I = 0x0

.field private static final STEREO_MODE_3D:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhotoPage"

.field private static final UNFREEZE_GLROOT_TIMEOUT:I = 0xfa

.field private static sDrmMicroThumbDim:I


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private volatile mActionBarAllowed:Z

.field private mAppBridge:Lcom/android/gallery3d/app/AppBridge;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mConvertEditTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mConvertIntentTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcom/android/gallery3d/data/Path;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDisableBarChanges:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasActivityResult:Z

.field private mIsActive:Z

.field private mIsMenuVisible:Z

.field public mLoadingFinished:Z

.field private mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

.field private mMenu:Landroid/view/Menu;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mMtkInclusion:I

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPendingSharePath:Lcom/android/gallery3d/data/Path;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

.field private mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

.field private mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSetPathString:Ljava/lang/String;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mStereoMode:I

.field private mTreatBackAsUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    .line 131
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 128
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    .line 136
    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    .line 156
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 158
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 201
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$1;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 748
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$4;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 1720
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLoadingFinished:Z

    .line 1721
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisableBarChanges:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->startCropIntent(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->convertAndEdit(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoPage;->startEditIntent(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->checkIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoPage;->convertAndShare(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->safeStartIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method private addShareSelectedListener()V
    .locals 2

    .prologue
    .line 1548
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-nez v1, :cond_0

    .line 1569
    :goto_0
    return-void

    .line 1551
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$13;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$13;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 1568
    .local v0, listener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v1, v0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    goto :goto_0
.end method

.method private canDoSlideShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/data/MtpSource;->isMtpPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 582
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v0

    .line 584
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-eqz v1, :cond_0

    .line 586
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIntent(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 5
    .parameter "intent"
    .parameter "item"

    .prologue
    .line 1615
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1616
    :cond_0
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStereoIntent:invalid intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :goto_0
    return-void

    .line 1620
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1621
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStereoIntent:packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string v2, "com.android.mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1624
    .local v0, onlyShareAs2D:Z
    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/app/PhotoPage;->showStereoShareDialog(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V

    goto :goto_0
.end method

.method private checkIntent(Landroid/content/Intent;)Z
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1572
    if-nez p1, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return v5

    .line 1575
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SEND"

    if-eq v6, v7, :cond_2

    .line 1576
    const-string v6, "PhotoPage"

    const-string v7, "checkIntent: unintented action type"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1579
    :cond_2
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1580
    .local v4, uri:Landroid/net/Uri;
    const-string v6, "PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntent:uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    if-nez v4, :cond_3

    .line 1582
    const-string v6, "PhotoPage"

    const-string v7, "checkIntent:got null uri"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1585
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 1586
    .local v2, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 1587
    .local v1, itemPath:Lcom/android/gallery3d/data/Path;
    const-string v6, "PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntent:itemPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    if-eqz v1, :cond_0

    .line 1593
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 1594
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    const-string v6, "PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntent:item="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/data/DataManager;->getSupportedOperations(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    .line 1600
    .local v3, support:I
    const-string v6, "PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntent:support:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const/high16 v6, 0x1

    and-int/2addr v6, v3

    if-eqz v6, :cond_0

    const/high16 v6, 0x8

    and-int/2addr v6, v3

    if-nez v6, :cond_0

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1604
    const-string v5, "PhotoPage"

    const-string v6, "checkIntent:found a stereo image"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/PhotoPage;->checkIntent(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V

    .line 1606
    invoke-static {p1}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->makeShareProviderIgnorAction(Landroid/content/Intent;)V

    .line 1607
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private convertAndEdit(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 1499
    const-string v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAndEdit(item="

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

    .line 1500
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertEditTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 1501
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertEditTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1504
    :cond_0
    const v0, 0x7f0c0091

    .line 1505
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

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1508
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$12;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$12;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertEditTask:Lcom/android/gallery3d/util/Future;

    .line 1532
    return-void
.end method

.method private convertAndShare(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 6
    .parameter "intent"
    .parameter "item"

    .prologue
    .line 1683
    const-string v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAndShare(intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 1685
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1688
    :cond_0
    const v0, 0x7f0c0091

    .line 1689
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

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1692
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$15;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/gallery3d/app/PhotoPage$15;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    .line 1717
    return-void
.end method

.method private hideBars()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 562
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisableBarChanges:Z

    if-eqz v0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 568
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 569
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 899
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 900
    return-void
.end method

.method private isStereoStateReady()Z
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getStereoScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1399
    :cond_0
    const/4 v0, 0x0

    .line 1401
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onUpPressed()V
    .locals 9

    .prologue
    .line 628
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 629
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 635
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v6, :cond_2

    .line 637
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 638
    .local v1, data:Landroid/os/Bundle;
    const-string v6, "media-path"

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v6, "parent-media-path"

    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v6, p0, v7, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 648
    .end local v1           #data:Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .line 649
    .local v0, bucketId:I
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 651
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 652
    .local v4, segments:[Ljava/lang/String;
    if-eqz v4, :cond_3

    array-length v6, v4

    if-lez v6, :cond_3

    .line 654
    :try_start_0
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 661
    .end local v4           #segments:[Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v6, "PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUpPressed: orig set path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", parsed bucketId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v5, 0x0

    .line 664
    .local v5, uri:Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/file?bucketId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 671
    :goto_2
    const/4 v3, 0x0

    .line 673
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->preferGoTopWhenBack()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 674
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 679
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_3
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 655
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    .restart local v4       #segments:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 656
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v6, "PhotoPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUpPressed: cannot parse a valid id from original set path("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 668
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v4           #segments:[Ljava/lang/String;
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/file?bucketId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .line 676
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.dir/image"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public static playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .parameter "activity"
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 1045
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "video/*"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "treat-up-as-back"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1049
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "mediatek.intent.extra.ENABLE_VIDEO_LIST"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1050
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0c0213

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private preparePhotoFallbackView()V
    .locals 5

    .prologue
    .line 1208
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 1209
    .local v1, root:Lcom/android/gallery3d/ui/GLRoot;
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    .line 1210
    .local v2, task:Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1213
    :try_start_0
    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 1214
    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->get()Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1216
    .local v0, anim:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1218
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string v4, "resume_animation"

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1220
    return-void

    .line 1216
    .end local v0           #anim:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    throw v3
.end method

.method private refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 574
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 578
    :cond_0
    return-void
.end method

.method private safeStartIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1674
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    :goto_0
    return-void

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0c0265

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1127
    if-nez p1, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 1130
    .local v0, path:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0
.end method

.method private setPhotoViewStereoMode(II)V
    .locals 4
    .parameter "stereoMode"
    .parameter "supportedOperations"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1420
    if-ne v2, p1, :cond_0

    const/high16 v0, 0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 1422
    const-string v0, "PhotoPage"

    const-string v1, "setPhotoViewStereoMode:now in 3D mode, show stereo"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 1424
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 1430
    :goto_0
    return-void

    .line 1426
    :cond_0
    const-string v0, "PhotoPage"

    const-string v1, "setPhotoViewStereoMode:now in 2D mode, stop stereo"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 1428
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    goto :goto_0
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, result:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 687
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "return-index-hint"

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 690
    return-void
.end method

.method private showBars()V
    .locals 2

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisableBarChanges:Z

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 555
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 556
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 557
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0
.end method

.method private showConvertCropDialog(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 9
    .parameter "item"

    .prologue
    .line 1433
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1436
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$10;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$10;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 1448
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    const v6, 0x7f0c0211

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1449
    .local v3, crop:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    const v6, 0x7f0c0199

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1452
    .local v2, convertCrop:Ljava/lang/String;
    const v5, 0x104000a

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1453
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1454
    const v5, 0x7f0c0090

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1457
    .local v4, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1458
    return-void
.end method

.method private showConvertEditDialog(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 9
    .parameter "item"

    .prologue
    .line 1473
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1476
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$11;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/app/PhotoPage$11;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 1486
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    const v6, 0x7f0c020e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1487
    .local v4, edit:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    const v6, 0x7f0c0199

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1490
    .local v2, convertEdit:Ljava/lang/String;
    const v5, 0x104000a

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1491
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1492
    const v5, 0x7f0c0090

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1494
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1495
    .local v3, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1496
    return-void
.end method

.method private showDetails(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 904
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 906
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$5;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails(I)V

    .line 914
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 915
    return-void
.end method

.method private showStereoShareDialog(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V
    .locals 10
    .parameter "intent"
    .parameter "item"
    .parameter "shareAs2D"

    .prologue
    .line 1629
    const/4 v6, 0x0

    .line 1630
    .local v6, positiveCap:I
    const/4 v4, 0x0

    .line 1631
    .local v4, negativeCap:I
    const/4 v8, 0x0

    .line 1632
    .local v8, title:I
    const/4 v3, 0x0

    .line 1633
    .local v3, message:I
    if-eqz p3, :cond_0

    .line 1634
    const v6, 0x104000a

    .line 1635
    const/high16 v4, 0x104

    .line 1636
    const v8, 0x7f0c0090

    .line 1637
    const v3, 0x7f0c019c

    .line 1644
    :goto_0
    move-object v7, p1

    .line 1645
    .local v7, shareIntent:Landroid/content/Intent;
    move v5, p3

    .line 1646
    .local v5, onlyShareAs2D:Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v9, Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1649
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$14;

    invoke-direct {v1, p0, v7, p2, v5}, Lcom/android/gallery3d/app/PhotoPage$14;-><init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V

    .line 1664
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1665
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1666
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1668
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1669
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1670
    return-void

    .line 1639
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v5           #onlyShareAs2D:Z
    .end local v7           #shareIntent:Landroid/content/Intent;
    :cond_0
    const v6, 0x7f0c019f

    .line 1640
    const v4, 0x7f0c01a0

    .line 1641
    const v8, 0x7f0c019d

    .line 1642
    const v3, 0x7f0c019e

    goto :goto_0
.end method

.method private startCropIntent(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 1462
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1464
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1465
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->addMtkInclusion(Landroid/net/Uri;Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v2

    .line 1466
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1467
    invoke-static {p1}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1470
    return-void

    .line 1467
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private startEditIntent(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"
    .parameter "originUri"

    .prologue
    .line 1535
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1538
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "UriForSaving"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1543
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private switchStereoMode()V
    .locals 2

    .prologue
    .line 1406
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->isStereoStateReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1417
    :goto_0
    return-void

    .line 1411
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-nez v1, :cond_1

    .line 1412
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->onResetZoomedState()Z

    .line 1414
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    rsub-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    .line 1415
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    .line 1416
    .local v0, supportedOperations:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->setPhotoViewStereoMode(II)V

    goto :goto_0
.end method

.method private toggleBars()V
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_1

    .line 595
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_0
.end method

.method private updateBars()V
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 605
    :cond_0
    return-void
.end method

.method private updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 3
    .parameter "photo"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-ne v1, p1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 459
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 462
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateTitle()V

    .line 463
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails(I)V

    .line 471
    :cond_2
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_3

    .line 472
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    .line 473
    .local v0, supportedOperations:I
    const/high16 v1, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 474
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 479
    .end local v0           #supportedOperations:I
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->updateShareURI(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 476
    .restart local v0       #supportedOperations:I
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    goto :goto_1
.end method

.method private updateMenuOperations()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 495
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0b00f3

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 497
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 498
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canDoSlideShow()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 500
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    .line 502
    .local v1, supportedOperations:I
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/content/Context;

    const-string v3, "image/*"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 503
    and-int/lit16 v1, v1, -0x201

    .line 507
    :cond_3
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 513
    sget-boolean v2, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ:Z

    if-ne v4, v2, :cond_4

    .line 514
    const/high16 v2, 0x10

    or-int/2addr v1, v2

    .line 516
    :cond_4
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x1

    and-int/2addr v2, v1

    if-eqz v2, :cond_5

    .line 518
    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-ne v2, v4, :cond_6

    const/high16 v2, 0x2

    :goto_1
    or-int/2addr v1, v2

    .line 526
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    goto :goto_0

    .line 518
    :cond_6
    const/high16 v2, 0x4

    goto :goto_1

    .line 523
    :cond_7
    const v2, -0x10001

    and-int/2addr v1, v2

    goto :goto_2
.end method

.method private updateShareURI(Lcom/android/gallery3d/data/Path;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 429
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v3, :cond_1

    .line 430
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 431
    .local v1, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v2

    .line 432
    .local v2, type:I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v3, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 436
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    .line 437
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v3, 0x1

    new-array v5, v3, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 440
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPendingSharePath:Lcom/android/gallery3d/data/Path;

    .line 445
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v2           #type:I
    :goto_0
    return-void

    .line 443
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPendingSharePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 488
    .local v0, showTitle:Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wantBars()V
    .locals 1

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 591
    :cond_0
    return-void
.end method


# virtual methods
.method public disableBarChanges(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 1724
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisableBarChanges:Z

    .line 1725
    return-void
.end method

.method public lockOrientation()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 967
    return-void
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 724
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailAlbum;->notifyChange()V

    .line 725
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 976
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 977
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 978
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 983
    return-void
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 615
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->switchWithCaptureAnimation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 619
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_3

    .line 620
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 622
    :cond_3
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onChangedToStereoMode(Z)V
    .locals 3
    .parameter "stereoMode"

    .prologue
    .line 1375
    const-string v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedToStereoMode(stereoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 1389
    :cond_1
    :goto_0
    return-void

    .line 1384
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    if-nez v0, :cond_3

    .line 1385
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->onResetZoomedState()Z

    .line 1387
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStereoMode:I

    .line 1388
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperationsInViewThread()V

    goto :goto_0
.end method

.method public onCommitDeleteImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1036
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1038
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1039
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const v1, 0x7f0b0103

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 1040
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 14
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 221
    new-instance v1, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;Z)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 222
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 224
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/PhotoView;->setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V

    .line 226
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/ui/PhotoView;->setStereoModeChangeListener(Lcom/android/gallery3d/ui/PhotoView$StereoModeChangeListener;)V

    .line 229
    :cond_0
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_2

    .line 230
    :cond_1
    const-string v1, "GalleryDrmInclusion"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    .line 232
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmMicroThumbDim(Landroid/app/Activity;)I

    move-result v1

    sput v1, Lcom/android/gallery3d/app/PhotoPage;->sDrmMicroThumbDim:I

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 235
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 236
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 237
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/OrientationManager;->addListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 238
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 240
    const-string v1, "media-set-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 242
    const-string v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: original set path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 244
    const/4 v4, 0x0

    .line 245
    .local v4, itemPath:Lcom/android/gallery3d/data/Path;
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_9

    .line 246
    :cond_3
    const-string v1, "media-item-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 251
    :goto_0
    const-string v1, "treat-back-as-up"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    .line 253
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 254
    const-string v1, "app-bridge"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/AppBridge;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 255
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_4

    .line 256
    const-string v1, "PhotoPage"

    const-string v2, "onCreate: app bridge not null, is from camera!"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 258
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 261
    invoke-static {}, Lcom/android/gallery3d/data/SnailSource;->newId()I

    move-result v9

    .line 262
    .local v9, id:I
    invoke-static {v9}, Lcom/android/gallery3d/data/SnailSource;->getSetPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v13

    .line 263
    .local v13, screenNailSetPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v9}, Lcom/android/gallery3d/data/SnailSource;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v12

    .line 264
    .local v12, screenNailItemPath:Lcom/android/gallery3d/data/Path;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/SnailAlbum;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 266
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/SnailItem;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 268
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/combo/item/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 276
    move-object v4, v12

    .line 279
    iget v1, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 284
    .end local v9           #id:I
    .end local v12           #screenNailItemPath:Lcom/android/gallery3d/data/Path;
    .end local v13           #screenNailSetPath:Lcom/android/gallery3d/data/Path;
    :cond_4
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_a

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    .line 292
    .local v11, originalSet:Lcom/android/gallery3d/data/MediaSet;
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v11}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/filter/delete/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 295
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v1, :cond_b

    .line 296
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/FilterDeleteSet;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    .line 298
    const-string v1, "index-hint"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 305
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-nez v1, :cond_7

    .line 306
    const-string v1, "PhotoPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to restore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_7
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v6, :cond_c

    const/4 v6, -0x1

    :goto_3
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v7, :cond_d

    const/4 v7, 0x0

    :goto_4
    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZ)V

    .line 312
    .local v0, pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 313
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 315
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$2;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 378
    .end local v0           #pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    .end local v11           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :goto_5
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$3;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/PhotoPage$3;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 423
    if-nez p2, :cond_8

    .line 424
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const-string v1, "open-animation-rect"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/PhotoView;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 426
    :cond_8
    :goto_6
    return-void

    .line 249
    :cond_9
    const-string v1, "media-item-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto/16 :goto_0

    .line 288
    :cond_a
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    .restart local v11       #originalSet:Lcom/android/gallery3d/data/MediaSet;
    goto/16 :goto_1

    .line 300
    :cond_b
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/FilterDeleteSet;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    .line 302
    const-string v1, "index-hint"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    goto/16 :goto_2

    .line 308
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    :cond_d
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AppBridge;->isPanorama()Z

    move-result v7

    goto :goto_4

    .line 357
    .end local v11           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_e
    const/4 v10, 0x0

    .line 359
    .local v10, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v10

    .end local v10           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    check-cast v10, Lcom/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .restart local v10       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    if-nez v10, :cond_f

    .line 368
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0c020d

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 370
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_6

    .line 361
    .end local v10           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :catch_0
    move-exception v8

    .line 362
    .local v8, e:Ljava/lang/RuntimeException;
    const-string v1, "PhotoPage"

    const-string v2, "Exception in getMediaObject(): "

    invoke-static {v1, v2, v8}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    const-string v1, "PhotoPage"

    const-string v2, "quitting PhotoPage!"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_6

    .line 373
    .end local v8           #e:Ljava/lang/RuntimeException;
    .restart local v10       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_f
    new-instance v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {v1, v2, v3, v10}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 374
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 375
    invoke-direct {p0, v10}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_5
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 734
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 735
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f110007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 736
    invoke-static {p1}, Lcom/android/gallery3d/app/GalleryActionBar;->initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 739
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->addShareSelectedListener()V

    .line 741
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPendingSharePath:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPendingSharePath:Lcom/android/gallery3d/data/Path;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->updateShareURI(Lcom/android/gallery3d/data/Path;)V

    .line 742
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    .line 743
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 744
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateTitle()V

    .line 745
    const/4 v1, 0x1

    return v1
.end method

.method public onCurrentImageUpdated()V
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 1266
    return-void
.end method

.method public onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "offset"

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 1013
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    .line 1014
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 1020
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/android/gallery3d/data/Path;I)V

    .line 1022
    return-void

    .line 1014
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1295
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 1297
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1298
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->detachScreenNail()V

    .line 1299
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 1300
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 1301
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;->removeListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 1304
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 1308
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1311
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 1312
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 987
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 989
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 990
    return-void

    .end local v0           #m:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 987
    goto :goto_0
.end method

.method public onFullScreenChanged(ZI)V
    .locals 4
    .parameter "full"
    .parameter "type"

    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AppBridge;->setCameraAppEnable(Z)V

    .line 998
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1000
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1001
    return-void

    .line 998
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 17
    .parameter "item"

    .prologue
    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 770
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 772
    .local v4, current:Lcom/android/gallery3d/data/MediaItem;
    if-nez v4, :cond_0

    .line 774
    const/4 v14, 0x1

    .line 893
    :goto_0
    return v14

    .line 777
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v14}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v5

    .line 778
    .local v5, currentIndex:I
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v10

    .line 780
    .local v10, path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v14}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    .line 781
    .local v9, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 782
    .local v1, action:I
    const/4 v3, 0x0

    .line 783
    .local v3, confirmMsg:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 893
    const/4 v14, 0x0

    goto :goto_0

    .line 785
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 786
    const/4 v14, 0x1

    goto :goto_0

    .line 789
    :sswitch_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 790
    .local v6, data:Landroid/os/Bundle;
    const-string v14, "media-set-path"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v15}, Lcom/android/gallery3d/data/FilterDeleteSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v14, "media-item-path"

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v14, "photo-index"

    invoke-virtual {v6, v14, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 793
    const-string v14, "repeat"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 795
    sget-boolean v14, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-nez v14, :cond_1

    sget-boolean v14, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v14, :cond_2

    .line 796
    :cond_1
    const-string v14, "GalleryDrmInclusion"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 798
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v14}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v14

    const-class v15, Lcom/android/gallery3d/app/SlideshowPage;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v6}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 800
    const/4 v14, 0x1

    goto :goto_0

    .line 803
    .end local v6           #data:Landroid/os/Bundle;
    :sswitch_2
    sget-boolean v14, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v14, :cond_3

    invoke-static {v4}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->isStereoImage(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 804
    const-string v14, "PhotoPage"

    const-string v15, "onItemSelected:for stereo image, show dialog"

    invoke-static {v14, v15}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/app/PhotoPage;->showConvertCropDialog(Lcom/android/gallery3d/data/MediaItem;)V

    .line 806
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 808
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    .line 809
    .local v2, activity:Landroid/app/Activity;
    new-instance v8, Landroid/content/Intent;

    const-string v14, "com.android.camera.action.CROP"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    .local v8, intent:Landroid/content/Intent;
    const-class v14, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v8, v2, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 811
    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v13

    .line 812
    .local v13, uri:Landroid/net/Uri;
    invoke-static {v13, v10}, Lcom/mediatek/gallery3d/util/MediatekFeature;->addMtkInclusion(Landroid/net/Uri;Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v13

    .line 813
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 814
    invoke-static {v4}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x3

    :goto_1
    invoke-virtual {v2, v8, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 817
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 814
    :cond_4
    const/4 v14, 0x2

    goto :goto_1

    .line 820
    .end local v2           #activity:Landroid/app/Activity;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v13           #uri:Landroid/net/Uri;
    :sswitch_3
    sget-boolean v14, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v14, :cond_5

    invoke-static {v4}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->isStereoImage(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 821
    const-string v14, "PhotoPage"

    const-string v15, "onItemSelected:for stereo image, show dialog"

    invoke-static {v14, v15}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/app/PhotoPage;->showConvertEditDialog(Lcom/android/gallery3d/data/MediaItem;)V

    .line 823
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 825
    :cond_5
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.EDIT"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 828
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v14, Landroid/app/Activity;

    const/4 v15, 0x0

    invoke-static {v8, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 830
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 833
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v14, :cond_6

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 838
    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 836
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V

    goto :goto_2

    .line 841
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v14}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x7f10

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 849
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 850
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14, v10}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v3, v15}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 852
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 854
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14, v10}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v15, Lcom/android/gallery3d/ui/ImportCompleteListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v3, v15}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 858
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 862
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    .line 863
    .restart local v2       #activity:Landroid/app/Activity;
    new-instance v12, Landroid/content/Intent;

    const-string v14, "com.android.camera.action.PQ"

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    .local v12, pqIntent:Landroid/content/Intent;
    const-class v14, Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-virtual {v12, v2, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 865
    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 866
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 867
    .local v11, pqBundle:Landroid/os/Bundle;
    const-string v14, "PQUri"

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-virtual {v12, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 869
    const-string v14, "PhotoPage"

    const-string v15, "startActivity PQ"

    invoke-static {v14, v15}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v14, 0x6

    invoke-virtual {v2, v12, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 871
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 873
    .end local v2           #activity:Landroid/app/Activity;
    .end local v11           #pqBundle:Landroid/os/Bundle;
    .end local v12           #pqIntent:Landroid/content/Intent;
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->switchStereoMode()V

    .line 874
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 875
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 876
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 879
    :sswitch_a
    sget-boolean v14, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-nez v14, :cond_7

    .line 880
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 882
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v14, Landroid/content/Context;

    invoke-static {v14}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmManagerClient(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v7

    .line 884
    .local v7, drmManagerClient:Landroid/drm/DrmManagerClient;
    if-eqz v7, :cond_8

    .line 885
    const-string v14, "PhotoPage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onItemSelected:call manager to show info for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v14, Landroid/app/Activity;

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/drm/DrmManagerClient;->showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;

    .line 891
    :goto_3
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 889
    :cond_8
    const-string v14, "PhotoPage"

    const-string v15, "onItemSelected:get drm manager client failed!"

    invoke-static {v14, v15}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 783
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b00f3 -> :sswitch_1
        0x7f0b0102 -> :sswitch_7
        0x7f0b0103 -> :sswitch_5
        0x7f0b0104 -> :sswitch_3
        0x7f0b0105 -> :sswitch_6
        0x7f0b0106 -> :sswitch_6
        0x7f0b0107 -> :sswitch_6
        0x7f0b0108 -> :sswitch_2
        0x7f0b0109 -> :sswitch_6
        0x7f0b010a -> :sswitch_4
        0x7f0b010b -> :sswitch_a
        0x7f0b010c -> :sswitch_6
        0x7f0b010d -> :sswitch_9
        0x7f0b010e -> :sswitch_8
    .end sparse-switch
.end method

.method public onOrientationCompensationChanged()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 610
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1224
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 1225
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 1227
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 1228
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1229
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->preparePhotoFallbackView()V

    .line 1231
    :cond_0
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v2, :cond_1

    .line 1233
    const-string v2, "PhotoPage"

    const-string v3, "onPause:exit stero mode"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/PhotoView;->allowStereoMode(Z)V

    .line 1236
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/PhotoView;->setStereoMode(Z)V

    .line 1239
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 1240
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->pause()V

    .line 1241
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 1242
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1243
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1245
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 1246
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 1247
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/FilterDeleteSet;->clearDeletion()V

    .line 1248
    :cond_2
    sget-boolean v2, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v2, :cond_3

    .line 1250
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_3

    .line 1253
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1254
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;

    .line 1260
    :cond_3
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v2, :cond_4

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mShouldKeepLightsOutWhenResume:Z

    .line 1261
    return-void

    :cond_4
    move v0, v1

    .line 1260
    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1270
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 1271
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->freeze()V

    .line 1272
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 1273
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 1275
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 1276
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resume()V

    .line 1277
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    if-nez v0, :cond_0

    .line 1278
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 1280
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 1281
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1283
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasActivityResult:Z

    if-nez v0, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resetToFirstPicture()V

    .line 1286
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasActivityResult:Z

    .line 1287
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1290
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1291
    return-void

    :cond_2
    move v0, v2

    .line 1280
    goto :goto_0
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 1736
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v2, "index-hint"

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1737
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    .line 1738
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 1739
    .local v0, photoPath:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_0

    .line 1740
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    const-string v2, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    .end local v0           #photoPath:Lcom/android/gallery3d/data/Path;
    :cond_0
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 922
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v7, :cond_1

    .line 923
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v7, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v7, v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 927
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eq v2, v7, :cond_0

    .line 932
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_3

    move v3, v5

    .line 935
    .local v3, playVideo:Z
    :goto_1
    if-eqz v3, :cond_2

    .line 938
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v4

    .line 939
    .local v4, w:I
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 940
    .local v1, h:I
    div-int/lit8 v7, v4, 0x2

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    if-gt v7, v4, :cond_4

    div-int/lit8 v7, v1, 0x2

    sub-int v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    if-gt v7, v1, :cond_4

    move v3, v5

    .line 944
    .end local v1           #h:I
    .end local v4           #w:I
    :cond_2
    :goto_2
    if-eqz v3, :cond_5

    .line 945
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->handleMavPlayback(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 946
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .end local v3           #playVideo:Z
    :cond_3
    move v3, v6

    .line 932
    goto :goto_1

    .restart local v1       #h:I
    .restart local v3       #playVideo:Z
    .restart local v4       #w:I
    :cond_4
    move v3, v6

    .line 940
    goto :goto_2

    .line 949
    .end local v1           #h:I
    .end local v4           #w:I
    :cond_5
    sget-boolean v7, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-eqz v7, :cond_6

    .line 950
    const/4 v0, 0x0

    .line 952
    .local v0, consume:Z
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v4

    .line 953
    .restart local v4       #w:I
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 954
    .restart local v1       #h:I
    div-int/lit8 v7, v4, 0x2

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sget v8, Lcom/android/gallery3d/app/PhotoPage;->sDrmMicroThumbDim:I

    if-gt v7, v8, :cond_7

    div-int/lit8 v7, v1, 0x2

    sub-int v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sget v8, Lcom/android/gallery3d/app/PhotoPage;->sDrmMicroThumbDim:I

    if-gt v7, v8, :cond_7

    move v0, v5

    .line 956
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->tryConsumeDrmRights(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 960
    .end local v0           #consume:Z
    .end local v1           #h:I
    .end local v4           #w:I
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0

    .restart local v0       #consume:Z
    .restart local v1       #h:I
    .restart local v4       #w:I
    :cond_7
    move v0, v6

    .line 954
    goto :goto_3
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    .line 1137
    iput-boolean v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasActivityResult:Z

    .line 1138
    packed-switch p1, :pswitch_data_0

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1140
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1141
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 1143
    .local v4, photoEditPath:Lcom/android/gallery3d/data/Path;
    if-eqz v4, :cond_0

    .line 1144
    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1145
    .local v5, string:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1146
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v6, :cond_2

    .line 1147
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-static {v5, v7}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    iget v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v6, v7, v8}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 1150
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    iget v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v6, v7, v8}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 1156
    .end local v4           #photoEditPath:Lcom/android/gallery3d/data/Path;
    .end local v5           #string:Ljava/lang/String;
    :pswitch_1
    if-ne p2, v6, :cond_0

    .line 1157
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1161
    :pswitch_2
    if-ne p2, v6, :cond_0

    .line 1162
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1163
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f0c0223

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f0c025f

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1165
    .local v2, message:Ljava/lang/String;
    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1170
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_3
    if-eqz p3, :cond_0

    .line 1171
    const-string v6, "media-item-path"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1172
    .local v3, path:Ljava/lang/String;
    const-string v6, "photo-index"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1173
    .local v1, index:I
    if-eqz v3, :cond_0

    .line 1174
    sget-boolean v6, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/gallery3d/app/PhotoPage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v6, :cond_4

    .line 1175
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v7, p0, Lcom/android/gallery3d/app/PhotoPage;->mMtkInclusion:I

    invoke-static {v3, v7}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto/16 :goto_0

    .line 1178
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto/16 :goto_0

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onUndoDeleteImage()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setFocusHintPath(Lcom/android/gallery3d/data/Path;)V

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->removeDeletion(Lcom/android/gallery3d/data/Path;)V

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public renderFullPictureOnly(Z)V
    .locals 1
    .parameter "fullPictureOnly"

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->renderFullPictureOnly(Z)V

    .line 1731
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 699
    return-void
.end method

.method public setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setGestureListener(Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    return-object v0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 719
    return-void
.end method

.method public showDrmDialog(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    .line 1071
    sget-boolean v3, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1072
    :cond_0
    const-string v3, "PhotoPage"

    const-string v4, "showDrmDialog() is call for non-drm media!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :goto_0
    return-void

    .line 1075
    :cond_1
    instance-of v3, p2, Lcom/android/gallery3d/data/LocalVideo;

    if-eqz v3, :cond_2

    .line 1076
    const-string v3, "PhotoPage"

    const-string v4, "showDrmDialog:encoutered LocalVideo, ignor"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 1080
    check-cast v1, Lcom/android/gallery3d/data/LocalImage;

    .line 1082
    .local v1, imageItem:Lcom/android/gallery3d/data/LocalImage;
    iget-object v3, v1, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-static {p1, v3, v4}, Lcom/mediatek/gallery3d/drm/DrmHelper;->checkRightsStatusForTap(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1084
    .local v2, rights:I
    invoke-static {p1}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmManagerClient(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 1087
    .local v0, drmManagerClient:Landroid/drm/DrmManagerClient;
    if-nez v2, :cond_3

    .line 1088
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/gallery3d/app/PhotoPage$6;-><init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/drm/DrmManagerClient;Lcom/android/gallery3d/data/LocalImage;)V

    new-instance v4, Lcom/android/gallery3d/app/PhotoPage$7;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/PhotoPage$7;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-static {p1, v3, v4}, Landroid/drm/DrmManagerClient;->showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 1107
    :cond_3
    const/4 v3, 0x4

    if-ne v3, v2, :cond_4

    .line 1108
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$8;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$8;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    new-instance v4, Lcom/android/gallery3d/app/PhotoPage$9;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/PhotoPage$9;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-static {p1, v3, v4}, Landroid/drm/DrmManagerClient;->showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 1119
    :cond_4
    iget-object v3, v1, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Landroid/drm/DrmManagerClient;->showLicenseAcquisitionDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    .line 703
    const-string v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchWithCaptureAnimation: offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orig set path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->isFirstBoxReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 713
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result v0

    goto :goto_0
.end method

.method public tryConsumeDrmRights(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 1058
    instance-of v1, p1, Lcom/android/gallery3d/data/LocalVideo;

    if-eqz v1, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return v0

    .line 1061
    :cond_1
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoPage;->IS_DRM_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->enteredConsumeMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    .line 1063
    const-string v0, "PhotoPage"

    const-string v1, "tryConsumeDrmRights:show drm dialog"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/app/PhotoPage;->showDrmDialog(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)V

    .line 1065
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 972
    return-void
.end method

.method public updateMenuOperationsInViewThread()V
    .locals 2

    .prologue
    const/16 v1, 0x81

    .line 1392
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1393
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1394
    return-void
.end method
