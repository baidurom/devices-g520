.class Lcom/mediatek/FMRadio/FMRadioActivity$5;
.super Landroid/os/Handler;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
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
    .line 761
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 770
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mHandler.handleMessage: what = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",hashcode:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->hashCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 972
    const-string v22, "FmRx/Activity"

    const-string v23, "invalid message"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    :goto_0
    const-string v22, "FmRx/Activity"

    const-string v23, "handleMessage"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :goto_1
    return-void

    .line 775
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshTimeText()V
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4100(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 782
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 783
    .local v2, bundle:Landroid/os/Bundle;
    const-string v22, "key_is_power_up"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 785
    .local v10, isPowerup:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 787
    .local v3, endTime:J
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Performance test][FMRadio] power up end ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateFMState: FMRadio is powerup = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4200(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 791
    if-eqz v10, :cond_1

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 801
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 797
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    const v24, 0x7f040020

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 806
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #endTime:J
    .end local v10           #isPowerup:Z
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 807
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v22, "key_is_switch_anntenna"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 809
    .local v12, isSwitch:Z
    if-nez v12, :cond_0

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4200(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1000(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/FragmentManager;

    move-result-object v22

    const-string v23, "NoAntenna"

    invoke-virtual/range {v22 .. v23}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v13

    check-cast v13, Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;

    .line 814
    .local v13, newFragment:Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;
    if-nez v13, :cond_2

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->showNoAntennaDialog()V

    .line 823
    .end local v13           #newFragment:Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 819
    :cond_3
    const-string v22, "FmRx/Activity"

    const-string v23, "need show no antenna dialog after onResume:"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    goto :goto_3

    .line 829
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v12           #isSwitch:Z
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 830
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v22, "key_is_power_down"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 832
    .local v9, isPowerdown:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    if-nez v9, :cond_4

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v23

    move/from16 v1, v22

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 834
    .restart local v3       #endTime:J
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Performance test][FMRadio] power down end ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 832
    .end local v3           #endTime:J
    :cond_4
    const/16 v22, 0x0

    goto :goto_4

    .line 843
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v9           #isPowerdown:Z
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 844
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v22, "key_is_tune"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 845
    .local v20, tuneFinish:Z
    const-string v22, "key_is_power_up"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 847
    .local v8, isPowerUp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v23

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    .end local v8           #isPowerUp:Z
    :cond_5
    move-object/from16 v0, v22

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 849
    .restart local v3       #endTime:J
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Performance test][FMRadio] increase frequency end ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Performance test][FMRadio] decrease frequency end ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Performance test][FMRadio] seek previous channel end ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Performance test][FMRadio] seek next channel end ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Performance test][FMRadio] open channel end ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4200(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 857
    if-nez v20, :cond_6

    .line 858
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mHandler.tune: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_1

    .line 865
    :cond_6
    const-string v22, "key_tune_to_station"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 866
    .local v6, frequency:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v23

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2202(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 880
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #endTime:J
    .end local v6           #frequency:F
    .end local v20           #tuneFinish:Z
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 882
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v22, "key_is_scan"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 883
    .local v11, isScan:Z
    const-string v22, "key_tune_to_station"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 884
    .local v21, tuneToStation:I
    const-string v22, "key_station_num"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 885
    .local v18, searchedNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 891
    if-nez v11, :cond_7

    .line 893
    const-string v22, "FmRx/Activity"

    const-string v23, "mHandler.scan canceled. not enter to channel list."

    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 897
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 898
    .restart local v3       #endTime:J
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[Performance test][FMRadio] scan channel end ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2202(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static/range {v23 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSearchDialog()V
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 910
    if-nez v18, :cond_8

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v23, v0

    const v24, 0x7f04002c

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 915
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->enterChannelList()V
    invoke-static/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4300(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v24, v0

    const v25, 0x7f04002b

    invoke-virtual/range {v24 .. v25}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 921
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #endTime:J
    .end local v11           #isScan:Z
    .end local v18           #searchedNum:I
    .end local v21           #tuneToStation:I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    goto/16 :goto_0

    .line 925
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 926
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v22, "key_rds_station"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 927
    .local v15, rdsStation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V
    invoke-static {v0, v15}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 932
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v15           #rdsStation:I
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 933
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v19, ""

    .line 934
    .local v19, text:Ljava/lang/String;
    const-string v22, "key_ps_info"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 935
    .local v14, psString:Ljava/lang/String;
    const-string v22, "key_rt_info"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 936
    .local v17, rtString:Ljava/lang/String;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_9

    .line 937
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 939
    :cond_9
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_b

    .line 940
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_a

    .line 941
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 943
    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 945
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showRDS(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4400(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 950
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v14           #psString:Ljava/lang/String;
    .end local v17           #rtString:Ljava/lang/String;
    .end local v19           #text:Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 951
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v22, "key_is_recording_state"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 953
    .local v16, recorderState:I
    const-string v22, "FmRx/Activity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "FMRadioActivity.mHandler: recorderState = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateRecordingState(I)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 959
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v16           #recorderState:I
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 960
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v22, "key_recording_error_type"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 962
    .local v5, errorState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateRecorderError(I)V
    invoke-static {v0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4600(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 966
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v5           #errorState:I
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 967
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v22, "key_is_recording_mode"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 969
    .local v7, isInRecordingMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->exitRecordingMode(Z)V
    invoke-static {v0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 773
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xd -> :sswitch_5
        0xf -> :sswitch_4
        0x65 -> :sswitch_0
        0x100010 -> :sswitch_7
        0x100011 -> :sswitch_8
        0x100100 -> :sswitch_8
        0x100101 -> :sswitch_9
        0x100110 -> :sswitch_a
        0x100111 -> :sswitch_b
    .end sparse-switch
.end method
