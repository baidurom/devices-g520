.class public Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x60

.field private static final PLACEHOLDER_COLOR:I = -0xddddde

.field private static final TAG:Ljava/lang/String; = "AlbumView"


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mAnimatePressedUp:Z

.field private mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 3
    .parameter "activity"
    .parameter "slotView"
    .parameter "selectionManager"

    .prologue
    const/4 v2, 0x1

    .line 55
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 57
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 58
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 60
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 96
    instance-of v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method private renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 3
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, renderRequestFlags:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_2

    .line 149
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 151
    or-int/lit8 v0, v0, 0x2

    .line 152
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 154
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_3

    .line 160
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 161
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0
.end method


# virtual methods
.method public onSlotSizeChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 205
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 200
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->pause()V

    .line 188
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    .line 193
    return-void
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I
    .locals 13
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    invoke-interface {v2, p2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v12, 0x0

    .line 142
    :goto_0
    return v12

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v2, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v11

    .line 108
    .local v11, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    const/4 v12, 0x0

    .line 110
    .local v12, renderRequestFlags:I
    iget-object v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v4

    .line 111
    .local v4, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v4, :cond_5

    .line 112
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 119
    :cond_1
    :goto_1
    iget v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->subType:I

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->permitShowThumb(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 120
    iget v7, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 124
    :goto_2
    instance-of v2, v4, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v2, :cond_2

    check-cast v4, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v4           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/FadeTexture;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    or-int/lit8 v12, v12, 0x2

    .line 129
    :cond_2
    iget v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 130
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 133
    :cond_3
    iget-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    if-eqz v2, :cond_4

    .line 134
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPanoramaBorder(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->subType:I

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, p1, v0, v1, v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->renderSubTypeOverlay(Landroid/content/Context;Lcom/android/gallery3d/ui/GLCanvas;III)V

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, v11

    move/from16 v9, p4

    move/from16 v10, p5

    .line 140
    invoke-direct/range {v5 .. v10}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v2

    or-int/2addr v12, v2

    .line 142
    goto :goto_0

    .line 114
    .restart local v4       #content:Lcom/android/gallery3d/ui/Texture;
    :cond_5
    iget-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v2, :cond_1

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 116
    new-instance v4, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v4           #content:Lcom/android/gallery3d/ui/Texture;
    const v2, -0xddddde

    iget-object v3, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v4, v2, v3}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    .line 117
    .restart local v4       #content:Lcom/android/gallery3d/ui/Texture;
    iput-object v4, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    goto :goto_1

    .line 122
    :cond_6
    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    iget v10, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v5, p0

    move-object v6, p1

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    goto :goto_2
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->resume()V

    .line 184
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 4
    .parameter "model"

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 86
    iput-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 88
    :cond_0
    if-eqz p1, :cond_1

    .line 89
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/16 v2, 0x60

    invoke-direct {v0, v1, p1, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/app/AlbumDataLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 93
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0
    .parameter "slotFilter"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .line 209
    return-void
.end method
