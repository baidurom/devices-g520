.class Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 8
    .parameter "indexHint"

    .prologue
    const/4 v7, 0x0

    .line 897
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 898
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v5, v5, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 899
    .local v3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 900
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AlbumDataLoader;->getActiveStart()I

    move-result v1

    .line 901
    .local v1, activeStart:I
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AlbumDataLoader;->getActiveEnd()I

    move-result v0

    .line 903
    .local v0, activeEnd:I
    move v2, v1

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 904
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    .line 905
    .local v4, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 907
    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    .line 908
    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    .line 918
    .end local v0           #activeEnd:I
    .end local v1           #activeStart:I
    .end local v2           #i:I
    .end local v3           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v4           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :goto_1
    return v5

    .line 903
    .restart local v0       #activeEnd:I
    .restart local v1       #activeStart:I
    .restart local v2       #i:I
    .restart local v3       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v4       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    .end local v0           #activeEnd:I
    .end local v1           #activeStart:I
    .end local v2           #i:I
    .end local v3           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v4           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AlbumDataLoader;->getActiveStart()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    .line 914
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 915
    const/4 v5, -0x1

    goto :goto_1

    .line 918
    :cond_2
    iget v5, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    goto :goto_1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 922
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 923
    .local v0, item:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 924
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 925
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v1

    .line 927
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 890
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    return v0
.end method
