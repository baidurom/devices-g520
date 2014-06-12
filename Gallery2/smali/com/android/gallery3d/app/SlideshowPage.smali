.class public Lcom/android/gallery3d/app/SlideshowPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;,
        Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;,
        Lcom/android/gallery3d/app/SlideshowPage$Slide;,
        Lcom/android/gallery3d/app/SlideshowPage$Model;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

.field public static final KEY_DREAM:Ljava/lang/String; = "dream"

.field public static final KEY_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_PHOTO_INDEX:Ljava/lang/String; = "photo-index"

.field public static final KEY_RANDOM_ORDER:Ljava/lang/String; = "random-order"

.field public static final KEY_REPEAT:Ljava/lang/String; = "repeat"

.field public static final KEY_SET_PATH:Ljava/lang/String; = "media-set-path"

.field private static final MSG_LOAD_NEXT_BITMAP:I = 0x1

.field private static final MSG_SHOW_PENDING_BITMAP:I = 0x2

.field private static final SLIDESHOW_DELAY:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "SlideshowPage"


# instance fields
.field private mDrmInclusion:I

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

.field private mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/SlideshowPage;->IS_DRM_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 64
    iput v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDrmInclusion:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    .line 94
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    .line 97
    new-instance v0, Lcom/android/gallery3d/app/SlideshowPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SlideshowPage$1;-><init>(Lcom/android/gallery3d/app/SlideshowPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SlideshowPage;)Lcom/android/gallery3d/ui/SlideshowView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/app/SlideshowPage$Slide;)Lcom/android/gallery3d/app/SlideshowPage$Slide;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SlideshowPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method private static findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 6
    .parameter "mediaSet"
    .parameter "index"

    .prologue
    .line 247
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    .line 249
    .local v4, subset:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 250
    .local v0, count:I
    if-ge p1, v0, :cond_0

    .line 251
    invoke-static {v4, p1}, Lcom/android/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    .line 256
    .end local v0           #count:I
    .end local v4           #subset:Lcom/android/gallery3d/data/MediaSet;
    :goto_1
    return-object v5

    .line 253
    .restart local v0       #count:I
    .restart local v4       #subset:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    sub-int/2addr p1, v0

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v0           #count:I
    .end local v4           #subset:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 256
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_1
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 14
    .parameter "data"

    .prologue
    const/4 v13, -0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 200
    const-string v9, "random-order"

    invoke-virtual {p1, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 202
    .local v6, random:Z
    sget-boolean v9, Lcom/android/gallery3d/app/SlideshowPage;->IS_DRM_SUPPORTED:Z

    if-eqz v9, :cond_0

    .line 203
    const-string v9, "GalleryDrmInclusion"

    invoke-virtual {p1, v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDrmInclusion:I

    .line 207
    :cond_0
    const-string v9, "media-set-path"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, mediaPath:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {v2, v9}, Lcom/android/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    sget-boolean v9, Lcom/android/gallery3d/app/SlideshowPage;->IS_DRM_SUPPORTED:Z

    if-eqz v9, :cond_1

    .line 211
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/app/SlideshowPage;->mDrmInclusion:I

    invoke-virtual {v9, v2, v10}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 217
    :goto_0
    if-eqz v6, :cond_2

    .line 218
    const-string v9, "repeat"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 219
    .local v7, repeat:Z
    new-instance v9, Lcom/android/gallery3d/app/SlideshowDataAdapter;

    iget-object v10, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    new-instance v11, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;

    invoke-direct {v11, v3, v7}, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;-><init>(Lcom/android/gallery3d/data/MediaSet;Z)V

    invoke-direct {v9, v10, v11, v12, v8}, Lcom/android/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryContext;Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/android/gallery3d/data/Path;)V

    iput-object v9, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    .line 221
    iget-object v8, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v9, "photo-index"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v13, v8}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 238
    :goto_1
    return-void

    .line 214
    .end local v7           #repeat:Z
    :cond_1
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    goto :goto_0

    .line 223
    :cond_2
    const-string v9, "photo-index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, index:I
    const-string v9, "media-item-path"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, itemPath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 226
    .local v5, path:Lcom/android/gallery3d/data/Path;
    sget-boolean v9, Lcom/android/gallery3d/app/SlideshowPage;->IS_DRM_SUPPORTED:Z

    if-eqz v9, :cond_4

    .line 227
    const-string v9, "GalleryDrmInclusion"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 228
    .local v4, mtkInclusion:I
    if-eqz v1, :cond_3

    invoke-static {v1, v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 233
    .end local v4           #mtkInclusion:I
    :goto_2
    const-string v8, "repeat"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 234
    .restart local v7       #repeat:Z
    new-instance v8, Lcom/android/gallery3d/app/SlideshowDataAdapter;

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    new-instance v10, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;

    invoke-direct {v10, v3, v7}, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;-><init>(Lcom/android/gallery3d/data/MediaSet;Z)V

    invoke-direct {v8, v9, v10, v0, v5}, Lcom/android/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryContext;Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/android/gallery3d/data/Path;)V

    iput-object v8, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    .line 236
    iget-object v8, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v9, "photo-index"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v13, v8}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    goto :goto_1

    .end local v7           #repeat:Z
    .restart local v4       #mtkInclusion:I
    :cond_3
    move-object v5, v8

    .line 228
    goto :goto_2

    .line 230
    .end local v4           #mtkInclusion:I
    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    :goto_3
    goto :goto_2

    :cond_5
    move-object v5, v8

    goto :goto_3
.end method

.method private initializeViews()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/android/gallery3d/ui/SlideshowView;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlideshowView;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/SlideshowPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 244
    return-void
.end method

.method private loadNextBitmap()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    new-instance v1, Lcom/android/gallery3d/app/SlideshowPage$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/SlideshowPage$3;-><init>(Lcom/android/gallery3d/app/SlideshowPage;)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/SlideshowPage$Model;->nextSlide(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    .line 153
    return-void
.end method

.method private showPendingBitmap()V
    .locals 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    .line 160
    .local v0, slide:Lcom/android/gallery3d/app/SlideshowPage$Slide;
    if-nez v0, :cond_1

    .line 161
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    iget-object v2, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    iget v4, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->subType:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/SlideshowView;->next(Landroid/graphics/Bitmap;II)V

    .line 169
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v3, "media-item-path"

    iget-object v4, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photo-index"

    iget v4, v0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->index:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 172
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 120
    const-string v0, "dream"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 128
    :goto_0
    new-instance v0, Lcom/android/gallery3d/app/SlideshowPage$2;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SlideshowPage$2;-><init>(Lcom/android/gallery3d/app/SlideshowPage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->initializeViews()V

    .line 143
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SlideshowPage;->initializeData(Landroid/os/Bundle;)V

    .line 144
    return-void

    .line 125
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/SlideshowPage$Model;->pause()V

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlideshowView;->release()V

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mModel:Lcom/android/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/SlideshowPage$Model;->resume()V

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/android/gallery3d/app/SlideshowPage$Slide;

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    goto :goto_0
.end method
