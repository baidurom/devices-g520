.class public Lcom/android/gallery3d/data/ClusterAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# static fields
.field private static final MAX_LOAD_COUNT_CLUSTER_ALBUM:I = 0x40

.field private static final TAG:Ljava/lang/String; = "ClusterAlbumSet"

.field public static currentIndexOfSet:I


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mFirstReloadDone:Z

.field private mKind:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "baseSet"
    .parameter "kind"

    .prologue
    .line 41
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 42
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 43
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 44
    iput p4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    .line 45
    invoke-virtual {p3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 46
    return-void
.end method

.method private updateClusters()V
    .locals 13

    .prologue
    .line 103
    const-string v10, "ClusterAlbumSet"

    const-string v11, "updateClusters"

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 107
    .local v4, context:Landroid/content/Context;
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    packed-switch v10, :pswitch_data_0

    .line 121
    :pswitch_0
    new-instance v3, Lcom/android/gallery3d/data/SizeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/SizeClustering;-><init>(Landroid/content/Context;)V

    .line 125
    .local v3, clustering:Lcom/android/gallery3d/data/Clustering;
    :goto_0
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/Clustering;->run(Lcom/android/gallery3d/data/MediaSet;)V

    .line 126
    invoke-virtual {v3}, Lcom/android/gallery3d/data/Clustering;->getNumberOfClusters()I

    move-result v9

    .line 127
    .local v9, n:I
    const-string v10, "ClusterAlbumSet"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "number of clusters: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    .line 129
    .local v5, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_3

    .line 131
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, childName:Ljava/lang/String;
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 133
    iget-object v10, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 140
    .local v2, childPath:Lcom/android/gallery3d/data/Path;
    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 142
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-direct {v0, v2, v5, p0}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 145
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_0
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterCover(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 148
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 109
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    .end local v5           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v6           #i:I
    .end local v9           #n:I
    :pswitch_1
    new-instance v3, Lcom/android/gallery3d/data/TimeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TimeClustering;-><init>(Landroid/content/Context;)V

    .line 110
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 112
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_2
    new-instance v3, Lcom/android/gallery3d/data/LocationClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;)V

    .line 113
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 115
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_3
    new-instance v3, Lcom/android/gallery3d/data/TagClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TagClustering;-><init>(Landroid/content/Context;)V

    .line 116
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 118
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_4
    new-instance v3, Lcom/android/gallery3d/data/FaceClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;)V

    .line 119
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_0

    .line 134
    .restart local v1       #childName:Ljava/lang/String;
    .restart local v5       #dataManager:Lcom/android/gallery3d/data/DataManager;
    .restart local v6       #i:I
    .restart local v9       #n:I
    :cond_1
    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    move-object v10, v3

    .line 135
    check-cast v10, Lcom/android/gallery3d/data/SizeClustering;

    invoke-virtual {v10, v6}, Lcom/android/gallery3d/data/SizeClustering;->getMinSize(I)J

    move-result-wide v7

    .line 136
    .local v7, minSize:J
    iget-object v10, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v7, v8}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 137
    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 138
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v7           #minSize:J
    :cond_2
    iget-object v10, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10, v6}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 150
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateClustersContents()V
    .locals 19

    .prologue
    .line 153
    const-string v16, "ClusterAlbumSet"

    const-string v17, "updateClusterContents"

    invoke-static/range {v16 .. v17}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v4, existing:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v5, existingMediaItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/gallery3d/data/ClusterAlbumSet$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5}, Lcom/android/gallery3d/data/ClusterAlbumSet$1;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Ljava/util/HashSet;Ljava/util/HashMap;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 164
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v12, oldPathHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    const/4 v3, 0x0

    .line 167
    .local v3, deletedItem:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 170
    .local v10, n:I
    add-int/lit8 v6, v10, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 173
    .local v13, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v11, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 176
    .local v8, m:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 177
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/gallery3d/data/Path;

    .line 179
    .local v14, p:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v4, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 181
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 183
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 186
    .end local v14           #p:Lcom/android/gallery3d/data/Path;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/gallery3d/data/ClusterAlbum;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 188
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 193
    .end local v7           #j:I
    .end local v8           #m:I
    .end local v11           #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v13           #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v16

    add-int v16, v16, v3

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v2, addedPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    .local v9, mNewPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 198
    .local v15, sizeOfExistingPath:I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v15, :cond_5

    .line 199
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 200
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v17, "ClusterAlbumSet"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " addedPath=="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/gallery3d/data/Path;

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 205
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->setCurrentIndexOfSet()V

    .line 206
    const-string v16, "ClusterAlbumSet"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " offsetOFStack=="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " currentIndexOfSet="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    .line 208
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateAlbumInClusters(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 218
    .end local v2           #addedPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v9           #mNewPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v15           #sizeOfExistingPath:I
    :cond_6
    return-void

    .line 210
    .restart local v2       #addedPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v9       #mNewPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v15       #sizeOfExistingPath:I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v6, v16, -0x1

    :goto_4
    if-ltz v6, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersion()J

    .line 212
    add-int/lit8 v6, v6, -0x1

    goto :goto_4
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 100
    return-void
.end method

.method public reload()J
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 66
    iget-boolean v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/LocalAlbumSet;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/MtpDeviceSet;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/ComboAlbumSet;

    if-eqz v5, :cond_2

    :cond_0
    move v2, v3

    .line 70
    .local v2, needSyncAlbum:Z
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/ClusterAlbum;

    if-eqz v5, :cond_1

    .line 72
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    iget v6, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    .line 76
    :cond_1
    iget v5, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->synchronizedAlbumData()J

    move-result-wide v0

    .line 78
    .local v0, mLastDataVersion:J
    :goto_1
    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v5, v0, v5

    if-lez v5, :cond_5

    .line 79
    const-string v5, "ClusterAlbumSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "total media item count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-boolean v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v5, :cond_4

    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    .line 86
    :goto_2
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 91
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mCurrentClusterAlbum:Lcom/android/gallery3d/data/MediaSet;

    .line 92
    iput v4, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    .line 93
    const/4 v3, -0x1

    sput v3, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    .line 95
    iget-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v3

    .end local v0           #mLastDataVersion:J
    .end local v2           #needSyncAlbum:Z
    :cond_2
    move v2, v4

    .line 66
    goto :goto_0

    .line 76
    .restart local v2       #needSyncAlbum:Z
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    goto :goto_1

    .line 83
    .restart local v0       #mLastDataVersion:J
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 84
    iput-boolean v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    goto :goto_2

    .line 88
    :cond_5
    const-string v3, "ClusterAlbumSet"

    const-string v5, "ClusterAlbumSet: mBaseSet.reload() <= mDataVersion"

    invoke-static {v3, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setCurrentIndexOfSet()V
    .locals 5

    .prologue
    .line 222
    iget-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 223
    .local v0, albumSize:I
    iget-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mCurrentClusterAlbum:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v3, :cond_1

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, hasFindSet:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 226
    iget-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/MediaSet;->mCurrentClusterAlbum:Lcom/android/gallery3d/data/MediaSet;

    if-ne v3, v4, :cond_2

    .line 227
    sput v2, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    .line 228
    const/4 v1, 0x1

    .line 232
    :cond_0
    if-nez v1, :cond_1

    .line 233
    const/4 v3, 0x0

    sput v3, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    .line 234
    const-string v3, "ClusterAlbumSet"

    const-string v4, "[setCurrentIndexOfSet]: has not find set"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v1           #hasFindSet:Z
    .end local v2           #i:I
    :cond_1
    return-void

    .line 225
    .restart local v1       #hasFindSet:Z
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public synchronizedAlbumData()J
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->synchronizedAlbumData()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    .line 280
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 282
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public updateAlbumInClusters(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .local p2, exisingMediaItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 243
    sget v8, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    sget v8, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    if-ltz v8, :cond_3

    .line 246
    :try_start_0
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    sget v10, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    iget-object v8, v8, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    .line 247
    .local v4, mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    .line 248
    .local v6, sizeOfOldMediaItems:I
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 249
    .local v5, mOldItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 251
    .local v7, sizeofAddPaths:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v7, :cond_3

    .line 252
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 253
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v3, 0x0

    .line 254
    .local v3, k:I
    :goto_1
    if-ge v3, v6, :cond_0

    .line 255
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v9

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v11

    cmp-long v8, v9, v11

    if-nez v8, :cond_2

    .line 256
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    sget v9, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8, v9, v3}, Lcom/android/gallery3d/data/ClusterAlbum;->addMediaItems(Lcom/android/gallery3d/data/Path;I)V

    .line 257
    const-string v9, "ClusterAlbumSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add Path::"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "  index:::::"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    if-ne v3, v6, :cond_1

    .line 263
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    sget v9, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/Path;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->addMediaItems(Lcom/android/gallery3d/data/Path;I)V

    .line 264
    const-string v9, "ClusterAlbumSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add Path::"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " the end index:::::"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 254
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 267
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v2           #j:I
    .end local v3           #k:I
    .end local v4           #mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v5           #mOldItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v6           #sizeOfOldMediaItems:I
    .end local v7           #sizeofAddPaths:I
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "ClusterAlbumSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " maybe sizeOldMediaItems is too big:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    const-string v8, "ClusterAlbumSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentIndexOfSet=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_4
    return-void
.end method
