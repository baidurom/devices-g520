.class public Lcom/mediatek/settings/CallSettings;
.super Landroid/preference/PreferenceActivity;
.source "CallSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CallSettings$SIMInfoComparable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallSettings"


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSipCallSetting:Landroid/preference/Preference;

.field mVTSetting:Landroid/preference/Preference;

.field mVoiceSetting:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 36
    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    .line 37
    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mSipCallSetting:Landroid/preference/Preference;

    .line 39
    new-instance v0, Lcom/mediatek/settings/CallSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallSettings$1;-><init>(Lcom/mediatek/settings/CallSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CallSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->setScreenEnabled()V

    return-void
.end method

.method public static goToMobileNetworkSettings(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 162
    return-void
.end method

.method public static goToOthersSettings(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/OthersSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 154
    return-void
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/CallSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 146
    return-void
.end method

.method public static isMultipleSim()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method private isOnlyVt()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v4

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public static isRadioOn(I)Z
    .locals 5
    .parameter "slot"

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, isRadioOn:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 130
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 131
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 132
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v1

    .line 137
    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_0
    return v1

    .line 134
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setScreenEnabled()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 165
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 166
    .local v1, insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 168
    iget-object v5, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v4, :cond_0

    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->isOnlyVt()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 178
    :goto_2
    return-void

    :cond_2
    move v2, v3

    .line 168
    goto :goto_0

    :cond_3
    move v4, v3

    .line 170
    goto :goto_1

    .line 172
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 173
    .local v0, hasSimCard:Z
    iget-object v2, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    .line 174
    iget-object v2, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 176
    :cond_5
    iget-object v2, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/CallSettings;->addPreferencesFromResource(I)V

    .line 61
    const-string v3, "button_vedio_call_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 62
    const-string v3, "button_voice_call_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    .line 64
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v2

    .line 65
    .local v2, voipSupported:Z
    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "button_internet_call_key"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 75
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/settings/CallSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 81
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/mediatek/settings/CallSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 88
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallSettings;->finish()V

    .line 91
    const/4 v1, 0x1

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/mediatek/settings/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->isOnlyVt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-class v1, Lcom/mediatek/settings/VTAdvancedSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallSettings;->startActivity(Landroid/content/Intent;)V

    .line 107
    const/4 v1, 0x1

    .line 109
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return v1

    .line 104
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-class v1, Lcom/mediatek/settings/VTAdvancedSettingEx;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 109
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/mediatek/settings/CallSettings;->setScreenEnabled()V

    .line 116
    return-void
.end method
