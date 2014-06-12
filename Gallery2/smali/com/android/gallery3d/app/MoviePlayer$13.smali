.class Lcom/android/gallery3d/app/MoviePlayer$13;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;

.field final synthetic val$duration:I

.field final synthetic val$enableFasten:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;ZII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iput-boolean p2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->val$enableFasten:Z

    iput p3, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->val$position:I

    iput p4, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->val$duration:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue()V
    .locals 4

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->val$enableFasten:Z

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->val$position:I

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->val$duration:I

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZII)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$1800(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    .line 993
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mConsumedDrmRight:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1902(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 994
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 998
    return-void
.end method
