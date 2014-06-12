.class Lcom/mediatek/gallery3d/mav/MavViewer$1$1;
.super Ljava/lang/Object;
.source "MavViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/mav/MavViewer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/mav/MavViewer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$1;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$1;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v0, v0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$000(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    return-void
.end method
