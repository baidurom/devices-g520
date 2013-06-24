.class public Lcom/mediatek/settings/Modem3GCapabilitySwitch;
.super Landroid/preference/PreferenceActivity;
.source "Modem3GCapabilitySwitch.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/Modem3GCapabilitySwitch$1;,
        Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;,
        Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final NETWORK_MODE_KEY:Ljava/lang/String; = "preferred_network_mode_key"

.field public static final SERVICE_LIST_KEY:Ljava/lang/String; = "preferred_3g_service_key"

.field private static final SIMID_3G_SERVICE_NOT_SET:I = -0x2

.field private static final SIMID_3G_SERVICE_OFF:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Settings/Modem3GCapabilitySwitch"

.field private static sInstanceFlag:I


# instance fields
.field private mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

.field private mInstanceIndex:I

.field private mNetworkMode:Landroid/preference/ListPreference;

.field private mPD:Landroid/app/ProgressDialog;

.field private mPDSwitching:Landroid/app/ProgressDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field private mServiceList:Lcom/mediatek/settings/ServiceSelectList;

.field private mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    .line 43
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 47
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 51
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 52
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    .line 55
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    .line 66
    sget v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    iput v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    .line 67
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modem3GCapabilitySwitch(), instanceIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->update3GService()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/mediatek/settings/ServiceSelectList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/Modem3GCapabilitySwitch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateItemStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showInstanceIndex(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkMode()V

    return-void
.end method

.method private disSwitchProgressDialog()V
    .locals 3

    .prologue
    .line 314
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "disSwitchProgressDialog()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "disSwitchProgressDialog(), take effect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdSwitching != null?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleServiceSwitch(J)V
    .locals 5
    .parameter "simId"

    .prologue
    .line 325
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Switch has been locked, return"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleServiceSwitch("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), show switching dialog first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showSwitchProgress()V

    .line 331
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 332
    const/4 v1, -0x1

    .line 333
    .local v1, slotId:I
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 334
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 335
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_2

    const/4 v1, -0x1

    .line 337
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneInterfaceManager;->set3GCapabilitySIM(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive ok for the switch, and starting the waiting..."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1

    .line 340
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive error for the switch & Dismiss switching didalog"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    .line 342
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    goto :goto_0
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 569
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarEnableStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 571
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 574
    if-eqz p1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 582
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 580
    :cond_2
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "Fail to get status bar instance"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInstanceIndex(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 636
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 518
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    .line 519
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0204

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 521
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 522
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 523
    return-void
.end method

.method private update3GService()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 156
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v0

    .line 157
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 163
    .local v1, isAirMode:Z
    :goto_1
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/mediatek/settings/ServiceSelectList;->setEnabled(Z)V

    .line 164
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    invoke-virtual {v2}, Lcom/mediatek/settings/ServiceSelectList;->dismissDialogs()V

    goto :goto_0

    .end local v1           #isAirMode:Z
    :cond_2
    move v1, v3

    .line 161
    goto :goto_1

    .restart local v1       #isAirMode:Z
    :cond_3
    move v2, v3

    .line 163
    goto :goto_2
.end method

.method private updateItemStatus()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 526
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v1

    .line 527
    .local v1, enabled:Z
    const-string v3, "Settings/Modem3GCapabilitySwitch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateItemStatus(), is3GSwitchLocked()?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-eqz v3, :cond_0

    .line 529
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-nez v1, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/mediatek/settings/ServiceSelectList;->setEnabled(Z)V

    .line 532
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 536
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v0

    .line 537
    .local v0, cardSlot:I
    invoke-static {p0, v0}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 538
    .local v2, info:Landroid/provider/Telephony$SIMInfo;
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/mediatek/settings/CallSettings;->isRadioOn(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 539
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 540
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 543
    .end local v0           #cardSlot:I
    .end local v2           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 529
    goto :goto_0

    .restart local v0       #cardSlot:I
    .restart local v2       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    move v4, v5

    .line 538
    goto :goto_1
.end method

.method private updateNetworkMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v0

    .line 143
    .local v0, slot:I
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkMode(), 3G capability slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/mediatek/settings/CallSettings;->isRadioOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 146
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to get preferred network mode for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    invoke-virtual {v2, v4}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 151
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePreferredNetworkModeSummary(I)V
    .locals 3
    .parameter "networkMode"

    .prologue
    .line 483
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, value:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 512
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "Global"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 514
    :goto_0
    return-void

    .line 487
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 496
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "GSM/WCDMA"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 502
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "CDMA / EvDo"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 505
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "CDMA only"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 508
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "EvDo only"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateSummarys(J)V
    .locals 6
    .parameter "simId"

    .prologue
    const/4 v5, 0x0

    .line 171
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    const v3, 0x7f0d00c1

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/ServiceSelectList;->setSummary(I)V

    .line 178
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 180
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :cond_2
    const-wide/16 v2, -0x2

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/ServiceSelectList;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 186
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 189
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 190
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/ServiceSelectList;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v2}, Lcom/mediatek/settings/CallSettings;->isRadioOn(I)Z

    move-result v1

    .line 193
    .local v1, isPowerOn:Z
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), SIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " power status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 195
    if-nez v1, :cond_0

    .line 196
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeForNetworkMode(Ljava/lang/Object;)V
    .locals 8
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    .line 203
    iget-object v5, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 205
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 206
    .local v0, buttonNetworkMode:I
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 209
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showProgressDialog()V

    .line 212
    packed-switch v0, :pswitch_data_0

    .line 238
    const/4 v1, 0x3

    .line 242
    .local v1, modemNetworkMode:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updatePreferredNetworkModeSummary(I)V

    .line 244
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 249
    .local v3, slot:I
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v5, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    invoke-virtual {v5, v7}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 257
    .end local v1           #modemNetworkMode:I
    .end local v3           #slot:I
    :cond_0
    :goto_1
    return-void

    .line 214
    :pswitch_0
    const/4 v1, 0x7

    .line 215
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 217
    .end local v1           #modemNetworkMode:I
    :pswitch_1
    const/4 v1, 0x6

    .line 218
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 220
    .end local v1           #modemNetworkMode:I
    :pswitch_2
    const/4 v1, 0x5

    .line 221
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 223
    .end local v1           #modemNetworkMode:I
    :pswitch_3
    const/4 v1, 0x4

    .line 224
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 226
    .end local v1           #modemNetworkMode:I
    :pswitch_4
    const/4 v1, 0x3

    .line 227
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 229
    .end local v1           #modemNetworkMode:I
    :pswitch_5
    const/4 v1, 0x2

    .line 230
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 232
    .end local v1           #modemNetworkMode:I
    :pswitch_6
    const/4 v1, 0x1

    .line 233
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 235
    .end local v1           #modemNetworkMode:I
    :pswitch_7
    const/4 v1, 0x0

    .line 236
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 253
    .restart local v3       #slot:I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    invoke-virtual {v5, v7}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method clearAfterSwitch(Landroid/content/Intent;)V
    .locals 6
    .parameter "it"

    .prologue
    .line 292
    const-wide/16 v1, -0x2

    .line 293
    .local v1, simId3G:J
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "clearAfterSwitch(), remove switching dialog"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    .line 295
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 298
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    const/4 v5, -0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 299
    .local v3, slot3G:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 300
    const-wide/16 v1, -0x1

    .line 308
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 309
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkMode()V

    .line 310
    return-void

    .line 302
    :cond_1
    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 303
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 304
    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->addPreferencesFromResource(I)V

    .line 74
    const-string v2, "preferred_3g_service_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/ServiceSelectList;

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    .line 75
    const-string v2, "preferred_network_mode_key"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 76
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/ServiceSelectList;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    invoke-static {}, Lcom/mediatek/settings/NetworkEditor;->getBaseBand()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 84
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 87
    :cond_1
    new-instance v2, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Lcom/mediatek/settings/Modem3GCapabilitySwitch$1;)V

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mHandler:Lcom/mediatek/settings/Modem3GCapabilitySwitch$MyHandler;

    .line 88
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 90
    new-instance v2, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    .line 91
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, intentFilter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 100
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->removeNMOpFor3GSwitch(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 101
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 102
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 106
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 546
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 547
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPD:Landroid/app/ProgressDialog;

    .line 555
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    .line 557
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSlr:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 561
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 562
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 128
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->finish()V

    .line 131
    const/4 v1, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 260
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/settings/ServiceSelectList;

    if-ne p1, v2, :cond_1

    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 264
    .local v0, simId:J
    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->handleServiceSwitch(J)V

    .line 268
    .end local v0           #simId:J
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 266
    invoke-virtual {p0, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->changeForNetworkMode(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 109
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 110
    const-wide/16 v1, -0x2

    .line 111
    .local v1, simId:J
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 112
    .local v3, slot:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 113
    int-to-long v1, v3

    .line 119
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 120
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkMode()V

    .line 121
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateItemStatus()V

    .line 122
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->update3GService()V

    .line 123
    return-void

    .line 115
    :cond_0
    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 116
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_1

    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    :goto_1
    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x2

    goto :goto_1
.end method

.method showSwitchProgress()V
    .locals 5

    .prologue
    .line 272
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 273
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "The progress dialog already exist, so exit!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-void

    .line 277
    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    .line 278
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 281
    :cond_1
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Create and show the progress dialog..."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 284
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 285
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 286
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 287
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 288
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPDSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
