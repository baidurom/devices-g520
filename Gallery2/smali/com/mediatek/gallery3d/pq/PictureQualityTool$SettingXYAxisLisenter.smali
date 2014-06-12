.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;
.super Ljava/lang/Object;
.source "PictureQualityTool.java"

# interfaces
.implements Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingXYAxisLisenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAxisIndex(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 796
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAxisIndex]  x== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   y=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {p1}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetXAxisIndex(I)Z

    .line 798
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {p2}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetYAxisIndex(I)Z

    .line 800
    return-void
.end method
