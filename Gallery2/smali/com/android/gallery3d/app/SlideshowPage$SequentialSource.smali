.class Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialSource"
.end annotation


# static fields
.field private static final DATA_SIZE:I = 0x20


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataStart:I

.field private mDataVersion:J

.field private final mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private final mRepeat:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;Z)V
    .locals 2
    .parameter "mediaSet"
    .parameter "repeat"

    .prologue
    .line 333
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    .line 329
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 334
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 335
    iput-boolean p2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mRepeat:Z

    .line 336
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 370
    return-void
.end method

.method public findItemIndex(Lcom/android/gallery3d/data/Path;I)I
    .locals 1
    .parameter "path"
    .parameter "hint"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/android/gallery3d/data/Path;I)I

    move-result v0

    return v0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 343
    iget v3, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    iget-object v4, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v1, v3, v4

    .line 345
    .local v1, dataEnd:I
    iget-boolean v3, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mRepeat:Z

    if-eqz v3, :cond_2

    .line 346
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 347
    .local v0, count:I
    if-nez v0, :cond_1

    .line 356
    .end local v0           #count:I
    :cond_0
    :goto_0
    return-object v2

    .line 348
    .restart local v0       #count:I
    :cond_1
    rem-int/2addr p1, v0

    .line 350
    .end local v0           #count:I
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v3, :cond_3

    if-lt p1, v1, :cond_4

    .line 351
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v4, 0x20

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    .line 352
    iput p1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    .line 353
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v1, p1, v3

    .line 356
    :cond_4
    iget v3, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v3, :cond_0

    if-ge p1, v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    .line 361
    .local v0, version:J
    iget-wide v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 362
    iput-wide v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 363
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 365
    :cond_0
    iget-wide v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    return-wide v2
.end method

.method public removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 374
    return-void
.end method