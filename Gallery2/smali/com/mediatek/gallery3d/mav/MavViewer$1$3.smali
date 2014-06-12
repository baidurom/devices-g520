.class Lcom/mediatek/gallery3d/mav/MavViewer$1$3;
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
    .line 298
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v0, v0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$000(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v0, v0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1000(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/gallery3d/mav/MAVView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v1, v1, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mFirstShowBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1500(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v0, v0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1000(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/gallery3d/mav/MAVView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mav/MAVView;->setResponsibility(Z)V

    .line 306
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v0, v0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v3, v3, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mStartDecodeTime:J
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1700(Lcom/mediatek/gallery3d/mav/MavViewer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mLoadFinishTime:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1602(Lcom/mediatek/gallery3d/mav/MavViewer;J)J

    .line 307
    const-string v0, "MavViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mav loading finished, elapsed time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;->this$1:Lcom/mediatek/gallery3d/mav/MavViewer$1;

    iget-object v2, v2, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mLoadFinishTime:J
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1600(Lcom/mediatek/gallery3d/mav/MavViewer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method
