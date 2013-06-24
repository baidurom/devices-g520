.class public Lcom/mediatek/phone/StkListEntrance;
.super Landroid/preference/PreferenceActivity;
.source "StkListEntrance.java"


# static fields
.field private static final REQUEST_TYPE:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "StkListEntrance"

.field private static final baseband:Ljava/lang/String;

.field private static mDefaultTitle:Ljava/lang/String;

.field public static mSlot:I

.field private static strTargetClass:Ljava/lang/String;

.field private static strTargetLoc:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetClassIndex:I

.field private mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private serviceComplete:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 63
    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    .line 75
    const-string v0, "gsm.baseband.capability"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->baseband:Ljava/lang/String;

    .line 77
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/phone/StkListEntrance;->mTargetClassIndex:I

    .line 82
    new-instance v0, Lcom/mediatek/phone/StkListEntrance$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/StkListEntrance$1;-><init>(Lcom/mediatek/phone/StkListEntrance;)V

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    new-instance v0, Lcom/mediatek/phone/StkListEntrance$2;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/StkListEntrance$2;-><init>(Lcom/mediatek/phone/StkListEntrance;)V

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->serviceComplete:Ljava/lang/Runnable;

    .line 250
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/mediatek/phone/StkListEntrance;->serviceComplete:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/StkListEntrance;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/StkListEntrance;->updateSimState(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/StkListEntrance;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method private addSimInfoPreference()V
    .locals 15

    .prologue
    .line 213
    const-string v1, "StkListEntrance"

    const-string v2, "[addSimInfoPreference]+"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 216
    .local v12, root:Landroid/preference/PreferenceScreen;
    if-eqz v12, :cond_0

    .line 217
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 219
    .local v13, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/provider/Telephony$SIMInfo;

    .line 220
    .local v14, siminfo:Landroid/provider/Telephony$SIMInfo;
    iget-object v1, p0, Lcom/mediatek/phone/StkListEntrance;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v2, v14, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v5

    .line 221
    .local v5, status:I
    const-string v1, "StkListEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim status of slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v1, "StkListEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addSimInfoPreference][siminfo.mSimId] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v14, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Lcom/mediatek/phone/SimInfoPreference;

    iget-object v2, v14, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iget-object v3, v14, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iget v4, v14, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget v6, v14, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget v7, v14, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    iget-wide v8, v14, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/mediatek/phone/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V

    .line 227
    .local v0, simInfoPref:Lcom/mediatek/phone/SimInfoPreference;
    const-string v1, "StkListEntrance"

    const-string v2, "[addSimInfoPreference][addPreference]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 233
    .end local v0           #simInfoPref:Lcom/mediatek/phone/SimInfoPreference;
    .end local v5           #status:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v14           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-void
.end method

.method private setDefaultSIMIndicate(I)V
    .locals 4
    .parameter "slotID"

    .prologue
    .line 300
    const-string v1, "StkListEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSIMState][slotID] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/mediatek/phone/StkListEntrance;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v0

    .line 302
    .local v0, state:I
    const-string v1, "StkListEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSIMState][state] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0, p1, v0}, Lcom/mediatek/phone/StkListEntrance;->updateSimState(II)V

    .line 304
    return-void
.end method

.method private showTextToast(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 295
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 296
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    return-void
.end method

.method private updateSimState(II)V
    .locals 6
    .parameter "slotID"
    .parameter "state"

    .prologue
    .line 277
    const-string v2, "StkListEntrance"

    const-string v3, "[updateSimState]+"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {p0, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 280
    .local v1, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_1

    .line 281
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSimState][siminfo.mSimId] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-wide v2, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/StkListEntrance;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/SimInfoPreference;

    .line 283
    .local v0, pref:Lcom/mediatek/phone/SimInfoPreference;
    const-string v2, "StkListEntrance"

    const-string v3, "[updateSimState][setStatus] "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p2}, Lcom/mediatek/phone/SimInfoPreference;->setStatus(I)V

    .line 287
    :cond_0
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState sim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0           #pref:Lcom/mediatek/phone/SimInfoPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "StkListEntrance"

    const-string v1, "[onCreate] +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 110
    iput-object p0, p0, Lcom/mediatek/phone/StkListEntrance;->mContext:Landroid/content/Context;

    .line 114
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/StkListEntrance;->addPreferencesFromResource(I)V

    .line 115
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 117
    const-string v0, "StkListEntrance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseband is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/phone/StkListEntrance;->baseband:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/phone/StkListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/phone/StkListEntrance;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/StkListEntrance;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    const-string v0, "StkListEntrance"

    const-string v1, "[onCreate][addSimInfoPreference] "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/mediatek/phone/StkListEntrance;->addSimInfoPreference()V

    .line 132
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/StkListEntrance;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 140
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 257
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 143
    const-string v7, "StkListEntrance"

    const-string v8, "Enter onPreferenceClick function."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v7, 0x0

    sput-object v7, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 146
    const/4 v7, 0x0

    sput-object v7, Lcom/mediatek/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    .line 147
    const-string v7, "StkListEntrance"

    const-string v8, "[onPreferenceTreeClick] +"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 149
    .local v4, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 150
    .local v5, pm:Landroid/content/pm/PackageManager;
    const-string v7, "StkListEntrance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onPreferenceTreeClick][Click SIM1][SimState] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v7, "StkListEntrance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onPreferenceTreeClick][Click SIM2][SimState] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-static {p0, v7, v8}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v6

    .line 154
    .local v6, siminfo1:Landroid/provider/Telephony$SIMInfo;
    if-eqz v6, :cond_0

    .line 155
    iget v7, v6, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    sput v7, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    .line 157
    :cond_0
    const-string v7, "StkListEntrance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[aaa][onPreferenceTreeClick][mSlot] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget v7, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    if-nez v7, :cond_5

    .line 159
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.android.stk"

    const-string v8, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v0, cName1:Landroid/content/ComponentName;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v8, :cond_3

    .line 163
    iget-object v7, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    sget v8, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    const/16 v9, 0x12e

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 191
    .end local v0           #cName1:Landroid/content/ComponentName;
    :cond_1
    :goto_0
    sget-object v7, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 192
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "StkListEntrance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[aaa][onPreferenceTreeClick][mSlot][strTargetLoc] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v7, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    sget-object v8, Lcom/mediatek/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/mediatek/phone/StkListEntrance;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const-string v7, "StkListEntrance"

    const-string v8, "[onPreferenceTreeClick] -"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v7, 0x0

    :goto_1
    return v7

    .line 164
    .restart local v0       #cName1:Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 165
    const v7, 0x7f0d0014

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->finish()V

    .line 167
    const/4 v7, 0x0

    goto :goto_1

    .line 169
    :cond_4
    const-string v7, "com.android.stk"

    sput-object v7, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 170
    const-string v7, "com.android.stk.StkLauncherActivity"

    sput-object v7, Lcom/mediatek/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    goto :goto_0

    .line 173
    .end local v0           #cName1:Landroid/content/ComponentName;
    :cond_5
    sget v7, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 174
    new-instance v1, Landroid/content/ComponentName;

    const-string v7, "com.android.stk2"

    const-string v8, "com.android.stk2.StkLauncherActivity"

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v1, cName2:Landroid/content/ComponentName;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v8, :cond_6

    .line 178
    iget-object v7, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    sget v8, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    const/16 v9, 0x12e

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0

    .line 179
    :cond_6
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    .line 180
    const v7, 0x7f0d0014

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->finish()V

    .line 182
    const/4 v7, 0x0

    goto :goto_1

    .line 184
    :cond_7
    const-string v7, "com.android.stk2"

    sput-object v7, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 185
    const-string v7, "com.android.stk2.StkLauncherActivity"

    sput-object v7, Lcom/mediatek/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    goto/16 :goto_0

    .line 197
    .end local v1           #cName2:Landroid/content/ComponentName;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 198
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v7, "StkListEntrance"

    const-string v8, "[onPreferenceTreeClick] ActivityNotFoundException happened"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const v7, 0x7f0d0014

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->finish()V

    .line 201
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 267
    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 268
    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    .line 269
    const-string v0, "StkListEntrance"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/StkListEntrance;->setDefaultSIMIndicate(I)V

    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/phone/StkListEntrance;->setDefaultSIMIndicate(I)V

    .line 273
    return-void
.end method
