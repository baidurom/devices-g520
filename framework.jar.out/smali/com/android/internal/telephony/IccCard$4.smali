.class Lcom/android/internal/telephony/IccCard$4;
.super Landroid/content/BroadcastReceiver;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1815
    if-nez p2, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1817
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1818
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1819
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1821
    .local v1, enabled:Z
    const-string/jumbo v3, "ril.flightmode.poweroffMD"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1822
    .local v2, mdOff:I
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ril.flightmode.poweroffMD:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flightmode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1823
    if-eqz v1, :cond_0

    if-ne v2, v7, :cond_0

    .line 1824
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v3, v3, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    if-ne v7, v3, :cond_2

    .line 1825
    const-string v3, "gsm.sim.ril.phbready.2"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    #setter for: Lcom/android/internal/telephony/IccCard;->mPhbReady:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Z)Z

    goto :goto_0

    .line 1827
    :cond_2
    const-string v3, "gsm.sim.ril.phbready"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1831
    .end local v1           #enabled:Z
    .end local v2           #mdOff:I
    :cond_3
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1832
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v4, "ACTION_SHUTDOWN_IPO: clear PHB_READY systemproperties"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1833
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v3, v3, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    if-ne v7, v3, :cond_4

    .line 1834
    const-string v3, "gsm.sim.ril.phbready.2"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    #setter for: Lcom/android/internal/telephony/IccCard;->mPhbReady:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Z)Z

    goto/16 :goto_0

    .line 1836
    :cond_4
    const-string v3, "gsm.sim.ril.phbready"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
