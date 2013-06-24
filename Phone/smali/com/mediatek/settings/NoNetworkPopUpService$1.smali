.class Lcom/mediatek/settings/NoNetworkPopUpService$1;
.super Landroid/telephony/PhoneStateListener;
.source "NoNetworkPopUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NoNetworkPopUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NoNetworkPopUpService;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/NoNetworkPopUpService;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "serviceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 63
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v1

    #setter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mSimId:I
    invoke-static {v0, v1}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$002(Lcom/mediatek/settings/NoNetworkPopUpService;I)I

    .line 65
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/settings/NoNetworkPopUpService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$100(Lcom/mediatek/settings/NoNetworkPopUpService;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mIsShouldShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mIsShouldShow:Z
    invoke-static {v2}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$200(Lcom/mediatek/settings/NoNetworkPopUpService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/settings/NoNetworkPopUpService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$100(Lcom/mediatek/settings/NoNetworkPopUpService;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 74
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mSimId:I
    invoke-static {v0}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$000(Lcom/mediatek/settings/NoNetworkPopUpService;)I

    move-result v0

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$300(Lcom/mediatek/settings/NoNetworkPopUpService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$300(Lcom/mediatek/settings/NoNetworkPopUpService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$300(Lcom/mediatek/settings/NoNetworkPopUpService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :cond_6
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mSimId:I
    invoke-static {v0}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$000(Lcom/mediatek/settings/NoNetworkPopUpService;)I

    move-result v0

    if-nez v0, :cond_7

    .line 87
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$300(Lcom/mediatek/settings/NoNetworkPopUpService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mDelayTime:I
    invoke-static {v1}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$400(Lcom/mediatek/settings/NoNetworkPopUpService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$300(Lcom/mediatek/settings/NoNetworkPopUpService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mDelayTime:I
    invoke-static {v1}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$400(Lcom/mediatek/settings/NoNetworkPopUpService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 92
    :cond_8
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$300(Lcom/mediatek/settings/NoNetworkPopUpService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService$1;->this$0:Lcom/mediatek/settings/NoNetworkPopUpService;

    #getter for: Lcom/mediatek/settings/NoNetworkPopUpService;->mDelayTime:I
    invoke-static {v1}, Lcom/mediatek/settings/NoNetworkPopUpService;->access$400(Lcom/mediatek/settings/NoNetworkPopUpService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
