.class Lcom/android/gallery3d/app/PhotoPage$14;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->showStereoShareDialog(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$item:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic val$onlyShareAs2D:Z

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$shareIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$item:Lcom/android/gallery3d/data/MediaItem;

    iput-boolean p4, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$onlyShareAs2D:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1652
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 1653
    const-string v0, "PhotoPage"

    const-string v1, "showStereoShareDialog:convert to 2D clicked!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$shareIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$item:Lcom/android/gallery3d/data/MediaItem;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->convertAndShare(Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3100(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;Lcom/android/gallery3d/data/MediaItem;)V

    .line 1661
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1662
    return-void

    .line 1656
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$onlyShareAs2D:Z

    if-nez v0, :cond_0

    .line 1657
    const-string v0, "PhotoPage"

    const-string v1, "showStereoShareDialog:start original intent!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$14;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$14;->val$shareIntent:Landroid/content/Intent;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->safeStartIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3200(Lcom/android/gallery3d/app/PhotoPage;Landroid/content/Intent;)V

    goto :goto_0
.end method
