.class Lcom/mediatek/FMRadio/FMRadioActivity$7;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1904
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x3

    const/high16 v8, 0x4120

    .line 1906
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogInput:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    const v7, 0x7f06002a

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgStationName:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1907
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogInput:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    const v6, 0x7f06002c

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1908
    .local v3, newStationFreqStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgStationName:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5000(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 1909
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v7, 0x7f040017

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgStationName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1911
    :cond_0
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1916
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 1918
    .local v2, newStationFreq:F
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1922
    :goto_1
    mul-float v4, v2, v8

    .line 1923
    .local v4, tempStaionFreq:F
    mul-float v5, v2, v8

    float-to-int v1, v5

    .line 1924
    .local v1, newStation:I
    const/16 v5, 0x36b

    if-lt v1, v5, :cond_4

    const/16 v5, 0x438

    if-gt v1, v5, :cond_4

    int-to-float v5, v1

    sub-float v5, v4, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_4

    .line 1927
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v6, 0x2

    invoke-static {v5, v1, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v5, v1, v9}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1929
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgStationName:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5000(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1, v9}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/content/Context;Ljava/lang/String;II)V

    .line 1931
    :cond_2
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v5, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 1935
    :goto_2
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogInput:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->cancel()V

    .line 1936
    return-void

    .line 1913
    .end local v1           #newStation:I
    .end local v2           #newStationFreq:F
    .end local v4           #tempStaionFreq:F
    :cond_3
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1919
    .restart local v2       #newStationFreq:F
    :catch_0
    move-exception v0

    .line 1920
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1933
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #newStation:I
    .restart local v4       #tempStaionFreq:F
    :cond_4
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f04002d

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
