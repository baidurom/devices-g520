.class public Lcom/android/gallery3d/gadget/MediaSetSource;
.super Ljava/lang/Object;
.source "MediaSetSource.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;
.implements Lcom/android/gallery3d/gadget/WidgetSource;


# static fields
.field private static final CACHE_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "MediaSetSource"


# instance fields
.field private mCache:[Lcom/android/gallery3d/data/MediaItem;

.field private mCacheEnd:I

.field private mCacheStart:I

.field private mContentListener:Lcom/android/gallery3d/data/ContentListener;

.field private mSource:Lcom/android/gallery3d/data/MediaSet;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSourceVersion:J

    .line 48
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 50
    return-void
.end method

.method private ensureCacheRange(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 58
    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    if-ge p1, v3, :cond_0

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 62
    .local v1, token:J
    :try_start_0
    iput p1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    .line 63
    iget-object v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget v4, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    .line 65
    iget-object v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 55
    return-void
.end method

.method public declared-synchronized getContentUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "index"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/MediaSetSource;->ensureCacheRange(I)V

    .line 74
    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    if-lt p1, v0, :cond_2

    .line 75
    :cond_0
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MtkLog;->DBG:Z

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "MediaSetSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContentUri: index out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    .line 81
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    iget v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "index"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/MediaSetSource;->ensureCacheRange(I)V

    .line 87
    iget v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    if-lt p1, v1, :cond_2

    .line 88
    :cond_0
    sget-boolean v1, Lcom/mediatek/gallery3d/util/MtkLog;->DBG:Z

    if-eqz v1, :cond_1

    .line 89
    const-string v1, "MediaSetSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImage: index out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    const/4 v1, 0x0

    .line 97
    :goto_0
    monitor-exit p0

    return-object v1

    .line 93
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/mediatek/gallery3d/util/MtkLog;->DBG:Z

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    iget v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    sub-int v2, p1, v2

    aget-object v0, v1, v2

    .line 95
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    const-string v2, "MediaSetSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImage: mediaitem="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_4

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    iget v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    sub-int v2, p1, v2

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/gallery3d/gadget/WidgetUtils;->createWidgetBitmap(Lcom/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 95
    .restart local v0       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 86
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onContentDirty()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    invoke-interface {v0}, Lcom/android/gallery3d/data/ContentListener;->onContentDirty()V

    .line 130
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    .line 103
    .local v0, version:J
    iget-wide v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSourceVersion:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 104
    const-string v2, "MediaSetSource"

    const-string v3, "reload: new data version!"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-wide v0, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSourceVersion:J

    .line 106
    iput v4, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheStart:I

    .line 107
    iput v4, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCacheEnd:I

    .line 108
    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mCache:[Lcom/android/gallery3d/data/MediaItem;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    .line 115
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 121
    .local v0, token:J
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/gadget/MediaSetSource;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 123
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
