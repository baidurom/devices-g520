.class Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 685
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput-boolean v0, v3, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingFinished:Z

    .line 687
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v3, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1600(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 691
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 692
    .local v0, inSelectionMode:Z
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .line 693
    .local v1, setCount:I
    :goto_1
    const-string v2, "AlbumSetPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadingFinished: set count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v2, "AlbumSetPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadingFinished: inSelectionMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->onSourceContentChanged()V

    .line 696
    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 697
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 698
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 700
    :cond_0
    return-void

    .end local v0           #inSelectionMode:Z
    .end local v1           #setCount:I
    :cond_1
    move v0, v2

    .line 691
    goto :goto_0

    .restart local v0       #inSelectionMode:Z
    :cond_2
    move v1, v2

    .line 692
    goto :goto_1
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mLoadingFinished:Z

    .line 679
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1800(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 680
    return-void
.end method
