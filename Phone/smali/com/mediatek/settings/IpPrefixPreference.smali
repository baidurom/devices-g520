.class public Lcom/mediatek/settings/IpPrefixPreference;
.super Landroid/preference/PreferenceActivity;
.source "IpPrefixPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final IP_PREFIX_NUMBER_EDIT_KEY:Ljava/lang/String; = "button_ip_prefix_edit_key"

.field private static final TAG:Ljava/lang/String; = "IpPrefixPreference"


# instance fields
.field private mButtonIpPrefix:Landroid/preference/EditTextPreference;

.field private mInitTitle:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlot:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlot:I

    .line 32
    iput-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mInitTitle:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/mediatek/settings/IpPrefixPreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/IpPrefixPreference$1;-><init>(Lcom/mediatek/settings/IpPrefixPreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/IpPrefixPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlot:I

    return v0
.end method

.method private getIpPrefix(I)Ljava/lang/String;
    .locals 5
    .parameter "slot"

    .prologue
    .line 133
    const-string v1, "ipprefix"

    .line 134
    .local v1, key:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget v2, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlot:I

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 136
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private saveIpPrefix(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 120
    const-string v1, "ipprefix"

    .line 121
    .local v1, key:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget v2, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlot:I

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 123
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    const-string v2, "IpPrefixPreference"

    const-string v3, "Store ip prefix error!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 155
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->addPreferencesFromResource(I)V

    .line 59
    const-string v1, "button_ip_prefix_edit_key"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    .line 60
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlot:I

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sub_title_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mInitTitle:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mInitTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mInitTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 78
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 168
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 99
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/IpPrefixPreference;->finish()V

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 112
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 115
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/IpPrefixPreference;->saveIpPrefix(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 86
    iget v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mSlot:I

    invoke-direct {p0, v1}, Lcom/mediatek/settings/IpPrefixPreference;->getIpPrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, preFix:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    const v2, 0x7f0d00b9

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 151
    return-void
.end method
