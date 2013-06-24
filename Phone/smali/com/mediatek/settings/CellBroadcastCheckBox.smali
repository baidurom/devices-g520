.class public Lcom/mediatek/settings/CellBroadcastCheckBox;
.super Landroid/preference/CheckBoxPreference;
.source "CellBroadcastCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CellBroadcastCheckBox$1;,
        Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CellBroadcastCheckBox"

.field private static final MESSAGE_GET_STATE:I = 0x64

.field private static final MESSAGE_SET_STATE:I = 0x65


# instance fields
.field private mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

.field private mLastCheckStatus:Z

.field private mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mSimId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/settings/CellBroadcastCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;-><init>(Lcom/mediatek/settings/CellBroadcastCheckBox;Lcom/mediatek/settings/CellBroadcastCheckBox$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    .line 82
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CellBroadcastCheckBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mLastCheckStatus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CellBroadcastCheckBox;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getCBState(Z)V

    return-void
.end method

.method private getCBState(Z)V
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x65

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 142
    if-eqz p1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    invoke-virtual {v1, v2, v3, v2, v5}, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSimId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->queryCellBroadcastSmsActivationGemini(Landroid/os/Message;I)V

    .line 153
    :goto_1
    if-eqz p1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_0

    .line 155
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, p1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 158
    :cond_0
    return-void

    .line 145
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private getPrefContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private setCBState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSimId:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->activateCellBroadcastSmsGemini(ILandroid/os/Message;I)V

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 172
    :cond_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public final displayMessage(I)V
    .locals 3
    .parameter "strId"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    return-void
.end method

.method public final displayMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 6
    .parameter "listener"
    .parameter "skipReading"
    .parameter "simId"

    .prologue
    const/4 v5, 0x0

    .line 107
    const-string v2, "Settings/CellBroadcastCheckBox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 109
    iput p3, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSimId:I

    .line 111
    if-nez p2, :cond_0

    .line 112
    check-cast p1, Lcom/mediatek/settings/CellBroadcastActivity;

    .end local p1
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Lcom/mediatek/settings/CellBroadcastActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 116
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget v2, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSimId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .line 122
    .local v0, hasIccCard:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 123
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getCBState(Z)V

    .line 129
    .end local v0           #hasIccCard:Z
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return-void

    .line 119
    .restart local v1       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .restart local v0       #hasIccCard:Z
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0, v5}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setChecked(Z)V

    .line 126
    invoke-virtual {p0, v5}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->isChecked()Z

    move-result v0

    .line 93
    .local v0, state:Z
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mLastCheckStatus:Z

    .line 94
    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setCBState(I)V

    .line 95
    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setChecked(Z)V

    .line 96
    return-void

    :cond_0
    move v1, v3

    .line 93
    goto :goto_0

    :cond_1
    move v1, v2

    .line 94
    goto :goto_1

    :cond_2
    move v2, v3

    .line 95
    goto :goto_2
.end method

.method public updateSummary(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    const v0, 0x7f0d011c

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setSummary(I)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setSummary(I)V

    goto :goto_0
.end method
