.class public Lcom/mediatek/settings/CallBarringResetPreference;
.super Landroid/preference/Preference;
.source "CallBarringResetPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_SIM:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "CallBarringResetPreference"

.field private static final PASSWORD_LENGTH:I = 0x4


# instance fields
.field private mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceClass:I

.field private mSimId:I

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/settings/CallBarringResetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringResetPreference;->init(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-object v1, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

    .line 76
    new-instance v0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;-><init>(Lcom/mediatek/settings/CallBarringResetPreference;Lcom/mediatek/settings/CallBarringResetPreference$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mHandler:Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mSimId:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mServiceClass:I

    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringResetPreference;->init(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CallBarringResetPreference;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringResetPreference;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CallBarringResetPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/mediatek/settings/CallBarringInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/CallBarringResetPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mSimId:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallBarringResetPreference;->setEnabled(Z)V

    .line 164
    invoke-virtual {p0, p0}, Lcom/mediatek/settings/CallBarringResetPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    return-void
.end method

.method private setCallState(ZLjava/lang/String;)V
    .locals 7
    .parameter "enable"
    .parameter "password"

    .prologue
    const/16 v3, 0x200

    const/4 v6, 0x0

    .line 173
    const-string v0, "CallBarringResetPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallState() is called password is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "enable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mHandler:Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v6, v2}, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 180
    .local v4, m:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mServiceClass:I

    if-ne v0, v3, :cond_1

    .line 182
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "AB"

    iget v5, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mSimId:I

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setVtFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 199
    :cond_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "AB"

    iget v5, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mSimId:I

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    goto :goto_0

    .line 189
    :cond_2
    iget v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mServiceClass:I

    if-ne v0, v3, :cond_3

    .line 190
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AB"

    invoke-interface {v0, v1, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AB"

    invoke-interface {v0, v1, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 2
    .parameter "password"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doPreferenceClick(Ljava/lang/String;)V
    .locals 9
    .parameter "title"

    .prologue
    const/4 v8, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarringResetPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 113
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04000a

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 115
    .local v4, textEntryView:Landroid/view/View;
    const v6, 0x7f08001e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, content:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0d00f3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarringResetPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v6, 0x7f0d01bb

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v6, 0x7f0d01b7

    new-instance v7, Lcom/mediatek/settings/CallBarringResetPreference$1;

    invoke-direct {v7, p0, v4, p1}, Lcom/mediatek/settings/CallBarringResetPreference$1;-><init>(Lcom/mediatek/settings/CallBarringResetPreference;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 149
    .local v2, dlg:Landroid/app/AlertDialog;
    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 151
    .local v5, window:Landroid/view/Window;
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 152
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 154
    .end local v5           #window:Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallBarringResetPreference;->doPreferenceClick(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public setCallBarringInterface(Lcom/mediatek/settings/CallBarringInterface;I)V
    .locals 0
    .parameter "i"
    .parameter "simId"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;

    .line 103
    iput p2, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mSimId:I

    .line 104
    return-void
.end method

.method public setCallState(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/settings/CallBarringResetPreference;->setCallState(ZLjava/lang/String;)V

    .line 169
    return-void
.end method

.method public setListener(Lcom/android/phone/TimeConsumingPreferenceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 99
    return-void
.end method

.method public setServiceClass(I)V
    .locals 0
    .parameter "serviceClass"

    .prologue
    .line 258
    iput p1, p0, Lcom/mediatek/settings/CallBarringResetPreference;->mServiceClass:I

    .line 259
    return-void
.end method
