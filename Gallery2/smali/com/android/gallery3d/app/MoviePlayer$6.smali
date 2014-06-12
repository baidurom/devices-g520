.class Lcom/android/gallery3d/app/MoviePlayer$6;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 197
    .local v1, finish:Z
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v2

    xor-int v0, v2, p1

    .line 198
    .local v0, diff:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I
    invoke-static {v2, p1}, Lcom/android/gallery3d/app/MoviePlayer;->access$802(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 199
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 220
    :cond_0
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSystemUiVisibilityChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") finishing()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 196
    .end local v0           #diff:I
    .end local v1           #finish:Z
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mActivityContext:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$700(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieActivity;->isFinishing()Z

    move-result v1

    goto :goto_0
.end method
