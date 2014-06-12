.class Lcom/mediatek/gallery3d/mav/MavViewer$2;
.super Ljava/lang/Object;
.source "MavViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/mav/MavViewer;->showErrorAndQuit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/mav/MavViewer;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/mav/MavViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$2;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$2;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const v1, 0x7f0c0160

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$2;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->finish()V

    .line 392
    return-void
.end method
