.class Lcom/android/gallery3d/app/MovieActivity$3;
.super Landroid/os/AsyncTask;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieActivity;->enhanceActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;

.field final synthetic val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

.field final synthetic val$scheme:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;Ljava/lang/String;Landroid/net/Uri;Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iput-object p2, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$scheme:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 407
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, title:Ljava/lang/String;
    const-string v1, "file"

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/video/MovieTitleHelper;->getTitleFromMediaData(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/mediatek/gallery3d/video/MovieTitleHelper;->getTitleFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_1
    const-string v1, "MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enhanceActionBar() task return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-object v0

    .line 413
    :cond_2
    const-string v1, "content"

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/video/MovieTitleHelper;->getTitleFromDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 415
    if-nez v0, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/video/MovieTitleHelper;->getTitleFromData(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 407
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieActivity$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 430
    const-string v0, "MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") movieItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMovieItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->setTitle(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$3;->val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method
