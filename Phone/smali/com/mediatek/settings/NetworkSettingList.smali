.class public Lcom/mediatek/settings/NetworkSettingList;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSettingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_ALL_FORBIDDEN:I = 0x190

.field private static final DIALOG_NETWORK_LIST_LOAD:I = 0xc8

.field private static final DIALOG_NETWORK_SELECTION:I = 0x64

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_NETWORK_SCAN_COMPLETED_2:I = 0x65

.field private static final EVENT_NETWORK_SELECTION_DONE:I = 0xc8

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x190

.field private static final LIST_NETWORKS_KEY:Ljava/lang/String; = "list_networks_key"

.field private static final LOG_TAG:Ljava/lang/String; = "phone"

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_UNDEFINED:I = -0x1


# instance fields
.field private mAirplaneModeEnabled:Z

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mDualSimMode:I

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field protected mIsForeground:Z

.field protected mIsResignSuccess:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId:I

.field private mTitleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    .line 135
    iput-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mTitleName:Ljava/lang/String;

    .line 136
    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsResignSuccess:Z

    .line 140
    iput v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mSimId:I

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    .line 147
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkSettingList$1;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkSettingList$2;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;

    .line 241
    iput-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 244
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkSettingList$3;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 269
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$4;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkSettingList$4;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/NetworkSettingList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/NetworkSettingList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/NetworkSettingList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/NetworkSettingList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/settings/NetworkSettingList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/NetworkSettingList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mSimId:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/NetworkSettingList;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/NetworkSettingList;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/NetworkSettingList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$802(Lcom/mediatek/settings/NetworkSettingList;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/NetworkSettingList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkSettingList;->loadNetworksList()V

    return-void
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 635
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 636
    .local v1, p:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 638
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 639
    return-void
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    const v2, 0x7f0d021a

    const v1, 0x7f0d0218

    .line 446
    if-eqz p1, :cond_0

    .line 447
    const-string v0, "SET empty network list title"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/NetworkSettingList;->setTitle(I)V

    .line 449
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 464
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mTitleName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mTitleName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->setTitle(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mTitleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->setTitle(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 459
    :cond_2
    const-string v0, "SET SIM Title"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->setTitle(I)V

    .line 461
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 4
    .parameter "error"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d021c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 479
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "ex"

    .prologue
    .line 485
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsResignSuccess:Z

    .line 486
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 490
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d021e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, status:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 499
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 501
    return-void

    .line 495
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d021f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #status:Ljava/lang/String;
    goto :goto_0
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 6

    .prologue
    .line 505
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsResignSuccess:Z

    .line 506
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0220

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 512
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 515
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mediatek/settings/NetworkSettingList$5;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/NetworkSettingList$5;-><init>(Lcom/mediatek/settings/NetworkSettingList;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .parameter "networkStr"

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d021d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkSelectMsg:Ljava/lang/String;

    .line 470
    iget-boolean v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 471
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->showDialog(I)V

    .line 473
    :cond_0
    return-void
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ni"

    .prologue
    .line 625
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    .line 627
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isRadioPoweroff()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, isPoweroff:Z
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 645
    iget-object v4, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget v5, p0, Lcom/mediatek/settings/NetworkSettingList;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 646
    .local v1, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-ne v4, v6, :cond_0

    move v0, v2

    .line 651
    :goto_0
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioPoweroff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return v0

    :cond_0
    move v0, v3

    .line 646
    goto :goto_0

    .line 648
    .end local v1           #serviceState:Landroid/telephony/ServiceState;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 649
    .restart local v1       #serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-ne v4, v6, :cond_2

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private loadNetworksList()V
    .locals 3

    .prologue
    .line 524
    const-string v1, "load networks list..."

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 527
    iget-boolean v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 528
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->showDialog(I)V

    .line 533
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->displayEmptyNetworkList(Z)V

    .line 539
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteException"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 656
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 10
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 550
    const-string v6, "networks list loaded"

    invoke-direct {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 555
    const-string v6, "hideProgressPanel"

    invoke-direct {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 559
    const/16 v6, 0xc8

    invoke-virtual {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->removeDialog(I)V

    .line 560
    invoke-direct {p0, v7}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 562
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkSettingList;->clearList()V

    .line 564
    if-eqz p2, :cond_1

    .line 566
    const-string v6, "error while querying available networks"

    invoke-direct {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0, p2}, Lcom/mediatek/settings/NetworkSettingList;->displayNetworkQueryFailed(I)V

    .line 569
    invoke-direct {p0, v7}, Lcom/mediatek/settings/NetworkSettingList;->displayEmptyNetworkList(Z)V

    .line 608
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v7, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v6, v7}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    return-void

    .line 571
    :cond_1
    if-eqz p1, :cond_4

    .line 572
    invoke-direct {p0, v9}, Lcom/mediatek/settings/NetworkSettingList;->displayEmptyNetworkList(Z)V

    .line 578
    const/4 v3, 0x0

    .line 579
    .local v3, forbiddenCount:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .line 580
    .local v5, ni:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v0, Landroid/preference/Preference;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 582
    .local v0, carrier:Landroid/preference/Preference;
    const-string v2, ""

    .line 583
    .local v2, forbidden:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v6, v7, :cond_2

    .line 584
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00c4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    add-int/lit8 v3, v3, 0x1

    .line 588
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5}, Lcom/mediatek/settings/NetworkSettingList;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 590
    iget-object v6, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 591
    iget-object v6, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 594
    const/16 v6, 0x190

    invoke-virtual {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->showDialog(I)V

    .line 598
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 603
    .end local v0           #carrier:Landroid/preference/Preference;
    .end local v2           #forbidden:Ljava/lang/String;
    .end local v3           #forbiddenCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ni:Lcom/android/internal/telephony/OperatorInfo;
    :cond_4
    invoke-direct {p0, v7}, Lcom/mediatek/settings/NetworkSettingList;->displayEmptyNetworkList(Z)V

    goto/16 :goto_0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, e:Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private setScreenEnabled(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 695
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/NetworkSettingList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 696
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 698
    .local v0, isCallStateIdle:Z
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz p1, :cond_1

    iget-boolean v5, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsResignSuccess:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/mediatek/settings/NetworkSettingList;->isRadioPoweroff()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v5, p0, Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 700
    return-void

    .end local v0           #isCallStateIdle:Z
    :cond_0
    move v0, v3

    .line 696
    goto :goto_0

    .restart local v0       #isCallStateIdle:Z
    :cond_1
    move v2, v3

    .line 698
    goto :goto_1
.end method


# virtual methods
.method public geminiPhoneInit()V
    .locals 3

    .prologue
    .line 704
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 706
    .local v0, it:Landroid/content/Intent;
    const-string v1, "simId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mSimId:I

    .line 707
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 709
    .end local v0           #it:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public getNormalizedCarrierName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 2
    .parameter "ni"

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->finish()V

    .line 334
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 345
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 347
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/NetworkSettingList;->addPreferencesFromResource(I)V

    .line 348
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 349
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "list_networks_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkList:Landroid/preference/PreferenceGroup;

    .line 350
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    .line 352
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sub_title_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mTitleName:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->geminiPhoneInit()V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It\'s a GeminiPhone ? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIM_ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .local v1, i:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 368
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v4}, Lcom/mediatek/settings/NetworkSettingList;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 370
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;

    .line 371
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    new-instance v2, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 376
    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 378
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 379
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 383
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 402
    const/16 v3, 0x190

    if-ne p1, v3, :cond_0

    .line 403
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x1040014

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 406
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    const v3, 0x1040013

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 434
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v0

    .line 414
    :cond_0
    const/4 v2, 0x0

    .line 415
    .local v2, dialog:Landroid/app/ProgressDialog;
    sparse-switch p1, :sswitch_data_0

    .line 433
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreateDialog] create dialog id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    move-object v0, v2

    .line 434
    goto :goto_0

    .line 417
    :sswitch_0
    new-instance v2, Landroid/app/ProgressDialog;

    .end local v2           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 418
    .restart local v2       #dialog:Landroid/app/ProgressDialog;
    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 419
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 420
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1

    .line 424
    :sswitch_1
    new-instance v2, Landroid/app/ProgressDialog;

    .end local v2           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 425
    .restart local v2       #dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0219

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 427
    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 415
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 393
    const-string v0, "[onDestroy]Call onDestroy. unbindService"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->unbindService(Landroid/content/ServiceConnection;)V

    .line 396
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 397
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 662
    const-string v0, "phone"

    const-string v1, "[NetworksList] on new intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 294
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 301
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 296
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->finish()V

    .line 297
    const/4 v1, 0x1

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 685
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    .line 688
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 689
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 691
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 306
    move-object v2, p2

    .line 308
    .local v2, selectedCarrier:Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, networkStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 315
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    iget-object v4, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v4, v3, v0}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 321
    :goto_0
    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 322
    const/4 v3, 0x1

    return v3

    .line 318
    :cond_0
    iget-object v4, p0, Lcom/mediatek/settings/NetworkSettingList;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    iget v5, p0, Lcom/mediatek/settings/NetworkSettingList;->mSimId:I

    invoke-virtual {v4, v3, v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->selectNetworkManuallyGemini(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 439
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 440
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 442
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 667
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 668
    iput-boolean v1, p0, Lcom/mediatek/settings/NetworkSettingList;->mIsForeground:Z

    .line 670
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 671
    iget-object v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/settings/NetworkSettingList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z

    .line 674
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkSettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    .line 677
    const-string v0, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkSettings.onResume(), mDualSimMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V

    .line 681
    return-void

    .line 672
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
