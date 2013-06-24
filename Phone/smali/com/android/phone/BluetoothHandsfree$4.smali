.class Lcom/android/phone/BluetoothHandsfree$4;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2677
    const/4 v2, 0x0

    .line 2678
    .local v2, phoneNumber:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle ATD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 2679
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForOutCallStart:Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v3

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v3

    if-eq v3, v7, :cond_0

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v3

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2680
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWaitingForOutCallStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForOutCallStart:Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBluetoothPhoneState.mCallsetup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v4

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 2681
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2724
    :goto_0
    return-object v3

    .line 2683
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 2685
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_2

    .line 2686
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2688
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    .line 2689
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATD memory dial : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 2692
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    #calls: Lcom/android/phone/BluetoothHandsfree;->getPhoneNumberByIndex(IZ)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$5900(Lcom/android/phone/BluetoothHandsfree;IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2700
    :goto_1
    if-eqz v2, :cond_4

    .line 2702
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 2705
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 2707
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2709
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2711
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2712
    const-string v3, "com.android.phone.extra.slot"

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothAtPhonebook;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/BluetoothAtPhonebook;->getDefaultSIM()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2713
    const-string v3, "com.android.phone.extra.forbid_dialog"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2715
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2716
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2718
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$6000(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2719
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 2693
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2695
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ERR] wrong memory index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2698
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3
    move-object v2, p1

    goto/16 :goto_1

    .line 2721
    :cond_4
    const-string v3, "phoneNumber is null"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$300(Ljava/lang/String;)V

    .line 2724
    :cond_5
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0
.end method
