.class Lcom/mediatek/settings/NetworkSettingList$2;
.super Landroid/os/Handler;
.source "NetworkSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkSettingList;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/NetworkSettingList;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 181
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 184
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED || mSimId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    #getter for: Lcom/mediatek/settings/NetworkSettingList;->mSimId:I
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    #getter for: Lcom/mediatek/settings/NetworkSettingList;->mSimId:I
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/settings/NetworkSettingList;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$500(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/List;I)V

    goto :goto_0

    .line 193
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED_2 || mSimId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    #getter for: Lcom/mediatek/settings/NetworkSettingList;->mSimId:I
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    #getter for: Lcom/mediatek/settings/NetworkSettingList;->mSimId:I
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/settings/NetworkSettingList;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/mediatek/settings/NetworkSettingList;->access$500(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/List;I)V

    goto :goto_0

    .line 204
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "hideProgressPanel"

    #calls: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->removeDialog(I)V

    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 210
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "manual network selection: failed!"

    #calls: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$600(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "manual network selection: succeeded!"

    #calls: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    #calls: Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionSucceeded()V
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$700(Lcom/mediatek/settings/NetworkSettingList;)V

    goto/16 :goto_0

    .line 223
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const-string v1, "phone"

    const-string v2, "EVENT_SERVICE_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$2;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    #calls: Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/settings/NetworkSettingList;->access$200(Lcom/mediatek/settings/NetworkSettingList;Z)V

    goto/16 :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x190 -> :sswitch_3
    .end sparse-switch
.end method
