.class Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;
.super Landroid/os/Handler;
.source "CellBroadcastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CellBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    return-void
.end method

.method private handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x190

    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 627
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_1

    .line 628
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->onFinished(Landroid/preference/Preference;Z)V

    .line 632
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 633
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_2

    .line 634
    const-string v2, "Settings/CellBroadcastSettings"

    const-string v3, "handleGetCellBroadcastConfigResponse,ar is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 636
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_0

    .line 637
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 638
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 676
    :cond_0
    :goto_1
    return-void

    .line 630
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/settings/CellBroadcastSettings;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 642
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 644
    const-string v2, "Settings/CellBroadcastSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 647
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_0

    .line 648
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 649
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 653
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 654
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 656
    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 657
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 658
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->queryChannelFromDatabase()Z
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1900(Lcom/mediatek/settings/CellBroadcastSettings;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 659
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->initChannelMap()V
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 660
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V
    invoke-static {v2, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2100(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/util/ArrayList;)V

    .line 661
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelUIList()V
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1000(Lcom/mediatek/settings/CellBroadcastSettings;)V

    .line 662
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->updateLanguageSummary()V
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    goto/16 :goto_1

    .line 664
    :cond_5
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1200(Lcom/mediatek/settings/CellBroadcastSettings;)V

    goto/16 :goto_1

    .line 667
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_6
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 668
    const-string v2, "Settings/CellBroadcastSettings"

    const-string v3, "handleGetCellBroadcastConfigResponse: ar.result is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v6, :cond_0

    .line 670
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 671
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 679
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 680
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 681
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 682
    const-string v1, "Settings/CellBroadcastSettings"

    const-string v2, "handleSetCellBroadcastConfigResponse,ar is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 685
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 687
    const-string v1, "Settings/CellBroadcastSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    #getter for: Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/settings/CellBroadcastSettings;->getCellBroadcastConfig(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->access$2300(Lcom/mediatek/settings/CellBroadcastSettings;Z)V

    .line 694
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 614
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 624
    :goto_0
    return-void

    .line 616
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 619
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
