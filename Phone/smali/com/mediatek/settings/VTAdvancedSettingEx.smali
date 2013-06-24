.class public Lcom/mediatek/settings/VTAdvancedSettingEx;
.super Landroid/preference/PreferenceActivity;
.source "VTAdvancedSettingEx.java"


# static fields
.field private static final BUTTON_CALL_ADDITIONAL_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_CALL_BAR_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CALL_FWD_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_VT_AUTO_DROPBACK_KEY:Ljava/lang/String; = "button_vt_auto_dropback_key"

.field private static final BUTTON_VT_ENABLE_BACK_CAMERA_KEY:Ljava/lang/String; = "button_vt_enable_back_camera_key"

.field private static final BUTTON_VT_ENABLE_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_enable_peer_replace_key"

.field private static final BUTTON_VT_MO_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mo_local_video_display_key"

.field private static final BUTTON_VT_MT_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mt_local_video_display_key"

.field private static final BUTTON_VT_PEER_BIGGER_KEY:Ljava/lang/String; = "button_vt_peer_bigger_key"

.field private static final BUTTON_VT_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_peer_expand_key"

.field private static final BUTTON_VT_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_expand_key"

.field private static final BUTTON_VT_RINGTONE_KEY:Ljava/lang/String; = "button_vt_ringtone_key"

.field private static final CHECKBOX_RING_ONLY_ONCE:Ljava/lang/String; = "ring_only_once"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VTAdvancedSetting"

.field public static final REQUESTCODE_PICTRUE_PICKED_WITH_DATA:I = 0xbcd

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field private static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field private static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"


# instance fields
.field private mButtonCallAdditional:Landroid/preference/Preference;

.field private mButtonCallBar:Landroid/preference/Preference;

.field private mButtonCallFwd:Landroid/preference/Preference;

.field private mButtonVTAutoDropBack:Landroid/preference/Preference;

.field private mButtonVTEnablePeerReplace:Landroid/preference/Preference;

.field private mButtonVTEnablebackCamer:Landroid/preference/Preference;

.field private mButtonVTMoVideo:Landroid/preference/Preference;

.field private mButtonVTMtVideo:Landroid/preference/Preference;

.field private mButtonVTPeerBigger:Landroid/preference/Preference;

.field private mButtonVTPeerReplace:Landroid/preference/Preference;

.field private mButtonVTReplace:Landroid/preference/Preference;

.field private mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsOnlyOneSim:Z

.field private mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId:I

.field mSimIds:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 104
    iput v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimId:I

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 112
    iput-boolean v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mIsOnlyOneSim:Z

    .line 119
    new-instance v0, Lcom/mediatek/settings/VTAdvancedSettingEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/VTAdvancedSettingEx$1;-><init>(Lcom/mediatek/settings/VTAdvancedSettingEx;)V

    iput-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 359
    .local v0, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 115
    const-string v0, "Settings/VTAdvancedSetting"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method private setKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 364
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 365
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    return-void
.end method

.method private updateView(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 232
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v3, 0x7f060023

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->addPreferencesFromResource(I)V

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, info:Landroid/provider/Telephony$SIMInfo;
    const-string v3, "3G_SWITCH"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimId:I

    .line 145
    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimId:I

    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 149
    :goto_0
    new-instance v3, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    .line 150
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 152
    iput-boolean v4, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mIsOnlyOneSim:Z

    .line 153
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimId:I

    .line 155
    :cond_0
    iget-object v6, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    iget-boolean v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mIsOnlyOneSim:Z

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, v6, Lcom/mediatek/settings/PreCheckForRunning;->mByPass:Z

    .line 157
    if-eqz v1, :cond_4

    .line 158
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    iget-wide v6, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    aput-wide v6, v3, v5

    .line 164
    :goto_2
    const-string v3, "button_vt_replace_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    .line 166
    const-string v3, "button_vt_enable_back_camera_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    .line 167
    const-string v3, "button_vt_peer_bigger_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    .line 168
    const-string v3, "button_vt_mo_local_video_display_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    .line 169
    const-string v3, "button_vt_mt_local_video_display_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    .line 171
    const-string v3, "button_more_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    .line 172
    const-string v3, "button_cf_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    .line 173
    const-string v3, "button_cb_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    .line 175
    const-string v3, "button_vt_replace_peer_expand_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    .line 176
    const-string v3, "button_vt_enable_peer_replace_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    .line 177
    const-string v3, "button_vt_auto_dropback_key"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    .line 178
    const-string v3, "ring_only_once"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    .line 179
    const-string v3, "MyLog"

    const-string v5, "FeatureOption.MTK_VT3G324M_SUPPORT=falseFeatureOption.MTK_PHONE_VT_VOICE_ANSWER=true"

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mCheckBoxRingOnlyOnce:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mIntentFilter:Landroid/content/IntentFilter;

    .line 186
    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/settings/VTAdvancedSettingEx;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 189
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 193
    :cond_1
    return-void

    .line 147
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_2
    invoke-static {p0, v5}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    goto/16 :goto_0

    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_3
    move v3, v5

    .line 155
    goto/16 :goto_1

    .line 162
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 371
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 377
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 206
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 213
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->finish()V

    .line 209
    const/4 v1, 0x1

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v6, 0x7f0d004b

    const v5, 0x7f0d001f

    const/16 v4, 0x12e

    const/4 v1, 0x1

    .line 238
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "INIT_TITLE_NAME"

    const v3, 0x7f0d01eb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v2, "INIT_FEATURE_NAME"

    const-string v3, "VT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "ITEM_TYPE"

    const-string v3, "PreferenceScreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v2, "INIT_SIM_ID"

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 244
    const-string v2, "TARGET_CLASS"

    const-string v3, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 354
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "ISVT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string v2, "INIT_TITLE_NAME"

    const v3, 0x7f0d00da

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v2, "INIT_FEATURE_NAME"

    const-string v3, "VT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v2, "ITEM_TYPE"

    const-string v3, "PreferenceScreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "INIT_SIM_ID"

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 254
    const-string v2, "TARGET_CLASS"

    const-string v3, "com.mediatek.settings.CallBarring"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 257
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "INIT_TITLE_NAME"

    const v3, 0x7f0d01dd

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v2, "INIT_FEATURE_NAME"

    const-string v3, "VT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v2, "ITEM_TYPE"

    const-string v3, "PreferenceScreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v2, "INIT_SIM_ID"

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 263
    const-string v2, "TARGET_CLASS"

    const-string v3, "com.android.phone.GsmUmtsAdditionalCallOptions"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mPreCfr:Lcom/mediatek/settings/PreCheckForRunning;

    iget v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 266
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "INIT_FEATURE_NAME"

    const-string v3, "VT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v2, "INIT_SIM_ID"

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 270
    const-string v2, "INIT_TITLE_NAME"

    const v3, 0x7f0d0027

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v2, "INIT_BASE_KEY"

    const-string v3, "button_vt_enable_back_camera_key@"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v2, "ITEM_TYPE"

    const-string v3, "CheckBoxPreference"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 275
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    if-ne p2, v2, :cond_5

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "INIT_TITLE_NAME"

    const v3, 0x7f0d0120

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string v2, "INIT_FEATURE_NAME"

    const-string v3, "VT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v2, "ITEM_TYPE"

    const-string v3, "ListPreference"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "LIST_TITLE_NAME"

    const v3, 0x7f0d0026

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v2, "INIT_ARRAY"

    const v3, 0x7f07000e

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v2, "INIT_SIM_ID"

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 283
    const-string v2, "button_vt_replace_expand_key"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 284
    const-string v2, "button_vt_replace_expand_key"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_4
    const-string v2, "INIT_BASE_KEY"

    const-string v3, "button_vt_replace_expand_key@"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v2, "INIT_ARRAY_VALUE"

    const v3, 0x7f070010

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 290
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    if-ne p2, v2, :cond_7

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "INIT_FEATURE_NAME"

    const-string v2, "VT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "INIT_SIM_ID"

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 294
    const-string v1, "INIT_TITLE_NAME"

    const v2, 0x7f0d0029

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v1, "ITEM_TYPE"

    const-string v2, "CheckBoxPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v1, "INIT_BASE_KEY"

    const-string v2, "button_vt_peer_bigger_key@"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    .line 354
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 298
    :cond_7
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    if-ne p2, v2, :cond_8

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "INIT_FEATURE_NAME"

    const-string v2, "VT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "INIT_SIM_ID"

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 302
    const-string v1, "INIT_TITLE_NAME"

    const v2, 0x7f0d002b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v1, "ITEM_TYPE"

    const-string v2, "CheckBoxPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v1, "INIT_BASE_KEY"

    const-string v2, "button_vt_mo_local_video_display_key@"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 306
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    if-ne p2, v2, :cond_a

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "INIT_TITLE_NAME"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v2, "INIT_FEATURE_NAME"

    const-string v3, "VT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v2, "LIST_TITLE_NAME"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v2, "ITEM_TYPE"

    const-string v3, "ListPreference"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v2, "INIT_ARRAY"

    const v3, 0x7f070012

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v2, "INIT_SIM_ID"

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 314
    const-string v2, "button_vt_mt_local_video_display_key"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 315
    const-string v2, "button_vt_mt_local_video_display_key"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_9
    const-string v2, "INIT_BASE_KEY"

    const-string v3, "button_vt_mt_local_video_display_key@"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v2, "INIT_ARRAY_VALUE"

    const v3, 0x7f070013

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 321
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a
    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    if-ne p2, v2, :cond_c

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "INIT_TITLE_NAME"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v2, "INIT_FEATURE_NAME"

    const-string v3, "VT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v2, "ITEM_TYPE"

    const-string v3, "ListPreference"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v2, "LIST_TITLE_NAME"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v2, "INIT_ARRAY"

    const v3, 0x7f07000f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v2, "INIT_SIM_ID"

    iget-object v3, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 329
    const-string v2, "button_vt_replace_peer_expand_key"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    .line 330
    const-string v2, "button_vt_replace_peer_expand_key"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_b
    const-string v2, "INIT_BASE_KEY"

    const-string v3, "button_vt_replace_peer_expand_key@"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v2, "INIT_ARRAY_VALUE"

    const v3, 0x7f070011

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 336
    .end local v0           #intent:Landroid/content/Intent;
    :cond_c
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    if-ne p2, v1, :cond_d

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "INIT_FEATURE_NAME"

    const-string v2, "VT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "INIT_SIM_ID"

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 340
    const-string v1, "INIT_TITLE_NAME"

    const v2, 0x7f0d0049

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string v1, "ITEM_TYPE"

    const-string v2, "CheckBoxPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v1, "INIT_BASE_KEY"

    const-string v2, "button_vt_enable_peer_replace_key@"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 344
    .end local v0           #intent:Landroid/content/Intent;
    :cond_d
    iget-object v1, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    if-ne p2, v1, :cond_6

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "INIT_FEATURE_NAME"

    const-string v2, "VT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "INIT_SIM_ID"

    iget-object v2, p0, Lcom/mediatek/settings/VTAdvancedSettingEx;->mSimIds:[J

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 348
    const-string v1, "INIT_TITLE_NAME"

    const v2, 0x7f0d0050

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const-string v1, "ITEM_TYPE"

    const-string v2, "CheckBoxPreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "INIT_BASE_KEY"

    const-string v2, "button_vt_auto_dropback_key@"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 198
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v0

    .line 199
    .local v0, capability3G:I
    const-string v1, "Settings/VTAdvancedSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capability3G = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/mediatek/settings/VTAdvancedSettingEx;->updateView(Z)V

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
