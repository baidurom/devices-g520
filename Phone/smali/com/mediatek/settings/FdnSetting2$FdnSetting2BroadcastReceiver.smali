.class Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FdnSetting2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/FdnSetting2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FdnSetting2BroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/FdnSetting2;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/FdnSetting2;Lcom/mediatek/settings/FdnSetting2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;-><init>(Lcom/mediatek/settings/FdnSetting2;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 580
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 583
    const-string v5, "state"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 589
    .local v1, bDisable:Z
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    if-nez v1, :cond_1

    :goto_0
    #calls: Lcom/mediatek/settings/FdnSetting2;->updateMenuEnableState(Z)V
    invoke-static {v5, v3}, Lcom/mediatek/settings/FdnSetting2;->access$900(Lcom/mediatek/settings/FdnSetting2;Z)V

    .line 612
    .end local v1           #bDisable:Z
    :cond_0
    :goto_1
    return-void

    .restart local v1       #bDisable:Z
    :cond_1
    move v3, v4

    .line 589
    goto :goto_0

    .line 591
    .end local v1           #bDisable:Z
    :cond_2
    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 592
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    invoke-virtual {v5}, Lcom/mediatek/settings/FdnSetting2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v3, :cond_3

    const-string v5, "mode"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v1, v3

    .line 595
    .restart local v1       #bDisable:Z
    :goto_2
    iget-object v5, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    if-nez v1, :cond_5

    :goto_3
    #calls: Lcom/mediatek/settings/FdnSetting2;->updateMenuEnableState(Z)V
    invoke-static {v5, v3}, Lcom/mediatek/settings/FdnSetting2;->access$900(Lcom/mediatek/settings/FdnSetting2;Z)V

    goto :goto_1

    .end local v1           #bDisable:Z
    :cond_4
    move v1, v4

    .line 592
    goto :goto_2

    .restart local v1       #bDisable:Z
    :cond_5
    move v3, v4

    .line 595
    goto :goto_3

    .line 596
    .end local v1           #bDisable:Z
    :cond_6
    const-string v5, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 598
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 600
    .local v2, temp:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 601
    const-string v3, "Settings/FdnSetting2"

    const-string v4, "Activity finished"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    invoke-static {v3}, Lcom/mediatek/settings/CallSettings;->goToOthersSettings(Landroid/app/Activity;)V

    goto :goto_1

    .line 603
    :cond_7
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 604
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    #getter for: Lcom/mediatek/settings/FdnSetting2;->mSimId:I
    invoke-static {v4}, Lcom/mediatek/settings/FdnSetting2;->access$1000(Lcom/mediatek/settings/FdnSetting2;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 605
    const-string v3, "Settings/FdnSetting2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temp.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Activity finished"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    invoke-static {v3}, Lcom/mediatek/settings/CallSettings;->goToOthersSettings(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method
