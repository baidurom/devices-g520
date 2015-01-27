.class Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 812
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 7
    .parameter "jc"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 818
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    .line 819
    .local v1, s:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 839
    :cond_0
    :goto_0
    return-object v3

    .line 823
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z
    invoke-static {v4, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 824
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$500(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    goto :goto_0

    .line 827
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 828
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 829
    if-eqz v0, :cond_3

    .line 830
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v4, v6}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 834
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v4, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    .line 835
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v2, :cond_4

    move-object v3, v2

    .line 836
    goto :goto_0

    .line 839
    :cond_4
    if-eqz v0, :cond_0

    new-instance v3, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v3, v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 807
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method
