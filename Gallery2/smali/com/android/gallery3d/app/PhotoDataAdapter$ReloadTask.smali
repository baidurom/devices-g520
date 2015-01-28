.class Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1338
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1339
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1340
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1338
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method

.method private findCurrentMediaItem(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/android/gallery3d/data/MediaItem;
    .locals 4
    .parameter "info"

    .prologue
    .line 1448
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1449
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget v3, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v0, v2, v3

    .line 1450
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I
    .locals 4
    .parameter "info"
    .parameter "path"

    .prologue
    .line 1468
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1469
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1470
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 1471
    iget v3, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v3, v0

    .line 1474
    :goto_1
    return v3

    .line 1469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1474
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private findIndexOfTarget(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I
    .locals 5
    .parameter "info"

    .prologue
    .line 1454
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    if-nez v2, :cond_1

    iget v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1464
    :cond_0
    :goto_0
    return v0

    .line 1455
    :cond_1
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1458
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-eqz v1, :cond_2

    .line 1459
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I

    move-result v0

    .line 1460
    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1464
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v3, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    iget v4, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/android/gallery3d/data/Path;I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 1345
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 1348
    :goto_0
    return-void

    .line 1346
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    .line 1347
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 1438
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1439
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    monitor-exit p0

    return-void

    .line 1438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 1352
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_9

    .line 1353
    monitor-enter p0

    .line 1354
    :try_start_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_0

    .line 1355
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1356
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 1357
    monitor-exit p0

    goto :goto_0

    .line 1359
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1360
    iput-boolean v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1361
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v7, v8, v13}, Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 1362
    .local v1, info:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    sget-object v7, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 1363
    const/4 v6, 0x1

    :try_start_2
    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1364
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    .line 1365
    .local v4, version:J
    iget-wide v8, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_1

    .line 1366
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1367
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    iput v6, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 1370
    const-string v6, "PhotoDataAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ReloadTask] run: set="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", item count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    instance-of v6, v6, Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v6, :cond_1

    .line 1373
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/FilterDeleteSet;->getUnderlyingSet()Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 1374
    .local v3, underlyingSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v3, :cond_1

    instance-of v6, v3, Lcom/android/gallery3d/data/ComboAlbum;

    if-eqz v6, :cond_1

    .line 1375
    const-string v6, "PhotoDataAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ReloadTask] run: combo info="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast v3, Lcom/android/gallery3d/data/ComboAlbum;

    .end local v3           #underlyingSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/ComboAlbum;->getComboInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_1
    iget-boolean v6, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    if-nez v6, :cond_2

    monitor-exit v7

    goto/16 :goto_0

    .line 1431
    .end local v4           #version:J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1382
    .restart local v4       #version:J
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    iget v8, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget v9, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    invoke-virtual {v6, v8, v9}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1385
    const/4 v0, -0x1

    .line 1388
    .local v0, index:I
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1389
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I

    move-result v0

    .line 1390
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    const/4 v8, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v6, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2902(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 1394
    :cond_3
    if-ne v0, v11, :cond_4

    .line 1395
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 1396
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    iget-object v8, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/android/gallery3d/data/Path;

    if-ne v6, v8, :cond_8

    .line 1397
    iget v0, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1410
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    :goto_1
    if-ne v0, v11, :cond_5

    .line 1411
    iget v0, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1412
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I
    invoke-static {v6}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    if-ne v6, v10, :cond_5

    if-lez v0, :cond_5

    .line 1414
    add-int/lit8 v0, v0, -0x1

    .line 1425
    :cond_5
    iget v6, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    if-lez v6, :cond_7

    .line 1426
    iget v6, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    if-lt v0, v6, :cond_6

    .line 1427
    iget v6, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    add-int/lit8 v0, v6, -0x1

    .line 1429
    :cond_6
    iput v0, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1431
    :cond_7
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1433
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v7, v8, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1399
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_8
    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    goto :goto_1

    .line 1435
    .end local v0           #index:I
    .end local v1           #info:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #version:J
    :cond_9
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 1443
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1444
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    monitor-exit p0

    return-void

    .line 1443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
