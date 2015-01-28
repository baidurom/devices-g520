.class Lcom/android/gallery3d/app/MovieActivity$1;
.super Lcom/android/gallery3d/app/MoviePlayer;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Landroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    .prologue
    .line 100
    const-string v0, "MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion() mFinishOnCompletion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$000(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$000(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    :cond_0
    return-void
.end method
