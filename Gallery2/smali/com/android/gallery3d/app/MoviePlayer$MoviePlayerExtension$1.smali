.class Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->showDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V
    .locals 0
    .parameter

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1403
    const-string v0, "MoviePlayer"

    const-string v1, "showDetail.onShow()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension$1;->this$1:Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;

    #calls: Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->pauseIfNeed()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;->access$3400(Lcom/android/gallery3d/app/MoviePlayer$MoviePlayerExtension;)V

    .line 1406
    return-void
.end method
