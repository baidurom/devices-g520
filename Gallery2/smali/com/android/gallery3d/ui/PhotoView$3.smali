.class Lcom/android/gallery3d/ui/PhotoView$3;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PhotoView;->leaveCameraPreview()V
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
    .line 1986
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->unlockOrientation()V

    .line 1990
    return-void
.end method
