.class Lcom/android/gallery3d/app/PhotoPage$10;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->showConvertCropDialog(Lcom/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$item:Lcom/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$10;->val$item:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1439
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->val$item:Lcom/android/gallery3d/data/MediaItem;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->startCropIntent(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2500(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 1444
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1445
    return-void
.end method