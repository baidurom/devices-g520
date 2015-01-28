.class Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 8
    .parameter "indexHint"

    .prologue
    const/4 v7, 0x0

    .line 721
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 722
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v5, v5, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 723
    .local v3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 724
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getActiveStart()I

    move-result v1

    .line 725
    .local v1, activeStart:I
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getActiveEnd()I

    move-result v0

    .line 727
    .local v0, activeEnd:I
    move v2, v1

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 728
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    .line 729
    .local v4, mediaSet:Lcom/android/gallery3d/data/MediaSet;
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

    .line 731
    iput v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 732
    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 742
    .end local v0           #activeEnd:I
    .end local v1           #activeStart:I
    .end local v2           #i:I
    .end local v3           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v4           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :goto_1
    return v5

    .line 727
    .restart local v0       #activeEnd:I
    .restart local v1       #activeStart:I
    .restart local v2       #i:I
    .restart local v3       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v4       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    .end local v0           #activeEnd:I
    .end local v1           #activeStart:I
    .end local v2           #i:I
    .end local v3           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v4           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getActiveStart()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 738
    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->isActive(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 739
    const/4 v5, -0x1

    goto :goto_1

    .line 742
    :cond_2
    iget v5, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    goto :goto_1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 748
    .local v0, item:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 750
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v1

    .line 752
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    return v0
.end method
