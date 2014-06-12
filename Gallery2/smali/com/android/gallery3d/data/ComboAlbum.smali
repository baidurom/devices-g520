.class public Lcom/android/gallery3d/data/ComboAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ComboAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboAlbum"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPath:Lcom/android/gallery3d/data/Path;

.field private final mSets:[Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;[Lcom/android/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "mediaSets"
    .parameter "name"

    .prologue
    .line 36
    invoke-static {}, Lcom/android/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/data/ComboAlbum;->mPath:Lcom/android/gallery3d/data/Path;

    .line 38
    iput-object p2, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 40
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    iput-object p3, p0, Lcom/android/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getComboInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v5, "combo {"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    array-length v5, v5

    if-nez v5, :cond_2

    .line 124
    :cond_0
    const-string v5, "[empty]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_1
    const-string v5, "}"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 127
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    if-nez v4, :cond_3

    .line 126
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v5, "; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v5, 0x1

    .line 50
    .local v5, isCameraComboSort:Z
    iget-object v11, p0, Lcom/android/gallery3d/data/ComboAlbum;->mPath:Lcom/android/gallery3d/data/Path;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    array-length v11, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/gallery3d/data/ComboAlbum;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/camera/Storage;->getCameraScreenNailPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    instance-of v11, v11, Lcom/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    instance-of v11, v11, Lcom/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v11, :cond_2

    const/4 v6, 0x1

    .line 54
    .local v6, isCameraSetPath:Z
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v8, v0

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v9, v0, v4

    .line 56
    .local v9, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v10

    .line 57
    .local v10, size:I
    const/4 v11, 0x1

    if-ge p2, v11, :cond_3

    .line 73
    .end local v9           #set:Lcom/android/gallery3d/data/MediaSet;
    .end local v10           #size:I
    :cond_0
    if-eqz v6, :cond_1

    .line 74
    sget-object v1, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 75
    .local v1, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {v7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    .end local v1           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_1
    return-object v7

    .line 50
    .end local v0           #arr$:[Lcom/android/gallery3d/data/MediaSet;
    .end local v4           #i$:I
    .end local v6           #isCameraSetPath:Z
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v8           #len$:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 58
    .restart local v0       #arr$:[Lcom/android/gallery3d/data/MediaSet;
    .restart local v4       #i$:I
    .restart local v6       #isCameraSetPath:Z
    .restart local v7       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .restart local v8       #len$:I
    .restart local v9       #set:Lcom/android/gallery3d/data/MediaSet;
    .restart local v10       #size:I
    :cond_3
    if-ge p1, v10, :cond_6

    .line 59
    add-int v11, p1, p2

    if-gt v11, v10, :cond_4

    move v2, p2

    .line 60
    .local v2, fetchCount:I
    :goto_2
    invoke-virtual {v9, p1, v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 61
    .local v3, fetchItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 63
    const/4 v5, 0x0

    .line 67
    :goto_3
    const/4 p1, 0x0

    .line 55
    .end local v2           #fetchCount:I
    .end local v3           #fetchItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    :cond_4
    sub-int v2, v10, p1

    goto :goto_2

    .line 65
    .restart local v2       #fetchCount:I
    .restart local v3       #fetchItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr p2, v11

    goto :goto_3

    .line 69
    .end local v2           #fetchCount:I
    .end local v3           #fetchItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_6
    sub-int/2addr p1, v10

    goto :goto_4
.end method

.method public getMediaItemCount()I
    .locals 6

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, count:I
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 84
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v4           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ComboAlbum;->notifyContentChanged()V

    .line 112
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    array-length v2, v5

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 103
    iget-object v5, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 104
    .local v3, version:J
    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    const/4 v0, 0x1

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v3           #version:J
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 107
    :cond_2
    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v5
.end method

.method public requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/data/ComboAlbum;->requestSyncOnMultipleSets([Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method
