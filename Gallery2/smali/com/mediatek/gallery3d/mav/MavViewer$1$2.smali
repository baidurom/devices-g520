.class Lcom/mediatek/gallery3d/mav/MavViewer$1$2;
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
    .line 270
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$2;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$2;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v0, v0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1000(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/gallery3d/mav/MAVView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$2;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v1, v1, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mFirstShowBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1500(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    return-void
.end method
