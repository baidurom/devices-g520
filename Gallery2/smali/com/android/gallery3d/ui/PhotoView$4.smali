.class Lcom/android/gallery3d/ui/PhotoView$4;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PhotoView;->enterCameraPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$4;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2005
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$4;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 2006
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    .line 2007
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 2009
    :cond_0
    return-void
.end method
