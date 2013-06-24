.class Lcom/mediatek/FMRadio/FMRadioEMActivity$4;
.super Landroid/os/Handler;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 348
    const-string v5, "FmRx/EM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> handleMessage what: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    const-string v5, "FmRx/EM"

    const-string v6, "Warning: app is being destroyed."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v5, "FmRx/EM"

    const-string v6, "<<< handleMessage"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-void

    .line 355
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 421
    const-string v5, "FmRx/EM"

    const-string v6, "invalid view id"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    :goto_1
    const-string v5, "FmRx/EM"

    const-string v6, "<<< handleMessage"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :sswitch_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getChipId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getEcoVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPatchVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getDspVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 363
    :sswitch_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 364
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "%d%%"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v8}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readRdsBler()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "%d"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v8}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readRssi()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStereoMono()Z

    move-result v4

    .line 367
    .local v4, stereo:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v4, :cond_3

    const-string v5, "Stereo"

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 369
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .end local v4           #stereo:Z
    :cond_2
    :goto_3
    const/16 v2, 0x12c

    .line 375
    .local v2, interval:I
    const/4 v5, 0x6

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 367
    .end local v2           #interval:I
    .restart local v4       #stereo:Z
    :cond_3
    const-string v5, "Mono"

    goto :goto_2

    .line 371
    :cond_4
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readCapArray()I

    move-result v7

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->formatCapArray(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 379
    .end local v4           #stereo:Z
    :sswitch_2
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isSpeakerUsed()Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 381
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;

    move-result-object v5

    const v6, 0x7f060019

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 386
    :goto_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 387
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v6, "key_is_power_up"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 388
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v5, v9}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    goto/16 :goto_1

    .line 384
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_5
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;

    move-result-object v5

    const v6, 0x7f06001a

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    .line 393
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 394
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v5, "key_is_switch_anntenna"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 395
    .local v3, isSwitch:Z
    if-eqz v3, :cond_1

    .line 397
    const-string v5, "FmRx/EM"

    const-string v6, "mHandler. switch anntenna ok"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 401
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #isSwitch:Z
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 402
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v5, "key_tune_to_station"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 403
    .local v1, frequency:F
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I

    .line 406
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v5, v9}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    goto/16 :goto_1

    .line 411
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #frequency:F
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 412
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v6, "key_ps_info"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v6, "key_rt_info"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->showRDS()V
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    goto/16 :goto_1

    .line 417
    .end local v0           #bundle:Landroid/os/Bundle;
    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 418
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v6, "key_rds_station"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I

    goto/16 :goto_1

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x9 -> :sswitch_2
        0xf -> :sswitch_4
        0x100010 -> :sswitch_6
        0x100011 -> :sswitch_5
        0x100100 -> :sswitch_5
    .end sparse-switch
.end method
