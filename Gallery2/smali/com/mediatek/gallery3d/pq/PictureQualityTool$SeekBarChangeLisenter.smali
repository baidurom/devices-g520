.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;
.super Ljava/lang/Object;
.source "PictureQualityTool.java"

# interfaces
.implements Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarChangeLisenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 849
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 850
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpness:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sharpness:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 852
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 853
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalSat:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 855
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2602(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 856
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinTone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skin tone(Hue):   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 857
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 858
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3002(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 859
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassTone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grass tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 860
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 861
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3402(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 862
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyTone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 863
    :cond_5
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 864
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 865
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSat:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skin tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 866
    :cond_6
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 867
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 868
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSat:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grass tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 869
    :cond_7
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 870
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4602(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 871
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySat:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 872
    :cond_8
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 873
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$5000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4902(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 874
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$5100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hue:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 875
    :cond_9
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    if-ne v0, p1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$5300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$5202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I

    .line 877
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$5400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sat:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$5200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public startTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 884
    return-void
.end method

.method public stopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 890
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSharpAdjIndex(I)Z

    .line 891
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sharpness Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSharpAdjIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 893
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSatAdjIndex(I)Z

    .line 894
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 896
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSkinToneHIndex(I)Z

    .line 897
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkinTone Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneHIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 898
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$2900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 899
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetGrassToneHIndex(I)Z

    .line 900
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrassTone Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneHIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 901
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 902
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSkyToneHIndex(I)Z

    .line 903
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkyTone Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneHIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 904
    :cond_5
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 905
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$3800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSkinToneSIndex(I)Z

    goto/16 :goto_0

    .line 906
    :cond_6
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 907
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetGrassToneSIndex(I)Z

    goto/16 :goto_0

    .line 908
    :cond_7
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 909
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSkyToneSIndex(I)Z

    goto/16 :goto_0

    .line 910
    :cond_8
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$1000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 911
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$4900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetHueAdjIndex(I)Z

    goto/16 :goto_0

    .line 912
    :cond_9
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v0, v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    if-ne v0, p1, :cond_0

    .line 913
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$5200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSatAdjIndex(I)Z

    goto/16 :goto_0
.end method
