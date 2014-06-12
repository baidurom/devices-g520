.class Lcom/android/gallery3d/app/AlbumPage$6;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1400(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 596
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onLongTap(I)V

    .line 611
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1600(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 606
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .parameter "followedByLongPress"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$1500(Lcom/android/gallery3d/app/AlbumPage;Z)V

    .line 601
    return-void
.end method
