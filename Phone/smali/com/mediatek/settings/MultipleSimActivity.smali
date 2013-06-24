.class public Lcom/mediatek/settings/MultipleSimActivity;
.super Landroid/preference/PreferenceActivity;
.source "MultipleSimActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;
    }
.end annotation


# static fields
.field private static final ALERT_DIALOG:I = 0xc8

.field private static final ALERT_DIALOG_DEFAULT:I = 0x12c

.field private static final DBG:Z = true

.field public static final INIT_ARRAY:Ljava/lang/String; = "INIT_ARRAY"

.field public static final INIT_ARRAY_VALUE:Ljava/lang/String; = "INIT_ARRAY_VALUE"

.field public static final INIT_BASE_KEY:Ljava/lang/String; = "INIT_BASE_KEY"

.field public static final INIT_FEATURE_NAME:Ljava/lang/String; = "INIT_FEATURE_NAME"

.field public static final INIT_SIM_ID:Ljava/lang/String; = "INIT_SIM_ID"

.field public static final INIT_SIM_NUMBER:Ljava/lang/String; = "INIT_SIM_NUMBER"

.field public static final INIT_TITLE_NAME:Ljava/lang/String; = "INIT_TITLE_NAME"

.field public static final INTENT_KEY:Ljava/lang/String; = "ITEM_TYPE"

.field public static final LIST_TITLE:Ljava/lang/String; = "LIST_TITLE_NAME"

.field public static final NETWORK_MODE_NAME:Ljava/lang/String; = "NETWORK_MODE"

.field private static final PROGRESS_DIALOG:I = 0x64

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field private static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field private static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"

.field public static final SUB_TITLE_NAME:Ljava/lang/String; = "sub_title_name"

.field private static final TAG:Ljava/lang/String; = "MultipleSimActivity"

.field public static final TARGET_CALSS:Ljava/lang/String; = "TARGET_CLASS"

.field public static final VT_FEATURE_NAME:Ljava/lang/String; = "VT"


# instance fields
.field private mBaseKey:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mFeatureName:Ljava/lang/String;

.field private mImage:Landroid/widget/ImageView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mItemType:Ljava/lang/String;

.field private mListEntries:I

.field private mListTitle:I

.field private mListValues:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

.field private mPref2CardSlot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

.field private mSimIds:[J

.field private mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNumbers:I

.field private mTargetClass:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTitleName:I

.field private mVTWhichToSave:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 56
    const-string v0, "PreferenceScreen"

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mItemType:Ljava/lang/String;

    .line 86
    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    .line 88
    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    .line 89
    iput-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    iput-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimIds:[J

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    .line 115
    new-instance v0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;-><init>(Lcom/mediatek/settings/MultipleSimActivity;Lcom/mediatek/settings/MultipleSimActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    .line 169
    new-instance v0, Lcom/mediatek/settings/MultipleSimActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/MultipleSimActivity$1;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->setSimList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/MultipleSimActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/MultipleSimActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/MultipleSimActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/MultipleSimActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/MultipleSimActivity;)Lcom/mediatek/phone/ext/SettingsExtension;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->createSubItems()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceList()V

    return-void
.end method

.method private checkToStart(ILandroid/content/Intent;)V
    .locals 2
    .parameter "slotId"
    .parameter "intent"

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->isNeededToCheckLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    const/16 v1, 0x12e

    invoke-virtual {v0, p2, p1, v1}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mediatek/settings/MultipleSimActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private createSubItems()V
    .locals 9

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 310
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 312
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, c:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 314
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0           #c:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 319
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 322
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 324
    .local v4, prefCount:I
    add-int/lit8 v1, v4, -0x1

    :goto_2
    iget v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    add-int/lit8 v7, v7, -0x1

    if-le v1, v7, :cond_3

    .line 325
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 328
    :cond_3
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mItemType:Ljava/lang/String;

    const-string v8, "PreferenceScreen"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 329
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->initPreferenceScreen()V

    .line 335
    :cond_4
    :goto_3
    return-void

    .line 330
    :cond_5
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mItemType:Ljava/lang/String;

    const-string v8, "CheckBoxPreference"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 331
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->initCheckBoxPreference()V

    goto :goto_3

    .line 332
    :cond_6
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mItemType:Ljava/lang/String;

    const-string v8, "ListPreference"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 333
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->initListPreference()V

    goto :goto_3
.end method

.method private customizeForEVDO(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "slotId"
    .parameter "pkName"
    .parameter "targetClass"

    .prologue
    .line 758
    if-nez p2, :cond_0

    .line 759
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    invoke-direct {p0, p2, p1}, Lcom/mediatek/settings/MultipleSimActivity;->checkToStart(ILandroid/content/Intent;)V

    .line 779
    :goto_0
    return-void

    .line 763
    :cond_0
    const-string v0, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    const-string v0, "com.mediatek.settings.CdmaCallForwardOptions"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    invoke-direct {p0, p2, p1}, Lcom/mediatek/settings/MultipleSimActivity;->checkToStart(ILandroid/content/Intent;)V

    goto :goto_0

    .line 766
    :cond_1
    const-string v0, "com.android.phone.GsmUmtsAdditionalCallOptions"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    const-string v0, "com.mediatek.settings.CdmaCallWaitingOptions"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    invoke-direct {p0, p2, p1}, Lcom/mediatek/settings/MultipleSimActivity;->checkToStart(ILandroid/content/Intent;)V

    goto :goto_0

    .line 769
    :cond_2
    const-string v0, "com.mediatek.settings.FdnSetting2"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.mediatek.settings.CallBarring"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.phone.NetworkSetting"

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.mediatek.settings.PLMNListPreference"

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 773
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 776
    :cond_4
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    invoke-direct {p0, p2, p1}, Lcom/mediatek/settings/MultipleSimActivity;->checkToStart(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private getProperOperatorNumber(Landroid/provider/Telephony$SIMInfo;)Ljava/lang/String;
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x4

    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, res:Ljava/lang/String;
    const/4 v0, 0x4

    .line 490
    .local v0, charCount:I
    if-nez p1, :cond_0

    move-object v2, v1

    .line 512
    .end local v1           #res:Ljava/lang/String;
    .local v2, res:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 493
    .end local v2           #res:Ljava/lang/String;
    .restart local v1       #res:Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 494
    iget v3, p1, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    packed-switch v3, :pswitch_data_0

    .line 509
    const-string v1, ""

    :cond_1
    :goto_1
    move-object v2, v1

    .line 512
    .end local v1           #res:Ljava/lang/String;
    .restart local v2       #res:Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v2           #res:Ljava/lang/String;
    .restart local v1       #res:Ljava/lang/String;
    :pswitch_0
    const-string v1, ""

    .line 497
    goto :goto_1

    .line 499
    :pswitch_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 500
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 504
    :pswitch_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 505
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initCheckBoxPreference()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 353
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    if-ge v0, v5, :cond_3

    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CheckSimPreference;

    .line 356
    .local v2, p:Lcom/mediatek/settings/CheckSimPreference;
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget-object v5, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/mediatek/settings/CheckSimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v2, v5}, Lcom/mediatek/settings/CheckSimPreference;->setSimColor(I)V

    .line 358
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v5}, Lcom/mediatek/settings/CheckSimPreference;->setSimSlot(I)V

    .line 359
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget-object v5, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/mediatek/settings/CheckSimPreference;->setSimName(Ljava/lang/String;)V

    .line 360
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget-object v5, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/mediatek/settings/CheckSimPreference;->setSimNumber(Ljava/lang/String;)V

    .line 361
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {p0, v5}, Lcom/mediatek/settings/MultipleSimActivity;->getProperOperatorNumber(Landroid/provider/Telephony$SIMInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mediatek/settings/CheckSimPreference;->setSimIconNumber(Ljava/lang/String;)V

    .line 362
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 367
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {v2, v1}, Lcom/mediatek/settings/CheckSimPreference;->setKey(Ljava/lang/String;)V

    .line 375
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 377
    .local v4, sp:Landroid/content/SharedPreferences;
    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/mediatek/settings/CheckSimPreference;->setChecked(Z)V

    .line 378
    const-string v5, "button_vt_auto_dropback_key"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    invoke-interface {v4, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/mediatek/settings/CheckSimPreference;->setChecked(Z)V

    .line 381
    :cond_1
    invoke-virtual {v2, p0}, Lcom/mediatek/settings/CheckSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 369
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {v2, v1}, Lcom/mediatek/settings/CheckSimPreference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 383
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #p:Lcom/mediatek/settings/CheckSimPreference;
    :cond_3
    return-void
.end method

.method private initListPreference()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 388
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    if-ge v0, v6, :cond_6

    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/ListSimPreference;

    .line 391
    .local v2, listPref:Lcom/mediatek/settings/ListSimPreference;
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    iget-object v6, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    iget v6, v6, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setSimColor(I)V

    .line 393
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    iget v6, v6, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setSimSlot(I)V

    .line 394
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    iget-object v6, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setSimName(Ljava/lang/String;)V

    .line 395
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    iget-object v6, v6, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setSimNumber(Ljava/lang/String;)V

    .line 396
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {p0, v6}, Lcom/mediatek/settings/MultipleSimActivity;->getProperOperatorNumber(Landroid/provider/Telephony$SIMInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setSimIconNumber(Ljava/lang/String;)V

    .line 399
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 400
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual {v2, v1}, Lcom/mediatek/settings/ListSimPreference;->setKey(Ljava/lang/String;)V

    .line 408
    :cond_0
    :goto_1
    iget v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    if-lez v6, :cond_1

    .line 409
    iget v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setDialogTitle(I)V

    .line 412
    :cond_1
    iget v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    if-lez v6, :cond_2

    .line 413
    iget v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setEntries(I)V

    .line 415
    :cond_2
    iget v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    if-lez v6, :cond_3

    .line 416
    iget v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setEntryValues(I)V

    .line 418
    :cond_3
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    iget v6, v6, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 421
    .local v5, sp:Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setValue(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2, p0}, Lcom/mediatek/settings/ListSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 424
    const-string v6, "NETWORK_MODE"

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 425
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 428
    .local v4, settingsNetworkMode:I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/ListSimPreference;->setValue(Ljava/lang/String;)V

    .line 388
    .end local v4           #settingsNetworkMode:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 402
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_5
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    iget v6, v6, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {v2, v1}, Lcom/mediatek/settings/ListSimPreference;->setKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 431
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #listPref:Lcom/mediatek/settings/ListSimPreference;
    :cond_6
    return-void
.end method

.method private initPreferenceScreen()V
    .locals 6

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 339
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    if-ge v0, v3, :cond_0

    .line 340
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/SimPreference;

    .line 341
    .local v1, p:Lcom/mediatek/settings/SimPreference;
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/SimPreference;->setSimColor(I)V

    .line 343
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/SimPreference;->setSimSlot(I)V

    .line 344
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/SimPreference;->setSimName(Ljava/lang/String;)V

    .line 345
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/SimPreference;->setSimNumber(Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {p0, v3}, Lcom/mediatek/settings/MultipleSimActivity;->getProperOperatorNumber(Landroid/provider/Telephony$SIMInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/SimPreference;->setSimIconNumber(Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v1           #p:Lcom/mediatek/settings/SimPreference;
    :cond_0
    return-void
.end method

.method private isNeededToCheckLock()Z
    .locals 2

    .prologue
    .line 434
    const-string v0, "com.mediatek.settings.IpPrefixPreference"

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimInserted(J)Z
    .locals 6
    .parameter "simId"

    .prologue
    .line 823
    const/4 v1, 0x0

    .line 824
    .local v1, isInserted:Z
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 825
    .local v3, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 826
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget-wide v4, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 827
    const/4 v1, 0x1

    goto :goto_0

    .line 830
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 186
    const-string v0, "MultipleSimActivity"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private setSimList()V
    .locals 4

    .prologue
    .line 799
    const-string v1, "MultipleSimActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[simlist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v1, "MultipleSimActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mSimIds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimIds:[J

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 802
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimIds:[J

    if-eqz v1, :cond_2

    .line 805
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 806
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimIds:[J

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 807
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimIds:[J

    aget-wide v1, v1, v0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/MultipleSimActivity;->isSimInserted(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimIds:[J

    aget-wide v2, v2, v0

    invoke-static {p0, v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    .end local v0           #i:I
    :cond_2
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    .line 814
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    .line 815
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    new-instance v2, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;

    invoke-direct {v2}, Lcom/mediatek/settings/CallSettings$SIMInfoComparable;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 816
    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    if-nez v1, :cond_4

    .line 817
    const-string v1, "MultipleSimActivity"

    const-string v2, "Activity finished"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->finish()V

    .line 820
    :cond_4
    return-void
.end method

.method private showDialogPic(Ljava/lang/String;I)V
    .locals 2
    .parameter "filename"
    .parameter "dialog"

    .prologue
    .line 675
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    .line 676
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 677
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 678
    invoke-virtual {p0, p2}, Lcom/mediatek/settings/MultipleSimActivity;->showDialog(I)V

    .line 679
    return-void
.end method

.method private skipUsIfNeeded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    const-string v4, "VT"

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NETWORK_MODE"

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimNumbers:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 293
    .local v2, position:I
    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, pkName:Ljava/lang/String;
    const-string v4, "com.mediatek.settings"

    const-string v5, "com.android.phone"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 295
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v3, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 297
    .local v3, slotId:I
    const-string v4, "simId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-direct {p0, v3, v0}, Lcom/mediatek/settings/MultipleSimActivity;->checkToStart(ILandroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->finish()V

    goto :goto_0
.end method

.method private updatePreferenceEnableState()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 732
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 733
    .local v1, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v6, v6, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v6, :cond_0

    .line 734
    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v1           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 736
    .restart local v1       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_2

    move v3, v7

    .line 737
    .local v3, isIdle:Z
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 738
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 739
    .local v4, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 740
    const-string v6, "NETWORK_MODE"

    iget-object v9, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 741
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 745
    :goto_3
    invoke-virtual {v4}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 746
    instance-of v6, v4, Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 747
    check-cast v4, Landroid/preference/ListPreference;

    .end local v4           #p:Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 748
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 749
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 737
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v3           #isIdle:Z
    :cond_2
    move v3, v8

    .line 736
    goto :goto_0

    .restart local v2       #i:I
    .restart local v3       #isIdle:Z
    .restart local v4       #p:Landroid/preference/Preference;
    :cond_3
    move v6, v8

    .line 741
    goto :goto_2

    .line 743
    :cond_4
    iget-object v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 755
    .end local v4           #p:Landroid/preference/Preference;
    :cond_5
    return-void
.end method

.method private updatePreferenceList()V
    .locals 2

    .prologue
    .line 793
    const-string v1, "---------[update mutiple list views]---------"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 794
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/MultipleSimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 795
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 796
    return-void
.end method


# virtual methods
.method public checkAllowedRun(Landroid/content/Intent;Landroid/preference/Preference;)V
    .locals 4
    .parameter "intent"
    .parameter "preference"

    .prologue
    .line 480
    const-string v2, "simId"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 481
    .local v1, slot:I
    const/4 v0, 0x0

    .line 482
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v2, :cond_0

    .line 483
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 485
    .restart local v0       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    return-void
.end method

.method public getNetworkMode(I)I
    .locals 5
    .parameter "buttonNetworkMode"

    .prologue
    .line 516
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 519
    .local v1, settingsNetworkMode:I
    move v0, v1

    .line 520
    .local v0, modemNetworkMode:I
    if-eq p1, v1, :cond_0

    .line 521
    packed-switch p1, :pswitch_data_0

    .line 547
    const/4 v0, 0x0

    .line 550
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 553
    return v0

    .line 523
    :pswitch_0
    const/4 v0, 0x7

    .line 524
    goto :goto_0

    .line 526
    :pswitch_1
    const/4 v0, 0x6

    .line 527
    goto :goto_0

    .line 529
    :pswitch_2
    const/4 v0, 0x5

    .line 530
    goto :goto_0

    .line 532
    :pswitch_3
    const/4 v0, 0x4

    .line 533
    goto :goto_0

    .line 535
    :pswitch_4
    const/4 v0, 0x3

    .line 536
    goto :goto_0

    .line 538
    :pswitch_5
    const/4 v0, 0x2

    .line 539
    goto :goto_0

    .line 541
    :pswitch_6
    const/4 v0, 0x1

    .line 542
    goto :goto_0

    .line 544
    :pswitch_7
    const/4 v0, 0x0

    .line 545
    goto :goto_0

    .line 521
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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v4, 0xc8

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 684
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 714
    :goto_0
    return-void

    .line 688
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 691
    :pswitch_0
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 692
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 693
    iget v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    if-nez v2, :cond_2

    .line 694
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 698
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 699
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    iget v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    if-nez v2, :cond_3

    .line 706
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 696
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 702
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 703
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 708
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, -0x1

    .line 192
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_SIM_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimIds:[J

    .line 195
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TARGET_CLASS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_FEATURE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_BASE_KEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_TITLE_NAME"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTitleName:I

    .line 200
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "LIST_TITLE_NAME"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_ARRAY"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "INIT_ARRAY_VALUE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    .line 203
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ITEM_TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, itemType:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 205
    iput-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mItemType:Ljava/lang/String;

    .line 208
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 209
    new-instance v2, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 210
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 211
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 213
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->setSimList()V

    .line 214
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->skipUsIfNeeded()V

    .line 215
    const v2, 0x7f060014

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->addPreferencesFromResource(I)V

    .line 216
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->createSubItems()V

    .line 218
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 219
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mSimList:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/phone/ext/SettingsExtension;->removeNMOpForMultiSim(Lcom/android/internal/telephony/Phone;Ljava/util/List;Ljava/lang/String;)V

    .line 220
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 222
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v2, "NETWORK_MODE"

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/settings/MultipleSimActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 233
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 235
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 237
    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x104000a

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreateDialog]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 671
    .end local v0           #dialog:Landroid/app/Dialog;
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 604
    .end local v1           #dialog:Landroid/app/Dialog;
    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 670
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move-object v1, v0

    .line 671
    .end local v0           #dialog:Landroid/app/Dialog;
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 606
    .end local v1           #dialog:Landroid/app/Dialog;
    .restart local v0       #dialog:Landroid/app/Dialog;
    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v0       #dialog:Landroid/app/Dialog;
    move-object v2, v0

    .line 607
    check-cast v2, Landroid/app/ProgressDialog;

    const v3, 0x7f0d0204

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/MultipleSimActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v2, v0

    .line 608
    check-cast v2, Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v2, v0

    .line 609
    check-cast v2, Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    .line 612
    :sswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d003c

    new-instance v4, Lcom/mediatek/settings/MultipleSimActivity$3;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/MultipleSimActivity$3;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/mediatek/settings/MultipleSimActivity$2;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/MultipleSimActivity$2;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v2, v0

    .line 635
    check-cast v2, Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 636
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 637
    new-instance v2, Lcom/mediatek/settings/MultipleSimActivity$4;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/MultipleSimActivity$4;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 649
    :sswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/mediatek/settings/MultipleSimActivity$5;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/MultipleSimActivity$5;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v2, v0

    .line 654
    check-cast v2, Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 655
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 656
    new-instance v2, Lcom/mediatek/settings/MultipleSimActivity$6;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/MultipleSimActivity$6;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1

    .line 604
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 717
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 718
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mReceiver:Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 722
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 726
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 252
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 259
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 254
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->finish()V

    .line 255
    const/4 v1, 0x1

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/16 v8, 0x12c

    const/16 v7, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 558
    const-string v3, "VT"

    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 559
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile()V

    .line 560
    const-string v3, "button_vt_replace_expand_key"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 561
    iput v5, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    .line 562
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 563
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v8}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    .line 593
    .end local p2
    :cond_0
    :goto_0
    return v6

    .line 564
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 568
    :cond_2
    const-string v3, "button_vt_replace_peer_expand_key"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    iput v6, p0, Lcom/mediatek/settings/MultipleSimActivity;->mVTWhichToSave:I

    .line 570
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 571
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v8}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 572
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/mediatek/settings/MultipleSimActivity;->showDialogPic(Ljava/lang/String;I)V

    goto :goto_0

    .line 577
    :cond_4
    const-string v3, "NETWORK_MODE"

    iget-object v4, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 581
    .local v2, settingsNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current network mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 582
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/MultipleSimActivity;->getNetworkMode(I)I

    move-result v1

    .line 583
    .local v1, networkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new network mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 584
    if-eq v2, v1, :cond_0

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.NETWORK_MODE_CHANGE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 586
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone.OLD_NETWORK_MODE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    const-string v3, "com.android.phone.NETWORK_MODE_CHANGE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    const-string v4, "simId"

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 589
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/MultipleSimActivity;->showDialog(I)V

    .line 590
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/mediatek/settings/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 444
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 445
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v7, v7, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v7, :cond_0

    .line 446
    iget-object v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 449
    .restart local v0       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 450
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    if-ne p2, v7, :cond_2

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    .line 452
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 453
    .local v6, slotId:I
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 454
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 456
    .local v4, position:I
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, pkName:Ljava/lang/String;
    const-string v7, "com.mediatek.settings"

    const-string v8, "com.android.phone"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 458
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v7, "simId"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    const-string v7, "sub_title_name"

    invoke-static {p0, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    const-string v8, "VT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 464
    const-string v7, "ISVT"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    :cond_1
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-direct {p0, v6, v2}, Lcom/mediatek/settings/MultipleSimActivity;->checkToStart(ILandroid/content/Intent;)V

    .line 449
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pkName:Ljava/lang/String;
    .end local v4           #position:I
    .end local v6           #slotId:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_3
    return v9
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, -0x1

    .line 274
    const-string v0, "-----------[onRestoreInstanceState]-----------"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 275
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 276
    const-string v0, "INIT_TITLE_NAME"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTitleName:I

    .line 277
    const-string v0, "LIST_TITLE_NAME"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    .line 278
    const-string v0, "INIT_ARRAY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    .line 279
    const-string v0, "INIT_ARRAY_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    .line 280
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 242
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceList()V

    .line 243
    invoke-direct {p0}, Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V

    .line 244
    iget v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTitleName:I

    if-lez v0, :cond_0

    .line 245
    iget v0, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTitleName:I

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->setTitle(I)V

    .line 247
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 264
    const-string v0, "-----------[onSaveInstanceState]-----------"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 265
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string v0, "INIT_TITLE_NAME"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mTitleName:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string v0, "LIST_TITLE_NAME"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListTitle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v0, "INIT_ARRAY"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListEntries:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string v0, "INIT_ARRAY_VALUE"

    iget v1, p0, Lcom/mediatek/settings/MultipleSimActivity;->mListValues:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    return-void
.end method
