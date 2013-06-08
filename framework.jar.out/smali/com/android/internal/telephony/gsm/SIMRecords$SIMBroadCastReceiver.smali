.class Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 2769
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2769
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2771
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2772
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2773
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->wipeAllSIMContacts()V
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2819
    :cond_0
    :goto_0
    return-void

    .line 2775
    :cond_1
    const-string v2, "action_pin_dismiss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2776
    const-string/jumbo v2, "simslot"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2777
    .local v1, simId:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2778
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMRecords receive pin dismiss intent for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 2781
    .end local v1           #simId:I
    :cond_2
    const-string v2, "action_melock_dismiss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2782
    const-string/jumbo v2, "simslot"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2783
    .restart local v1       #simId:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2784
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMRecords receive SIM ME lock dismiss intent for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 2787
    .end local v1           #simId:I
    :cond_3
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2788
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->processShutdownIPO()V
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$300(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2790
    const-string v2, "gsm.sim.operator.default-name"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    const-string v2, "GSM"

    const-string/jumbo v3, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO: reset mCspPlmnEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 2799
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$400(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/mediatek/common/telephony/ITelephonyExt;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2800
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$502(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 2801
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B
    invoke-static {v2, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$602(Lcom/android/internal/telephony/gsm/SIMRecords;[B)[B

    .line 2804
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$700(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2805
    const-string v2, "GSM"

    const-string/jumbo v3, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2806
    :cond_5
    const-string v2, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2807
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2808
    const-string v2, "GSM"

    const-string/jumbo v3, "phone 1 will reset modem for phone 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$800(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2811
    :cond_6
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2812
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMBroadCastReceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsWaitingLocale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mIsWaitingLocale:Z
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    const-string v2, "gsm.sim.locale.waiting"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mIsWaitingLocale:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2815
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameByLocale()V
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1000(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    goto/16 :goto_0
.end method
