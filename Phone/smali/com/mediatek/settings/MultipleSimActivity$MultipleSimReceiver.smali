.class Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultipleSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/MultipleSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipleSimReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/MultipleSimActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/MultipleSimActivity;Lcom/mediatek/settings/MultipleSimActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/MultipleSimActivity;->removeDialog(I)V

    .line 124
    const-string v3, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const-string v4, "BroadcastReceiver: network mode change failed! restore the old value."

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 126
    const-string v3, "com.android.phone.OLD_NETWORK_MODE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, oldMode:I
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$200(Lcom/mediatek/settings/MultipleSimActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 131
    const-string v3, "NETWORK_MODE"

    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/settings/MultipleSimActivity;->access$300(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const-string v4, "setValue  to oldMode "

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v3}, Lcom/mediatek/settings/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 166
    .end local v1           #oldMode:I
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const-string v4, "BroadcastReceiver: network mode change success! set to the new value."

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$200(Lcom/mediatek/settings/MultipleSimActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const-string v5, "NEW_NETWORK_MODE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NEW_NETWORK_MODE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$400(Lcom/mediatek/settings/MultipleSimActivity;)V

    goto :goto_0

    .line 146
    :cond_4
    const-string v3, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 147
    const-string v3, "NETWORK_SEARCH"

    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/settings/MultipleSimActivity;->access$300(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$700(Lcom/mediatek/settings/MultipleSimActivity;)Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/mediatek/settings/MultipleSimActivity;->access$200(Lcom/mediatek/settings/MultipleSimActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/settings/MultipleSimActivity;->access$500(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/settings/MultipleSimActivity;->access$600(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/phone/ext/SettingsExtension;->removeNMOpForMultiSim(Lcom/android/internal/telephony/Phone;Ljava/util/List;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #getter for: Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$500(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;

    invoke-direct {v4}, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->createSubItems()V
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$800(Lcom/mediatek/settings/MultipleSimActivity;)V

    goto/16 :goto_0

    .line 152
    :cond_5
    const-string v3, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 153
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceList()V
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$900(Lcom/mediatek/settings/MultipleSimActivity;)V

    goto/16 :goto_0

    .line 154
    :cond_6
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    const-string v3, "MultipleSimActivity"

    const-string v4, "ACTION_SIM_INFO_UPDATE received"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->setSimList()V
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$1000(Lcom/mediatek/settings/MultipleSimActivity;)V

    .line 158
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v3}, Lcom/mediatek/settings/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 159
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 160
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/MultipleSimActivity;->addPreferencesFromResource(I)V

    .line 161
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->createSubItems()V
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$800(Lcom/mediatek/settings/MultipleSimActivity;)V

    .line 162
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceList()V
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$900(Lcom/mediatek/settings/MultipleSimActivity;)V

    .line 163
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V
    invoke-static {v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$400(Lcom/mediatek/settings/MultipleSimActivity;)V

    goto/16 :goto_0
.end method
