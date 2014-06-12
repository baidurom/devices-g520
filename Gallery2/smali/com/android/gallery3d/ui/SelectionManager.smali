.class public Lcom/android/gallery3d/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
    }
.end annotation


# static fields
.field public static final DESELECT_ALL_MODE:I = 0x4

.field public static final ENTER_SELECTION_MODE:I = 0x1

.field public static final LEAVE_SELECTION_MODE:I = 0x2

.field public static final SELECT_ALL_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SelectionManager"


# instance fields
.field private mAutoLeave:Z

.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mInSelectionMode:Z

.field private mInverseSelection:Z

.field private mIsAlbumSet:Z

.field private mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

.field private mSelection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryContext;Z)V
    .locals 1
    .parameter "galleryContext"
    .parameter "isAlbumSet"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    .line 56
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 58
    iput-boolean p2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 60
    return-void
.end method

.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 10
    .parameter
    .parameter "set"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    .line 162
    .local v7, subCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 163
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    .line 166
    .local v8, total:I
    const/16 v0, 0x32

    .line 167
    .local v0, batch:I
    const/4 v4, 0x0

    .line 169
    .local v4, index:I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 170
    add-int v9, v4, v0

    if-ge v9, v8, :cond_1

    move v1, v0

    .line 173
    .local v1, count:I
    :goto_2
    invoke-virtual {p1, v4, v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 174
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 175
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 170
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_1
    sub-int v1, v8, v4

    goto :goto_2

    .line 177
    .restart local v1       #count:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_2
    add-int/2addr v4, v0

    .line 178
    goto :goto_1

    .line 179
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_3
    return-void
.end method

.method private getTotalCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 129
    :goto_0
    return v0

    .line 124
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    if-gez v0, :cond_1

    .line 125
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 129
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public deSelectAll()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 12
    .parameter "expandSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v7, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-boolean v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v10, :cond_5

    .line 184
    iget-boolean v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v10, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v9

    .line 186
    .local v9, total:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v9, :cond_9

    .line 187
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v10, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    .line 189
    .local v8, set:Lcom/android/gallery3d/data/MediaSet;
    if-nez v8, :cond_1

    .line 186
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 193
    .local v3, id:Lcom/android/gallery3d/data/Path;
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 194
    if-eqz p1, :cond_2

    .line 195
    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    .end local v1           #i:I
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    .end local v8           #set:Lcom/android/gallery3d/data/MediaSet;
    .end local v9           #total:I
    :cond_3
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 203
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    if-eqz p1, :cond_4

    .line 204
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v10, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_2

    .line 206
    :cond_4
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 211
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    :cond_5
    iget-boolean v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v10, :cond_8

    .line 212
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v9

    .line 213
    .restart local v9       #total:I
    const/4 v4, 0x0

    .line 214
    .local v4, index:I
    :goto_3
    if-ge v4, v9, :cond_9

    .line 215
    sub-int v10, v9, v4

    const/16 v11, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 216
    .local v0, count:I
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v10, v4, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 217
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 218
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 219
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 221
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    .end local v5           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_7
    add-int/2addr v4, v0

    .line 222
    goto :goto_3

    .line 224
    .end local v0           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v9           #total:I
    :cond_8
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 225
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 229
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    :cond_9
    return-object v7
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 134
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    sub-int v0, v1, v0

    .line 137
    :cond_0
    return v0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public isItemSelected(Lcom/android/gallery3d/data/Path;)Z
    .locals 2
    .parameter "itemId"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public leaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public onSourceContentChanged()V
    .locals 4

    .prologue
    .line 309
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 311
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v0

    .line 312
    .local v0, count:I
    const-string v1, "SelectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSourceContentChanged, new total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 316
    :cond_0
    return-void
.end method

.method public restoreSelection()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 253
    const-string v8, "SelectionManager"

    const-string v9, "restoreSelection"

    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-boolean v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    :goto_1
    iput v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 260
    const/4 v3, 0x0

    .line 261
    .local v3, id:Lcom/android/gallery3d/data/Path;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, availablePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-boolean v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v8, :cond_4

    .line 264
    const/4 v7, 0x0

    .line 265
    .local v7, set:Lcom/android/gallery3d/data/MediaSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    if-ge v1, v8, :cond_6

    .line 266
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v8, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    .line 267
    if-eqz v7, :cond_2

    .line 268
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 269
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 270
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 257
    .end local v0           #availablePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v1           #i:I
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    .end local v7           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_3
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    goto :goto_1

    .line 275
    .restart local v0       #availablePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget v9, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    invoke-virtual {v8, v10, v9}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 276
    .local v5, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 277
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaItem;

    .line 278
    .local v4, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 279
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 280
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 285
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 286
    .local v6, newCnt:I
    iget v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    if-ne v6, v8, :cond_8

    iget v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    if-eqz v8, :cond_8

    .line 288
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 303
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 304
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 291
    :cond_8
    iput-boolean v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 292
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 293
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    if-ge v1, v6, :cond_9

    .line 294
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 296
    :cond_9
    const-string v8, "wjx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mClickedSet.size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v8, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-nez v8, :cond_7

    .line 298
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_4
.end method

.method public saveSelection()V
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 242
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 66
    return-void
.end method

.method public setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    .line 70
    return-void
.end method

.method public setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 235
    return-void
.end method

.method public toggle(Lcom/android/gallery3d/data/Path;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 150
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V

    .line 155
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 158
    :cond_2
    return-void

    .line 144
    .end local v0           #count:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 145
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
