.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;
.super Ljava/lang/Object;
.source "PictureQualityTool.java"

# interfaces
.implements Lcom/mediatek/gallery3d/pq/SetViewVisible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibleLisenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVisible(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 807
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 809
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 810
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 811
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 813
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, v1, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 814
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 815
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 816
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 818
    :cond_1
    return-void
.end method
