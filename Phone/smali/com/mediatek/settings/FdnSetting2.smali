.class public Lcom/mediatek/settings/FdnSetting2;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting2.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_CHANGE_PIN2_KEY:Ljava/lang/String; = "button_change_pin2_key"

.field private static final BUTTON_FDN_ENABLE_KEY:Ljava/lang/String; = "button_fdn_enable_key"

.field private static final BUTTON_FDN_LIST_KEY:Ljava/lang/String; = "button_fdn_list_key"

.field private static final EVENT_PIN2_ENTRY_COMPLETE:I = 0x64

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/FdnSetting2"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4


# instance fields
.field private mButtonChangePin2:Landroid/preference/Preference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mButtonFDNList:Landroid/preference/Preference;

.field private mFDNHandler:Landroid/os/Handler;

.field private mFdnSupport:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPin2New:I

.field private mRetryPin2Old:I

.field private mSimId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    .line 130
    new-instance v0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;-><init>(Lcom/mediatek/settings/FdnSetting2;Lcom/mediatek/settings/FdnSetting2$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Lcom/mediatek/settings/FdnSetting2$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/FdnSetting2$1;-><init>(Lcom/mediatek/settings/FdnSetting2;)V

    iput-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    .line 577
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/FdnSetting2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/FdnSetting2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/FdnSetting2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/FdnSetting2;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->updateMenuEnableState(Z)V

    return-void
.end method

.method private checkPhoneBookState()Z
    .locals 3

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, isPhoneBookReady:Z
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    .line 567
    :goto_0
    if-nez v0, :cond_0

    .line 568
    const v1, 0x7f0d00f5

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00a7

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/FdnSetting2;->showTipToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    return v0

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    goto :goto_0
.end method

.method private checkPhoneBookStateExit()V
    .locals 3

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, isPhoneBookReady:Z
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    .line 554
    :goto_0
    if-nez v0, :cond_0

    .line 555
    const v1, 0x7f0d00f5

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00a7

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/FdnSetting2;->showTipToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->finish()V

    .line 558
    :cond_0
    return-void

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    goto :goto_0
.end method

.method private displayMessage(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    return-void
.end method

.method private getRetryPin2()Ljava/lang/String;
    .locals 6

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    .line 155
    .local v0, retryCount:I
    iput v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    .line 156
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryPin2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    packed-switch v0, :pswitch_data_0

    .line 164
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d0176

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/FdnSetting2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 159
    :pswitch_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "getRetryPin2,GET_SIM_RETRY_EMPTY"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v1, " "

    goto :goto_0

    .line 162
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d0175

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPin2Count()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 143
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    if-nez v0, :cond_0

    .line 145
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 146
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 147
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 150
    :cond_1
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk2Count()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 132
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    if-nez v0, :cond_0

    .line 134
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 135
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 136
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private resetFDNDialog(I)V
    .locals 4
    .parameter "strId"

    .prologue
    const v3, 0x7f0d02c4

    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "resetFDNDialog 0"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setFDNSupport()V
    .locals 3

    .prologue
    .line 537
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 542
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isFDNExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    .line 543
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v2, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 544
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v2, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 545
    return-void

    .line 540
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_0
.end method

.method private toggleFDNEnable(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x0

    .line 220
    const-string v4, "Settings/FdnSetting2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleFDNEnable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-nez p1, :cond_0

    .line 223
    const-string v4, "Settings/FdnSetting2"

    const-string v6, "toggleFDNEnable positiveResult is false"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, v5}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 225
    iget v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iput v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 226
    const-string v4, "Settings/FdnSetting2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFDNEnable mRetryPin2Old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, password:Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/mediatek/settings/FdnSetting2;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 240
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 241
    .local v1, isEnabled:Z
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 244
    .local v2, onComplete:Landroid/os/Message;
    if-nez v1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v0, v4, v3, v2}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 252
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    .end local v1           #isEnabled:Z
    .end local v2           #onComplete:Landroid/os/Message;
    :goto_3
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_1

    .restart local v1       #isEnabled:Z
    .restart local v2       #onComplete:Landroid/os/Message;
    :cond_2
    move v4, v5

    .line 244
    goto :goto_2

    .line 247
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    .end local v1           #isEnabled:Z
    .end local v2           #onComplete:Landroid/os/Message;
    :cond_3
    const v4, 0x7f0d02cb

    invoke-direct {p0, v4}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 248
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_3
.end method

.method private updateEnableFDN()V
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 322
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is FdnEnabled=2131559055"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0d0291

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 325
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0d028c

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 326
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0d028f

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 333
    :goto_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 335
    return-void

    .line 320
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_0

    .line 328
    :cond_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is not FdnEnabled=2131559054"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0d0292

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 330
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0d028d

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 331
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0d028e

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_1
.end method

.method private updateFDNPreference()V
    .locals 6

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 374
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 375
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v3, "Settings/FdnSetting2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 379
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 380
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 410
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v3

    if-nez v3, :cond_2

    .line 383
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    .line 384
    const-string v3, "Settings/FdnSetting2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "single updateFDNPreference, mRetryPin2New="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 386
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 387
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v4, 0x7f0d0178

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 388
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPuk2Count()I

    move-result v3

    if-nez v3, :cond_1

    .line 389
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v4, 0x7f0d0179

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 395
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Settings/FdnSetting2"

    const-string v4, "single phone exception "

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 393
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v4, 0x7f0d02c3

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 397
    :cond_2
    const-string v3, "Settings/FdnSetting2"

    const-string v4, "single updateFDNPreference"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v4, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 399
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 400
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v4, 0x7f0d0290

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 401
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v4, 0x7f0d0294

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 402
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v4, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 403
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateMenuEnableState(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 616
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 617
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v3, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 618
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 619
    return-void

    :cond_0
    move v0, v2

    .line 616
    goto :goto_0

    :cond_1
    move v1, v2

    .line 617
    goto :goto_1
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 306
    if-eqz p2, :cond_0

    move v0, v1

    .line 309
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 306
    .end local v0           #pinMinimum:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 309
    .restart local v0       #pinMinimum:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 416
    const v3, 0x7f06000f

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->addPreferencesFromResource(I)V

    .line 418
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 419
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "simId"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    .line 420
    const-string v3, "Settings/FdnSetting2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate,Sim Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 423
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "button_fdn_enable_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditPinPreference;

    iput-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 424
    const-string v3, "button_change_pin2_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    .line 425
    const-string v3, "button_fdn_list_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    .line 427
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 429
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/mediatek/settings/FdnSetting2$2;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/FdnSetting2$2;-><init>(Lcom/mediatek/settings/FdnSetting2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 452
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 454
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 455
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 457
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 468
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/settings/FdnSetting2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 469
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0xa

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/EditPinPreference;->initFdnModeData(Lcom/android/internal/telephony/Phone;II)V

    .line 470
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sub_title_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 471
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sub_title_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/FdnSetting2;->setTitle(Ljava/lang/CharSequence;)V

    .line 473
    :cond_3
    if-eqz p1, :cond_4

    .line 474
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    .line 476
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 477
    const-string v3, "Settings/FdnSetting2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate,  mRetryPin2Old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->checkPhoneBookStateExit()V

    .line 479
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->setFDNSupport()V

    .line 480
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 481
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_5

    .line 483
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 485
    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 530
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 532
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FdnSetting2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 533
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 517
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 518
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 525
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 520
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/FdnSetting2;->finish()V

    .line 521
    const/4 v1, 0x1

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_0

    .line 199
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onPinEntered"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, p2}, Lcom/mediatek/settings/FdnSetting2;->toggleFDNEnable(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 169
    const-string v2, "Settings/FdnSetting2"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pin2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    if-ltz v2, :cond_0

    .line 174
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    :cond_0
    const-class v2, Lcom/android/phone/ChangeIccPinScreen;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FdnSetting2;->startActivity(Landroid/content/Intent;)V

    .line 180
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 181
    const-string v2, "Settings/FdnSetting2"

    const-string v3, "onPreferenceClick mButtonFDNList"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->checkPhoneBookState()Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    const/4 v1, 0x0

    .line 191
    :cond_2
    :goto_0
    return v1

    .line 185
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnList;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .restart local v0       #intent:Landroid/content/Intent;
    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    if-ltz v2, :cond_4

    .line 187
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    :cond_4
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/FdnSetting2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 489
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 490
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 492
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    .line 494
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 496
    .local v0, fdnDialog:Landroid/app/Dialog;
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    if-eq v1, v2, :cond_1

    .line 500
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iput v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 501
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz v0, :cond_0

    .line 503
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog.isShowing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, second mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "onResume, isShowing"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 513
    :cond_1
    return-void
.end method

.method public showTipToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 574
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 575
    return-void
.end method
